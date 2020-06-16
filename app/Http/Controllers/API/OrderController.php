<?php

namespace App\Http\Controllers\API;
use App\Models\City;
use App\Models\Category;
use App\Models\Setting;

use App\Models\Order;
use App\Models\Oil;

use Carbon\Carbon;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\Token;
use Illuminate\Support\Facades\Validator;
use Image;
use DB;


class OrderController extends Controller
{
   
    public function newOrder(Request $request)
    {
       $user_id = auth('api')->id();
       $user=user::findOrFail($user_id);

        $valid = Validator::make($request->all(),[
            'type' => 'required',   //0=in 1=out 
            'category_id' => 'required',
           'source_money' => 'required_if :type,1',  //1=carwash 2=employee 3-supplyer
            'amount' => 'required',
            'quantity' => 'required_if :category_id,1,7', 
            'price_one' => 'required_if :category_id,1', 
            'description' => 'required_if :category_id,3,8,9,10,11', 
           //  'employee_id' => 'required_if :category_id,4,5,7,8,9,10', 
           'employee_id' => 'required_if :source_money,2', 
            'month' => 'required_if :category_id,4,5,9', 
            'year' => 'required_if :category_id,4,5,9',
            'company_id' => 'required_if :category_id,7,2',
            'caliber_id' => 'required_if :category_id,7,2',
            'size_id' => 'required_if :category_id,7,2',
        ]);


        if ($valid->fails()) {
            return response()->json(['status' => false, 'code' => 210, 'messages' =>
                implode("\n",$valid-> messages()-> all()) ]);
        }
        $category=Category::where('id',$request->category_id)->where('type',$request->type)->first();
        
        if($request->employee_id)
        {
        $employee=User::where('id',$request->employee_id)->first();
        }
        else
        {
        $employee = true;
        }
        
        if ($category && $employee ) {
        $order= new Order();
        $order->user_id= $user_id;
        $order->type=$request->type;
        $order->category_id=$request->category_id;
        $order->amount=$request->amount;
        $order->price_one=$request->price_one;
        $order->quantity=$request->quantity;
        $order->description=$request->description;
        $order->employee_id=$request->employee_id;
        $order->month=$request->month;
        $order->year=$request->year;
        $order->source_money=$request->source_money;
        $order->save();
 if($request->category_id == 7)
        {
        $oil= new Oil();
        $oil->company_id=$request->company_id;
        $oil->size_id=$request->size_id;
        $oil->caliber_id=$request->caliber_id;
        $oil->quantity=$request->quantity;
        $oil->price=$request->amount;
        $oil->type=0;
        $oil->save();
        }
 if($request->category_id == 2)
        {
        $oilIn = Oil::query()->where('company_id', $request->company_id)->where('size_id', $request->size_id)->where('size_id', $request->size_id)->where('type', '0')->sum('quantity');
        $oilOut = Oil::query()->where('company_id', $request->company_id)->where('size_id', $request->size_id)->where('size_id', $request->size_id)->where('type', '1')->sum('quantity');
        $quantity = $oilIn - $oilOut;
         if($quantity > $request->quantity)
         {
        $oil= new Oil();
        $oil->company_id=$request->company_id;
        $oil->size_id=$request->size_id;
        $oil->caliber_id=$request->caliber_id;
        $oil->quantity=$request->quantity;
        $oil->price=$request->amount;
        $oil->type=1;
        $oil->save();
         }
        else
        {
            $message = __('api.no_quantity');
            return response()->json(['status' => false, 'code' => 210, 'message' => $message]);
        }
 }


        if($order){
        $message = __('api.ok');
        return response()->json(['status' => true, 'code' => 200, 'message'=>$message ]);
    }
        else{
            $message = __('api.not_found');
            return response()->json(['status' => false, 'code' => 400, 'message' => $message]);

        }
            
        }
       else{
            $message = __('api.not_found');
            return response()->json(['status' => false, 'code' => 400, 'message' => $message]);
       }
        
} 
   
}


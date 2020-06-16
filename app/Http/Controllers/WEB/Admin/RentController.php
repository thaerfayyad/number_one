<?php

namespace App\Http\Controllers\WEB\Admin;

use App\Http\Controllers\Controller;


use Illuminate\Http\Request;
use App\User;
use App\Models\Language;
use App\Models\Order;
use App\Models\OrderProduct;
use App\Models\Token;
use App\Models\Notifiy;
use DB ;


class RentController extends Controller
{


    public function image_extensions()
    {

        return array('jpg', 'png', 'jpeg', 'gif', 'bmp', 'pdf');

    }

    public function index(Request $request)
    {
        $locales = Language::all();
        $items = Order::query();

        if ($request->has('statusUser')) {
            if ($request->get('statusUser') != null)
                $items->where('status',  $request->get('statusUser'));
        }

        if ($request->has('userName')) {
            if ($request->get('userName') != null)
                $items->whereHas('user',function ($query) use($request){$query->where('name',  $request->get('userName'));});
        }


        $items = $items->where('category_id',4)->get();
// return $items; 

        return view('admin.rent.home', [
            'items' => $items,
            'locales' => $locales,
        ]);
    }




    public function edit($id)
    {
        $order = Order::findOrFail($id);

        return view('admin.rent.edit', [
            'order' => $order]);
    }

    public function update(Request $request, $id)
    {
        $order = Order::findOrFail($id);
        $order->status = $request->status;
        $order->invoice_discount = $request->invoice_discount;
        $order->save();
        if($request->status == 0){
            $message =  __('api.OrderIsPreparing');
        }
        elseif($request->status == 1){
            $message =  __('api.OrderIsOnDelivery');
        }
        elseif($request->status == 2){
             $message =  __('api.OrderIsComplete');
        }
        $order_id = $id;
        $tokens_android = Token::where('user_id',$order->user_id)->where('device_type','android')->pluck('fcm_token')->toArray();
        $tokens_ios = Token::where('user_id',$order->user_id)->where('device_type','ios')->pluck('fcm_token')->toArray();
        // return $tokens_ios;
        sendNotificationToUsers( $tokens_android, $tokens_ios,  $order_id, $message );
        $notifiy= New Notifiy();
        $notifiy->user_id = $order->user_id;
        $notifiy->order_id = $order_id;
        $notifiy->message = $message;
        $notifiy->save();
        return redirect()->back()->with('status', __('cp.update'));
    }





    public function destroy($id)
    {
        // return $id;
        $item = Order::findOrFail($id);
        if ($item) {
            Order::where('id', $id)->delete();
            return "success";
        }
        return "fail";
    }
    
    public function change_orderSts(Request $request, $id)
    {
        $order = Order::findOrFail($id);
        $order->status = $request->sts;
        $order->save();
        
        if($request->sts != 3) {
        
        if($request->sts == 0){
            $message =  __('api.OrderIsPreparing');
        }
        elseif($request->sts == 1){
            $message =  __('api.OrderIsOnDelivery');
        }
        elseif($request->sts == 2){
             $message =  __('api.OrderIsComplete');
        }
        
        $order_id = $id;
        $tokens_android = Token::where('user_id',$order->user_id)->where('device_type','android')->pluck('fcm_token')->toArray();
        $tokens_ios = Token::where('user_id',$order->user_id)->where('device_type','ios')->pluck('fcm_token')->toArray();
        // return $tokens_ios;
        sendNotificationToUsers( $tokens_android, $tokens_ios,  $order_id, $message );
        $notifiy= New Notifiy();
        $notifiy->user_id = $order->user_id;
        $notifiy->order_id = $order_id;
        $notifiy->message = $message;
        $notifiy->save();
        }
        
        return "success";
    }
    
    public function printOrder($id)
    {
        $order = Order::findOrFail($id);

        return view('admin.debt.invoice', [
            'order' => $order ]);
    }
    



}



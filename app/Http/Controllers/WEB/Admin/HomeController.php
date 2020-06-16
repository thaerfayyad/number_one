<?php

namespace App\Http\Controllers\WEB\Admin;

use App\Admin;
use App\User;
use App\Models\Permission;
use App\Models\Setting;
use App\Models\Area;
use App\Models\AreaRequest;
use App\Models\Car;
use App\Models\PromotionCode;
use App\Models\Order;


use App\Models\Contact;
use App\Models\Booking;
use Carbon\Carbon;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Response;

class HomeController extends Controller
{
    
   
    public function index()
    {
        $now = Carbon::now();
        $month = $now->month;
        $year = $now->year;
      //  return $year;
        //$count_product = Product::count();
        //$count_orders = Order::count();
        $count_users = User::where('type',1)->count();
        $count_owners=User::where('type',2)->count();
        
        $incomeCarWash=Order::where('category_id',1)->whereMonth('created_at', '=', $month)->get()->sum("amount");
        $incomeOilChange=Order::where('category_id',2)->whereMonth('created_at', '=', $month)->get()->sum("amount");
        $incomeOthersIncoms=Order::where('category_id',3)->whereMonth('created_at', '=', $month)->get()->sum("amount");
        $totalOutcome=Order::where('type',1)->where('source_money',1)->whereMonth('created_at', '=', $month)->get()->sum("amount");
        
        $incomeCarWashY=Order::where('category_id',1)->whereYear('created_at', '=', $year)->get()->sum("amount");
        $incomeOilChangeY=Order::where('category_id',2)->whereYear('created_at', '=', $year)->get()->sum("amount");
        $incomeOthersIncomsY=Order::where('category_id',3)->whereYear('created_at', '=', $year)->get()->sum("amount");
        $totalOutcomeY=Order::where('type',1)->where('source_money',1)->whereYear('created_at', '=', $year)->get()->sum("amount");
       
        $totalOut=Order::where('type',1)->where('source_money',1)->get()->sum("amount");
        $totalin=Order::where('type',0)->get()->sum("amount");
        $debt=Order::where('source_money','>',1)->get()->sum("amount");
        $balance= $totalin - $totalOut - $debt;

        $admin=Admin::findOrFail(auth()->guard('admin')->user()->id);

        return view('admin.home.dashboard',[
            //'count_product'=>$count_product,
            //'count_orders'=>$count_orders,
            'count_users'=>$count_users,
           'count_owners'=>$count_owners,
          
           'incomeCarWash'=>$incomeCarWash,
           'incomeOilChange'=>$incomeOilChange,
           'incomeOthersIncoms'=>$incomeOthersIncoms,
           'totalOutcome'=>$totalOutcome,
           
            'incomeCarWashY'=>$incomeCarWashY,
           'incomeOilChangeY'=>$incomeOilChangeY,
           'incomeOthersIncomsY'=>$incomeOthersIncomsY,
           'totalOutcomeY'=>$totalOutcomeY,
           
           'totalOut'=>$totalOut,
           'totalin'=>$totalin,
           'balance'=>$balance,
           
           'debt'=>$debt,
         
            'admin'=>$admin
            
            ]);
    }


    public function changeStatus($model,Request $request)
    {
        $role = "";
        if($model == "admins") $role = 'App\Admin';
        if($model == "users") $role = 'App\User';
        if($model == "promotions") $role = 'App\Models\PromotionCode';

        if($model == "owners") $role = 'App\User';
        if($model == "categories") $role = 'App\Models\Category';
        if($model == "companies") $role = 'App\Models\Company';
        if($model == "calibers") $role = 'App\Models\Caliber';
        if($model == "sizes") $role = 'App\Models\Size';
        if($model == "oils") $role = 'App\Models\Oil';
        if($model == "products") $role = 'App\Models\Product';
        if($model == "ads") $role = 'App\Models\Ad';
        if($model == "cities") $role = 'App\Models\City';
        if($model == "pages") $role = 'App\Models\Page';
        if($model == "questions") $role = 'App\Models\Question';
        if($model == "notifications") $role = 'App\Models\Notification';

        if($role !=""){
             if ($request->action == 'delete') {
                $role::query()->whereIn('id', $request->IDsArray)->delete();
            }
            else {
                if($request->action) {
                    $role::query()->whereIn('id', $request->IDsArray)->update(['status' => $request->action]);
                }
            }
            return $request->action;
        }
        return false;
        
  
    }
     
 

 
}

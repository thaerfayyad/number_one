<?php

namespace App\Http\Controllers\WEB\Site;
use App\Http\Controllers\Controller;
use App\Models\Jobs;
use App\Models\Token;

use App\Models\Contact;
use App\Models\Language;
use App\Models\NotificationMessage;
use Validator;
use Auth;
use App\Models\Setting;
use App\Models\LandingPage;
use App\Models\Opinion;
use App\User;




use Illuminate\Http\Request;

class SiteController extends Controller
{

    public function __construct()
    {
        $this->locales = Language::all();
        $this->settings = Setting::query()->first();
        view()->share([
            'locales' => $this->locales,
            'settings' => $this->settings,

        ]);
    }
    public function index()
    {
        $item=LandingPage::where('id',1)->first();
        $setting=Setting::first();

        return view('website.index',[
            'item'=> $item,
            'setting'=> $setting,

        ]);
    }
    
    
    public function success()
    {
        return view('website.success');
    }


    public function changeOrderStatus(Request $request){
        $validator = Validator::make($request->all(), [
            'order_id' => 'required',
            'status' => 'required',

        ]);
        if ($validator->fails()) {
            return redirect()->back();
        }
        $order_id=$request->order_id;
        $order=Order::where('id',$order_id)->first();
        if($order->store_id==auth('web')->id()){
            $order->status=$request->status;
            $done = $order->save();
            if($done){
                $msg = __('api.status'.$request->status,[],$order->user->lang);
                $tokens_android = Token::where('user_id',$order->user_id)->where('device_type','android')->pluck('fcm_token')->toArray();
                $tokens_ios = Token::where('user_id',$order->user_id)->where('device_type','ios')->pluck('fcm_token')->toArray();
                sendNotificationToUsers( $tokens_android, $tokens_ios, $order_id, $msg );
                $notifications= New NotificationMessage() ;
                $notifications->message = $msg;
                $notifications->user_id = $order->user_id;
                $notifications->order_id = $order_id;
                $notifications->save();
            }

            return redirect()->back();
        }
        else{
            return redirect()->back();
        }
    }


    public function getProduct($id){
    	$Product=Product::where('id',$id)->first();
        return view('web.product',[
            'product' => $Product,
        ]);
    }


    public function search(Request $request)
    {
        $text = $request->text;
        $products = Product::query()->where('status', 'active')->where('delete', '0');
        $products->where(function ($query) use ($text) {
            $query->whereTranslationLike('name', '%' . $text . '%', 'en')->orWhereTranslationLike('name', '%' . $text . '%', 'ar');
        });

        if($request->has('priceFrom') && $request->has('priceTo')){
            $products->where(function ($query) use($request) {
                $query->whereNull('price_after_offer')->whereBetween('price', [(int)$request->priceFrom, (int)$request->priceTo])
                    ->orWhereNotNull('price_after_offer')->whereBetween('price_after_offer', [(int)$request->priceFrom, (int)$request->priceTo]);
            });
        }
        if($request->has('category')){
            $subcategories = Category::where('is_parent',$request->category)->pluck('id')->toArray();
            $products->whereIn('category_id',$subcategories);
        }
        $products=$products->orderBy('id', 'desc')->get();
        return view('web.products',[
            'products' => $products,
            'title'=> __('website.searchResult')." ".$text
        ]);
    }



    public function sendContact(Request $request){
      //  return $request->all();
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
            'mobile' => 'required',
            'messages' => 'required',

        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $contact =new Contact();
        $contact->name=$request->name;
        $contact->email=$request->email;
        $contact->mobile=$request->mobile;
        $contact->message=$request->messages;
        $done = $contact->save();
        if($done){
            return redirect()->back()->with('success', __('api.ok'));
        }
        return redirect()->back()->with('errorMsg', __('api.whoops'))->withInput();
    }






   
}

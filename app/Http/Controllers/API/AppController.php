<?php
namespace App\Http\Controllers\API;
use App\Models\Ad;
use App\Models\Category;

use App\Models\Oil;
use App\Models\Product;
use App\Models\Question;
use App\Models\City;
use App\Models\Cart;
use App\Models\Service;
use App\Models\AdditionService;
use App\Models\Page;
use App\Models\Caliber;
use App\Models\Size;
use App\Models\Company;
use App\Models\Contact;
use App\User;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use http\Env\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;


class AppController extends Controller
{

    public function getCategories()
    {
        $categories = Category::query()->where('status', 'active')->get();
        $message = __('api.ok');
        return response()->json(['status' => true, 'code' => 200, 'message' => $message, 'categories' => $categories]);
    }
    public function getEmployee()
    {
        $employee = User::query()->where('status', 'active')->where('type', '1')->get();
        $message = __('api.ok');
        return response()->json(['status' => true, 'code' => 200, 'message' => $message, 'employee' => $employee]);
    }
    public function getExecutive()
    {
        $executive = User::query()->where('status', 'active')->where('type', '2')->get();
        $message = __('api.ok');
        return response()->json(['status' => true, 'code' => 200, 'message' => $message, 'executive' => $executive]);
    }
    public function getCompany()
    {
        $company = Company::query()->where('status', 'active')->get();
        $message = __('api.ok');
        return response()->json(['status' => true, 'code' => 200, 'message' => $message, 'company' => $company]);
    }
    public function getCaliber()
    {
        $caliber = Caliber::query()->where('status', 'active')->get();
        $message = __('api.ok');
        return response()->json(['status' => true, 'code' => 200, 'message' => $message, 'caliber' => $caliber]);
    }
    public function getSize()
    {
        $size = Size::query()->where('status', 'active')->get();
        $message = __('api.ok');
        return response()->json(['status' => true, 'code' => 200, 'message' => $message, 'size' => $size]);
    }

    public function getSupplier()
    {
        $supplier = User::query()->where('status', 'active')->where('type', '3')->get();
        $message = __('api.ok');
        return response()->json(['status' => true, 'code' => 200, 'message' => $message, 'supplier' => $supplier]);
    }
    
    public function getAds()
    {
        $data = Ad::query()->where('status', 'active')->get();
        if (count($data) > 0) {
            $message = __('api.ok');
            return response()->json(['status' => true, 'code' => 200, 'message' => $message, 'ads' => $data]);

        } else {
            $message = __('api.not_found');
            // return mainResponse(true, $message, $data, 200, 'items', '');
            return response()->json(['status' => true, 'code' => 200, 'message' => $message, 'ads' => $data]);

        }
    }

    public function getCities()
    {

        $cities = City::query()->where('status', 'active')->get();

        $message = __('api.ok');
        return response()->json(['status' => true, 'code' => 200, 'message' => $message, 'cities' => $cities]);
    }



    public function allQuestions()
    {
        $questions = Question::query()->where('status', 'active')->get();
        $message = __('api.ok');
        return response()->json(['status' => true, 'code' => 200, 'message' => $message, 'questions' => $questions]);
    }

    public function pages($id)
    {

        $page = Page::where('id',$id)->first();

        $message = __('api.ok');
        return response()->json(['status' => true, 'code' => 200, 'message' =>$message,'page'=>$page]);

    }

    public function getSetting()
    {

        $settings = Setting::query()->first();

        $message = __('api.ok');
        return response()->json(['status' => true, 'code' => 200, 'message' =>$message,'settings'=>$settings]);

    }

    public function contactUs(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'mobile' => 'required|digits_between:8,12',
            'name' => 'required',
            'message' => 'required',
            'type' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['status' => false, 'code' => 200, 'validator' => implode("\n", $validator->messages()->all())]);
        }

        $contact = new  Contact();
        $contact->email = $request->get('email');
        $contact->name = $request->get('name');
        $contact->mobile = $request->get('mobile');
        $contact->message = $request->get('message');
        $contact->type = $request->get('type');
        $contact->read = 0;
        $contact->save();


        $message = __('api.ok');

        return response()->json(['status' => true, 'code' => 200, 'message' => $message]);

    }
    public function getOil(){

        $oil = Oil::query()->where('status' , 'active')->get();
        $message = __('api.ok');
        return response()->json(['status' =>true, 'code' =>200 , 'message' => $message , 'oil' =>$oil]);
;

    }
    public  function addOil(Request $request){

        $valid = Validator::make($request->all(),[
            'company_id'=>'required',
            'caliber_id'=>'required',
            'size_id'=>'required',
            'status'=>'required', //active or not_active
            'quantity'=>'required|numeric',
            'price'=>'required|numeric',
            'type' => 'required|numeric',   //0=in 1=out

        ]);
        if ($valid->fails()) {
            return response()->json(['status' => false, 'code' => 210, 'messages' =>
                implode("\n",$valid-> messages()-> all()) ]);
        }
        $company = Company::where('id',$request->get('company_id'))->first();
        $caliber = Caliber::where('id',$request->get('caliber_id'))->first();
        $size = Size::where('id',$request->get('size_id'))->first();
        if($company && $caliber && $size){
            $item = new Oil();
            $item->company_id = $request->get('company_id');
            $item->caliber_id = $request->get('caliber_id');
            $item->size_id = $request->get('size_id');
            $item->status = $request->get('status');
            $item->quantity = $request->get('quantity');
            $item->price = $request->get('price');
            $item->type = $request->get('type');
            $item ->save();
            $message = __('api.ok');
            return response()->json(['status' => true, 'code' => 200, 'message' => $message , 'oil' => $item]);
        }

        else{
            $message = __('api.wrong_id');
            return response()->json(['status' => false, 'code' => 200, 'message' => $message]);

        }




    }

}








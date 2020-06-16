<?php

namespace App\Http\Controllers\API;
use App\Admin;
use App\Models\CartAddition;

use App\Models\Order;
use App\Models\Cart;
use App\Models\Product;
use App\Notifications\ResetPassword;
use Carbon\Carbon;
use Illuminate\Support\Facades\Password;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\Token;
use App\Models\OrderProduct;
use App\Models\Notify;
use App\Models\City;
use App\Models\Notifiy;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Image;
use DB;


class UserController extends Controller
{
    use SendsPasswordResetEmails;

    public function broker()    {
        return Password::broker('users');
    }
    
    public function image_extensions()  {
        return array('jpg', 'png', 'jpeg', 'gif', 'bmp');
    }

    public function signUp(Request $request) {

        $name = $request->get('name');
        $email = $request->get('email');
        $mobile =convertAr2En($request->get('mobile')) ;
        $password = bcrypt($request->get('password'));



        $validator = Validator::make($request->all(), [

            'name' => 'required',
            'email' => 'required|email|unique:users',
            'mobile' => 'required|digits_between:8,12|unique:users',
            'password' => 'required',

        ]);
        if ($validator->fails()) {
            return response()->json(['status' => false, 'code' => 200,
                'message' =>implode("\n",$validator-> messages()-> all()) ]);
        }

        $newUser = new User();
        $newUser->name = $name;
        $newUser->email = $email;
        $newUser->mobile = $mobile;
        $newUser->password = $password;

        $newUser->save();

        if ($newUser) {
            if ($request->has('fcm_token')) {
                Token::updateOrCreate(['device_type' => $request->get('device_type'),'fcm_token' => $request->get('fcm_token')],['user_id' => $newUser->id]);
            }

            $user = User::findOrFail($newUser->id);
            $user['access_token'] = $newUser->createToken('mobile')->accessToken;


            /*    $code = rand(10000, 99999);
                $bodySMS = __('app.ActivationMsg') . " هو : " . $code;
                // sendSMS($mobile,$bodySMS);
                $conf = new Code();
                $conf->code = $code;
                $conf->user_id = $user->id;
                $conf->save();*/


            $massege =__('api.ok');
            return response()->json(['status' => true, 'code' => 210, 'user' =>$user , 'message' => $massege ]);
        }
        $massege =__('api.whoops');
        return response()->json(['status' => false, 'code' => 200, 'message' => $massege ]);
    }

    public function login(Request $request) {
        $email = $request->get('email');
        $password = $request->get('password');

        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['status' => false, 'code' => 200,
                'message' => implode("\n",$validator-> messages()-> all()) ]);
        }


        if (Auth::once(['email' => $email, 'password' => $password])) {

            $user = Auth::user();
            if ($user->status == 'not_active' || $user->type !=2)  {
                $message = (app()->getLocale() == "ar") ? ' \لا تملك الصلاحية للدخول للتطبيق' : 'You do not have permission to access the application';
                return response()->json(['status' => true, 'code' => 210, 'message' =>
                    $message ]);
            }
            else {
                if ($request->has('fcm_token')) {
                    Token::updateOrCreate(['device_type' => $request->get('device_type'),'fcm_token' => $request->get('fcm_token')],['user_id' => $user->id]);
                }
                $user['access_token'] = $user->createToken('mobile')->accessToken;
//                $tokens = $user->tokens;
//                if (!$tokens->count()) {
//                    $user['access_token'] = $user->createToken('mobile')->accessToken;
//                } else {
//                    $user['access_token'] = $tokens->first()->id;
//                }

                return response()->json(['status' => true, 'code' => 200 ,'user' => $user]);
            }
        } else {

            $EmailData = User::query()->where(['email' => $email])->first();
            if ($EmailData) {
                $message = __('api.wrong_password');

                return response()->json(['status' => false, 'code' => 200 , 'message'=>$message ]);

            } else {
                $message = __('api.wrong_email2');

                return response()->json(['status' => false, 'code' => 200 , 'message'=>$message ]);
            }
        }
    }

    public function forgotPassword(Request $request)  {
        $validator = Validator::make($request->all(), [
            'email'=>'required|email',
        ]);
        //  return redirect()->back()->with('error','The email is required');
        if ($validator->fails()) {
            return response()->json(['status' => false, 'code' => 200,
                'message' =>implode("\n",$validator-> messages()-> all()) ]);
        }
        $user = User::where('email', $request->email)->first();

        if (!$user) {
            $message = 'The email not found';
            return response()->json(['status' => false, 'code' => 200,'message' => $message ]);
        }
        $token = $this->broker()->createToken($user);
        $url = url('/password/reset/' . $token);
        $user->notify(new ResetPassword($token));
        $message=__('api.resetPassword');
        return response()->json(['status' => true, 'code' => 200,'message' => $message ]);
    }

    public function editProfile(Request $request)  {
        $user_id = auth('api')->id();
        $user = User::query()->findOrFail($user_id);

        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'mobile' => 'required',
        ]);

        $name = ($request->has('name')) ? $request->get('name') : $user->name;
        $mobile = (convertAr2En($request->get('mobile'))) ? $request->get('mobile') : $user->mobile;

        $user->name = $name;
        $user->mobile = $mobile;

        if ($request->hasFile('image_profile')) {
            $imageProfile = $request->file('image_profile');
            $extention = $imageProfile->getClientOriginalExtension();
            $file_name = str_random(15) . "" . rand(1000000, 9999999) . "" . time() . "_" . rand(1000000, 9999999) . "." . $extention;
            Image::make($imageProfile)->resize(800, null, function ($constraint) {
                $constraint->aspectRatio();
            })->save("uploads/images/users/$file_name");
            $user->image_profile = $file_name;
        }
        $user->save();

        if ($user) {

            if ($request->has('fcm_token')) {
                Token::updateOrCreate(['device_type' => $request->get('device_type'),'fcm_token' => $request->get('fcm_token')],['user_id' => $user->id]);
            }

            $user['access_token'] = $user->createToken('mobile')->accessToken;

            $message = __('api.edit');
            return response()->json(['status' => true, 'code' => 200, 'user' =>$user ,
                'message' => $message, 'validator' => implode("\n",$validator-> messages()-> all()) ]);
        } else {
            $message = __('api.not_edit');
            return response()->json(['status' => false, 'code' => 200,
                'message' => $message, 'validator' => $validator ]);
        }
    }

    public function changePassword(Request $request)     {
        $rules = [
            'old_password' => 'required|min:6',
            'password' => 'required|min:6',
            'confirm_password' => 'required|min:6|same:password',
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return response()->json(['status' => false, 'code' => 200,
                'message' =>implode("\n",$validator-> messages()-> all())]);
        }
        $user = auth('api')->user();

        if (!Hash::check($request->get('old_password'), $user->password)) {
            $message = __('api.old_password'); //wrong old
            return response()->json(['status' => false, 'code' => 200,'message' => $message,
                'validator' => $validator ]);
        }

        $user->password = bcrypt($request->get('password'));

        if ($user->save()) {
            $user->refresh();
            $message = __('api.ok');
            return response()->json(['status' => true, 'code' => 200,'message' => $message ]);
        }
        $message = __('api.whoops');
        return response()->json(['status' => false, 'code' => 200,'message' => $message ]);
    }

    public function logout(){
        $user_id = auth('api')->id();
        Token::where('user_id', $user_id)->delete();
        if (auth('api')->user()->token()->revoke()) {
            $message = 'logged out successfully';
            return response()->json(['status' => true, 'code' => 200,
                'message' => $message ]);
        } else {
            $message = 'logged out successfully';
            return response()->json(['status' => true, 'code' => 202,
                'message' => $message ]);
        }
    }

    public function notifications(){
        $data = Notifiy::where('user_id',auth('api')->id())->orderBy('id','desc')->take(5)->get();
        $selected = []; 
        foreach ($data as $key => $value) {
              if (in_array($value->order_id ,$selected) ) {
                  $data->forget($key);
              }else{
                  $selected[] = $value->order_id;
              }
        }
       
        $message = __('api.ok');
        return response()->json(['status' => true, 'code' => 200,'message' => $message,'data'=>$data->values()->all() ]);
    }

    public function clearNotifications(){
        $data = Notifiy::where('user_id',auth('api')->id())->delete();
        $message = __('api.ok');
        return mainResponse(true, $message, $data, 200, 'items', '');
    }

}

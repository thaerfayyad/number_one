<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Notifications\ResetPassword;
use Illuminate\Support\Facades\Validator;
use App\User;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Illuminate\Http\Request;
use Psy\Util\Json;


class ForgotPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset emails and
    | includes a trait which assists in sending these notifications from
    | your application to your users. Feel free to explore this trait.
    |
    */

    use SendsPasswordResetEmails;

    public function __construct()
    {
        $this->middleware('guest');
    }



    /**
     * Send a reset link to the given user.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    /*public function forgetpassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
        ]);
        if ($validator->fails()) {
            // $errors = $validator->errors();
            // $errors = $errors->toArray();
            // $message = '';
            // foreach ($errors as $key => $value) {
            //     $message .= $value[0] . ',';
            // }
            return mainResponse(false, '' , null, 203, 'items',$validator);
        }
        if ($request->get('email')) { // accept Json header
            $user = User::where('email', $request->input('email'))->first();
            if (!$user) {
                $message = (app()->getLocale() == 'ar') ? ' البريد الإلكتروني المدخل غير مسجل  ' : 'We cant find a user with that e-mail address';
                return mainResponse(false, $message, null, 203, 'items',$validator);
            }
            $token = $this->broker()->createToken($user);
            //$url = url('/password/reset/' . $token);
            $user->notify(new ResetPassword($token));
            $message = (app()->getLocale() == 'ar') ? 'تم إرسال رابط تعيين كلمة المرور للبريد الإلكتروني المدخل' : 'Reset password link have been sent to your email address';

            return mainResponse(true, $message, null, 200, 'items',$validator);
        }else{
            $message = (app()->getLocale() == 'ar') ? ' البريد الإلكتروني المدخل غير مسجل  ' : 'We cant find a user with that e-mail address';
            return mainResponse(false, $message, null, 203, 'items',$validator);
        }
    }*/
}
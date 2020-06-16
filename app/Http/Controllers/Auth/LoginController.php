<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\User;
use App\Models\Project;
use Auth;
use Mail;
use Illuminate\Validation\ValidationException;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';








    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    
    
    public function login()
    {
        
        $request = request();
        
        $this->validateLogin($request);

        $email    = $request->email;
        $password = $request->password;
        $remember = $request->remember;
        

        if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $conditions = ['email'=>$email,'password' => $password];
        }
        
        if (auth()->attempt($conditions, $remember == 1 ? true : false)){

            if(auth()->user()->status == "not_active")
            {
                $errors = [$this->username() => __('common.disabled_account')];
                auth()->logout();
                return back()
                    ->withInput($request->only($this->username(), 'remember'))
                    ->withErrors($errors);
            }
            
            /********** Check if Has session, Add new project ********/
            if(auth()->user()->type == 1 && $request->session()->has('price'))
            {
                $project =new Project();
                $project->deliveryTime=$request->session()->get('deliveryTime');
                $project->price=$request->session()->get('price');
                $project->sector_id=$request->session()->get('sector_id');
                $project->specialty_id=$request->session()->get('specialty_id');
                $project->service_id=$request->session()->get('service_id');
                $project->note=$request->session()->get('note');
                $project->user_id=auth()->user()->id;

                $project->save();
                
                $request->session()->forget('deliveryTime');
                $request->session()->forget('price');
                $request->session()->forget('sector_id');
                $request->session()->forget('specialty_id');
                $request->session()->forget('service_id');
                $request->session()->forget('note');
                
                $request->session()->put('checkProject', 'ok');
               // return redirect()->back()->with('checkProject', 'ok');
               // return \Redirect::intended($this->redirectTo);
            }
            elseif(auth()->user()->type == 2 && $request->session()->has('price'))
            {
                $request->session()->forget('deliveryTime');
                $request->session()->forget('price');
                $request->session()->forget('sector_id');
                $request->session()->forget('specialty_id');
                $request->session()->forget('service_id');
                $request->session()->forget('note');
            }
            elseif($request->session()->has('checkRegister') || $request->session()->has('checkIndexRegister'))
            {
                $companies = User::select('id','name')->where('status','active')->where('category_id','<>',1)->get();
                 /***** Send Email ******/
                $blade_data = array(
                    'email'=> auth()->user()->email,
                    'companies' => $companies
    
                );
            $email_data = array(
                'from' => env('MAIL_FROM_ADDRESS'),
                'to' => [auth()->user()->email]);

            Mail::send('emails.ProductCompanySheet', $blade_data, function ($message) use ($email_data) {
                $message->to($email_data['to'])
                    ->subject('Tadweem - Companies providing products')
                    ->replyTo($email_data['from'], 'Tadweem')
                    ->from($email_data['from'], $email_data['from']);

            });
            
            if($request->session()->has('checkIndexRegister'))
            {
                $request->session()->forget('checkIndexRegister');
                $request->session()->put('checkIndexRegister2','ok');
            }
                
            }
            
        
                return \Redirect::intended($this->redirectTo);
            } // Login True


        return $this->sendFailedLoginResponse($request);

    }
}

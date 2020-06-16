<?php

namespace App\Http\Controllers\WEB\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Mockery\Exception;
use Illuminate\Support\Facades\Validator;
use App\Notifications\NewPostNotification;
use App\Models\Setting;
use App\User;
use App\Models\Notification;
use App\Models\Notifiy;
use App\Models\Token;
use Mail;


class NotificationMessageController extends Controller
{


    public function index(Request $request)
    {
        $items = Notification::query()->orderBy('id', 'Desc')->get();
        return view('admin.notifications.home', [
            'items' => $items,
        ]);
    }

    public function create()
    {
        $usersList = User::query()->where('status','active')/*->orderBy('name','ASC')*/->get();

        return view('admin.notifications.create',['usersList'=>$usersList]);
    }

    public function store(Request $request)
    {
        $title = $request->title ;
        $msg = $request->message ;
        $settings = Setting::query()->first();
        
        if($request->user_id != null) {
            $userInfo = User::query()->where('id',$request->user_id)->first();
            $tokens_android = Token::where('user_id',$request->user_id)->where('device_type','android')->pluck('fcm_token')->toArray();
            $tokens_ios = Token::where('user_id',$request->user_id)->where('device_type','ios')->pluck('fcm_token')->toArray();
            // return $tokens_ios;
            sendNotifiToCustomer($tokens_android, $tokens_ios, $title, $msg);
            
            /************** Send Mail ****************/
            $blade_data = array(
                'request' => $request,
                'settings' => $settings,
                'userInfo'=>$userInfo

            );
            if(app()->getLocale() == 'ar'){
                $ti = 'تطبيق سلة اكسبرس - اشعار جديد من الادارة';
                $sender = 'سلة اكسبرس';
            }else{
                $ti = "Sala Express App - New Notification";
                $sender = 'Sala Express App';
            }
            $email_data = array(
                'from' => env('MAIL_FROM_ADDRESS'),
                'to' => [$userInfo->email],
                'ti'=>$ti,
                'sender'=>$sender
                );

            Mail::send('emails.notification', $blade_data, function ($message) use ($email_data) {
                $message->to($email_data['to'])
                    ->subject($email_data['ti'])
                    ->replyTo($email_data['from'], $email_data['from'])
                    ->from($email_data['from'], $email_data['sender']);

            });
            
        }
        else
        {
        $notifications= New Notification;
        $notifications->title = $title;
        $notifications->message = $msg;
        $notifications->save();
        $this->fcmPush($title ,$msg);
        }
        
        return redirect()->back()->with('status', __('cp.create'));
    }

    public function destroy($id)
    {
        $notifications = Notification::query()->findOrFail($id);
        if ($notifications->delete()) {
            return 'success';
        }
        return 'fail';
    }

    function fcmPush($title ,$message)

{ 
//return $type[0];
    
    try {
        $headers = [
            'Authorization: key=AAAAmQcAEps:APA91bHjgU619P6c1O2hIAV9kGXxLByWS1UxlSXi5FnwKRG91hTIzdYgqadTm77bE7Lv0wTdlb_DTb-hbeJFmUjooaLBKlupBE2Rr9ZHxFvg0yM2YL6gWReXq4JV2ueuxYPIYAI9H3n9',
            'Content-Type: application/json'
        ];
        $notification= [
            "to"=> '/topics/salah',
            "notification"=>[
                'type' => "notify",
                'title' => $title,
                'body' => $message,
                'icon' => 'myicon',//Default Icon
                'sound' => 'mySound'//Default sound
            ]
        ];
        //return $notification;
       // return json_encode($data);
       
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($notification));
        
        
        
        $result = curl_exec($ch);
        curl_close($ch);
        //return json_decode($result, true);
      //  return back()->with('success','Edit SuccessFully');
    } catch (\Exception $ex) {
     //   return $ex->getMessage();
}
}

   

}

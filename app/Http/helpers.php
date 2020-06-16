<?php


use App\Models\Setting;
use App\User;
use Illuminate\Support\Facades\Cache;

function can($permission)
{
    //  $user = auth()->user();

    $userCheck = auth()->guard('admin')->check();
   $user='';

if($userCheck==false)
{
    return redirect('admin/login');
}
else
{
  $user=  auth()->guard('admin')->user();
}





    /*
        $users = User::where('status', 1)->get();
        $users->map(function ($item, $key) {
            return ucfirst($item->name);
        });
        dd($users);
    */


    if ($user->id == 1) {
        return true;
    }

//Cache::forget('permissions_' . $user->id);

        $minutes = 5;
    $permissions = Cache::remember('permissions_' . $user->id, $minutes, function () use ($user) {

        return explode(',', $user->permission->permission);

    });


    $permissions = array_flatten($permissions);
    return in_array($permission, $permissions);

    //@if(can('reservations.panel'))
}

function admin_assets($dir)
{
    return url('/admin_assets/assets/' . $dir);
}

function getLocal()
{
    return app()->getLocale();
}

function mainResponse($status, $message, $data, $code, $key,$validator){
    try {
        $result['status'] = $status;
        $result['code'] = $code;
        $result['message'] = $message;

        if ($validator && $validator->fails()) {
            $errors = $validator->errors();
            $errors = $errors->toArray();
            $message = '';
            foreach ($errors as $key => $value) {
                $message .= $value[0] . ',';
            }
            $result['message'] = $message;
            return response()->json($result, $code);
        }elseif (!is_null($data)) {


            if ($status) {
                if ($data != null && array_key_exists('data', $data)) {
                    $result[$key] = $data['data'];
                } else {
                    $result[$key] = $data;
                }
            } else {
                $result[$key] = $data;
            }
        }
        return response()->json($result, $code);
    } catch (Exception $ex) {
        return response()->json([
            'line' => $ex->getLine(),
            'message' => $ex->getMessage(),
            'getFile' => $ex->getFile(),
            'getTrace' => $ex->getTrace(),
            'getTraceAsString' => $ex->getTraceAsString(),
        ], $code);
    }
}

function convertAr2En($string){
    $persian = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];
    $arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    $num = range(0, 9);
    $convertedPersianNums = str_replace($persian, $num, $string);
    $englishNumbersOnly = str_replace($arabic, $num, $convertedPersianNums);
    return $englishNumbersOnly;
}

function payment( $email, $amount, $order_id){
    $url = 'https://maktapp.credit/v2/AddTransaction';
    $data =  array('token'=> '5F127A9C-23A2-4787-90BA-427014D735A8',
        'amount'  => $amount ,
        'currencyCode' => 'QAR' ,
        'orderId' => $order_id,
        'note' => ' test payment' ,
        'lang' => 'ar' ,
        'customerEmail' => $email   ,
        'customerCountry' => 'qatar'
    );
    $options = array();
    $defaults = array(
        CURLOPT_POST => 1,
        CURLOPT_HEADER => 0,
        CURLOPT_URL => $url,
        CURLOPT_FRESH_CONNECT => 1,
        CURLOPT_RETURNTRANSFER => 1,
        CURLOPT_FORBID_REUSE => 1,
        CURLOPT_TIMEOUT => 4,
        CURLOPT_POSTFIELDS => http_build_query($data)
    );
    $ch = curl_init();
    curl_setopt_array($ch, ($options + $defaults));
    if( ! $result = curl_exec($ch))
    {
        trigger_error(curl_error($ch));
    }
    curl_close($ch);
    return $result;
}

function validatePayment($order_id){
    $url = 'https://maktapp.credit/v2/ValidatePayment';
    $data =  array('token'=> '5F127A9C-23A2-4787-90BA-427014D735A8',
        'orderId' => $order_id
    );
    $options = array();
    $defaults = array(
        CURLOPT_POST => 1,
        CURLOPT_HEADER => 0,
        CURLOPT_URL => $url,
        CURLOPT_FRESH_CONNECT => 1,
        CURLOPT_RETURNTRANSFER => 1,
        CURLOPT_FORBID_REUSE => 1,
        CURLOPT_TIMEOUT => 4,
        CURLOPT_POSTFIELDS => http_build_query($data)
    );
    $ch = curl_init();
    curl_setopt_array($ch, ($options + $defaults));
    if( ! $result = curl_exec($ch))
    {
        trigger_error(curl_error($ch));
    }
    curl_close($ch);
    return $result;
}

function random_number($digits){
    return str_pad(rand(0, pow(10, $digits) - 1), $digits, '0', STR_PAD_LEFT);
}

function type(){
    return [__('common.store'),__('common.product'),__('common.url')];
}

function position(){
    return [__('common.site'),__('common.mobile')];
}

function typeArrive(){


    return[
        '1'=>__('print.delivery'),
            '2'=>__('print.pickup'),
            '3'=>__('print.both')
        ];

}

function optionArrive(){


    return[

        '1'=>__('print.have_delivery_team'),
        '2'=>__('print.link_delivery_company'),
        '3'=>__('print.both')
    ];

}

function sendNotificationToUsers( $tokens_android, $tokens_ios, $order_id, $message,$code=200 ){
        try {
            $headers = [
                'Authorization: key=AAAAmQcAEps:APA91bHjgU619P6c1O2hIAV9kGXxLByWS1UxlSXi5FnwKRG91hTIzdYgqadTm77bE7Lv0wTdlb_DTb-hbeJFmUjooaLBKlupBE2Rr9ZHxFvg0yM2YL6gWReXq4JV2ueuxYPIYAI9H3n9',
                'Content-Type: application/json'
            ];

            if(!empty($tokens_ios)) {
                $dataForIOS = [
                    "registration_ids" => $tokens_ios,
                    "notification" => [
                        'body' => $message,
                        'type' => "notify",
                        'title' => __('cp.ch_status')."".$order_id,//'Sallah',
                        'code' => $code,
                        'order_id' => $order_id,
                        'badge' => 1,
                        'icon' => 'myicon',//Default Icon
                        'sound' => 'mySound'//Default sound
                    ]
                ];
                $ch = curl_init();
                curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
                curl_setopt($ch, CURLOPT_POST, true);
                curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($dataForIOS));
                $result = curl_exec($ch);
                curl_close($ch);
               // $resultOfPushToIOS = "Done";
             //   return $result; // to check does the notification sent or not
            }
            if(!empty($tokens_android)) {
                $dataForAndroid = [
                    "registration_ids" => $tokens_android,
                    "data" => [
                        'body' => $message,
                        'type' => "notify",
                        'title' => __('cp.ch_status')."".$order_id,//'Sallah',
                        'order_id' => $order_id,
                        'code' => $code,
                        'badge' => 1,
                        'icon' => 'myicon',//Default Icon
                        'sound' => 'mySound'//Default sound
                    ]
                ];
                $ch = curl_init();
                curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
                curl_setopt($ch, CURLOPT_POST, true);
                curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($dataForAndroid));
                $result = curl_exec($ch);
                curl_close($ch);
            //    $resultOfPushToAndroid = "Done";
            }
         //   return $resultOfPushToIOS." ".$resultOfPushToAndroid;
        //    return $result;
        } catch (\Exception $ex) {
            return $ex->getMessage();
        }

      



    }
    
    
    function sendNotifiToCustomer( $tokens_android, $tokens_ios, $title, $message,$code=200 ){
        try {
            $headers = [
                'Authorization: key=AAAAmQcAEps:APA91bHjgU619P6c1O2hIAV9kGXxLByWS1UxlSXi5FnwKRG91hTIzdYgqadTm77bE7Lv0wTdlb_DTb-hbeJFmUjooaLBKlupBE2Rr9ZHxFvg0yM2YL6gWReXq4JV2ueuxYPIYAI9H3n9',
                'Content-Type: application/json'
            ];

            if(!empty($tokens_ios)) {
                $dataForIOS = [
                    "registration_ids" => $tokens_ios,
                    "notification" => [
                        'body' => $message,
                        'type' => "notify",
                        'title' => $title,
                        'code' => $code,
                        'order_id' => 0,
                        'icon' => 'myicon',//Default Icon
                        'sound' => 'mySound'//Default sound
                    ]
                ];
                $ch = curl_init();
                curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
                curl_setopt($ch, CURLOPT_POST, true);
                curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($dataForIOS));
                $result = curl_exec($ch);
                curl_close($ch);
            }
            if(!empty($tokens_android)) {
                $dataForAndroid = [
                    "registration_ids" => $tokens_android,
                    "data" => [
                        'body' => $message,
                        'type' => "notify",
                        'title' => $title,
                        'code' => $code,
                        'order_id' => 0,
                        'icon' => 'myicon',//Default Icon
                        'sound' => 'mySound'//Default sound
                    ]
                ];
                $ch = curl_init();
                curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
                curl_setopt($ch, CURLOPT_POST, true);
                curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($dataForAndroid));
                $result = curl_exec($ch);
            }
        } catch (\Exception $ex) {
            return $ex->getMessage();
        }

      



    }

function slugURL($title){
    $WrongChar = array('@', '؟', '.', '!','?','&','%','$','#','{','}','(',')','"',':','>','<','/','|','{','^');

    $titleNoChr = str_replace($WrongChar, '', $title);
    $titleSEO = str_replace(' ', '-', $titleNoChr);
    return $titleSEO;
}

function pointInPolygon($point, $polygon) {
  //  pointOnVertex = true;

    // Transform string coordinates into arrays with x and y values
    $point = pointStringToCoordinates($point);
    $vertices = array(); 
    foreach ($polygon as $vertex) {
        $vertices[] = pointStringToCoordinates($vertex); 
    }

    // Check if the point sits exactly on a vertex
    if (pointOnVertex($point, $vertices) == true) {
        return true;
    }

    // Check if the point is inside the polygon or on the boundary
    $intersections = 0; 
    $vertices_count = count($vertices);

    for ($i=1; $i < $vertices_count; $i++) {
        $vertex1 = $vertices[$i-1]; 
        $vertex2 = $vertices[$i];
        if ($vertex1['y'] == $vertex2['y'] and $vertex1['y'] == $point['y'] and $point['x'] > min($vertex1['x'], $vertex2['x']) and $point['x'] < max($vertex1['x'], $vertex2['x'])) { // Check if point is on an horizontal polygon boundary
            return true;
        }
        if ($point['y'] > min($vertex1['y'], $vertex2['y']) and $point['y'] <= max($vertex1['y'], $vertex2['y']) and $point['x'] <= max($vertex1['x'], $vertex2['x']) and $vertex1['y'] != $vertex2['y']) { 
            $xinters = ($point['y'] - $vertex1['y']) * ($vertex2['x'] - $vertex1['x']) / ($vertex2['y'] - $vertex1['y']) + $vertex1['x']; 
            if ($xinters == $point['x']) { // Check if point is on the polygon boundary (other than horizontal)
                return true;
            }
            if ($vertex1['x'] == $vertex2['x'] || $point['x'] <= $xinters) {
                $intersections++; 
            }
        } 
    } 
    // If the number of edges we passed through is odd, then it's in the polygon. 
    if ($intersections % 2 != 0) {
        return true;
    } else {
        return false;
    }
}

function pointOnVertex($point, $vertices) {
    foreach($vertices as $vertex) {
        if ($point == $vertex) {
            return true;
        }
    }

}

function pointStringToCoordinates($pointString) {
    $coordinates = explode(" ", $pointString);
    return array("x" => $coordinates[0], "y" => $coordinates[1]);
}





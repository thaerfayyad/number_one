<?php

namespace App\Http\Controllers\API;


use App\Models\Address;
use App\Models\Cart;
use App\Models\DeliveryCost;
use App\Models\Order;
use App\Models\Product;
use App\Models\ProductOrder;
use App\Models\RequestService;

use App\Http\Controllers\Controller;
use App\Models\Service;
use App\Models\ServiceOrder;
use App\Models\ServiceOrderDetail;
use App\Models\Setting;
use App\Models\StoreDeliveryCost;

use Carbon\Carbon;
use Dotenv\Exception\ValidationException;
use GuzzleHttp\Exception\RequestException;
use http\Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;

class NotificationController extends Controller
{




    public function index()
    {
        
        $user = auth('api')->user();
        $notifications = $user->notification;

        if (count($notifications) > 0) {
            $message = __('api.ok');
            return mainResponse(true, $message, $notifications, 200, 'items', '');
        } else {
            $message = __('api.not_found_notification');
            return mainResponse(true, $message, $notifications, 203, 'items', '');

            // return mainResponse(true, $message, $cart, 203, 'items', '');
        }
    }




}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use app\User;

class Notifiy extends Model
{
    use SoftDeletes ;
    public $table = 'notify';
    protected $fillable = ['message','user_id','order_id','created_at'];
    protected $hidden = ['updated_at','deleted_at'];
    protected $appends = ['image_user','name_user', 'total_order'];


    public function getImageUserAttribute(){

        $user=User::where('id',$this->user_id)->first();
        if ($user) {
            return $user->image	;
        }
        return 'No image';


    }
    public function getNameUserAttribute(){

        $user=User::where('id',$this->user_id)->first();
        if ($user) {
            return $user->name;
        }
        return 'unknown';


    }
    
    
    public function getTotalOrderAttribute(){
        $order = Order::where('id',$this->order_id)->first();
        if($order)
        {
        return $order->total_price;
        }
        else
        return 0;
    }





}

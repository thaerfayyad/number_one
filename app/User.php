<?php

namespace App;

use App\Models\Cart;
use App\Models\categoryUser;
use App\Models\Category;
use App\Models\City;
use App\Models\NotificationMessage;
use App\Models\Order;
use App\Models\Product;
use App\Models\Restaurant;
use App\Models\Service;
use App\Models\UserAddress;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use Notifiable,HasApiTokens,SoftDeletes;

    protected $hidden = [
        'password', 'fcm_token', 'image' , 'created_at', 'updated_at', 'deleted_at'
    ];


    public function getImageProfileAttribute($value)
    {
        if($value){
            return url('uploads/images/users/' . $value);
        }else{
            return url('uploads/images/users/defualtUser.jpg');
        }
    }

    public function getTypeAttribute($value)
    {
        return (string)$value;
    }

    public function getPhoneAttribute($value)
    {
        if ($value != null)
            return $value;
        return "";
    }


    public function notification()
    {
        return $this->hasMany(NotificationMessage::class);
    }

    public function carts()
    {
        return $this->hasMany(Cart::class, 'user_id','id');

    }

}

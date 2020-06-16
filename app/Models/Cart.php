<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use App\User;

class Cart extends Model
{

    use SoftDeletes;
    protected $table = 'carts';

    protected $fillable = ['user_id' ,'fcm_token', 'product_id', 'quantity'];
    protected $hidden = ['updated_at', 'deleted_at'];


    //relatioship between user and Cart one to many

    public function product()
    {
        return $this->belongsTo(Product::class,'product_id', 'id');
    }

}

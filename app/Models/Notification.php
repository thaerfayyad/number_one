<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Notification extends Model
{
    use SoftDeletes ;
    public $table = 'notifications';
    protected $fillable = ['title','message','user_id','created_at'];
    protected $hidden = ['updated_at','deleted_at'];



}

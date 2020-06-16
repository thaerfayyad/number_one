<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Order extends Model
{
    use SoftDeletes ;
    protected $table = 'orders';
    protected $hidden = ['updated_at', 'deleted_at'];

    protected $fillable = ['user_id','status','type','category_id','amount','quantity','description','employee_id','month','year','status' ];
    protected $appends = ['status_name'];
    
    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
    public function employee()
    {
        return $this->belongsTo(User::class,'employee_id');
    }
    public function category()
    {
        return $this->belongsTo(Category::class,'category_id');
    }


    












}
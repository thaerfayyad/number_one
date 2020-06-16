<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Code extends Model
{
    use SoftDeletes;
    protected $table = 'codes';
    protected $primaryKey = 'id';
   
   public function user()
    {
        return $this->belongsTo('App\User', 'user_id');
    }
    
}

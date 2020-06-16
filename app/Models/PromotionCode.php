<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class PromotionCode extends Model
{
    use SoftDeletes ;
    protected $table = 'promotion_codes';
    protected $hidden = ['updated_at', 'deleted_at'];

}
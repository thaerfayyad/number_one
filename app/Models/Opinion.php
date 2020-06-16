<?php

namespace App\Models;

use App\User;
use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Opinion extends Model
{
    use SoftDeletes,Translatable;
    protected $guarded = [];
    public $translatedAttributes = ['name','jobTitle','descraption'];
    protected $hidden = [ 'created_at', 'updated_at', 'deleted_at','translations'];


    public function getImageAttribute($value)
    {
        return url('uploads/opinion/'.$value);
    }




}

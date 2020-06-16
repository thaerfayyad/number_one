<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;

class Category extends Model
{
    //
    public $translatedAttributes = ['name'];

    use SoftDeletes,Translatable;
    protected $table = 'categories';
    protected $fillable = ['image'];
    protected $hidden = ['updated_at', 'deleted_at'];


    public function getImageAttribute($value)
    {
        return url('uploads/images/category/'. $value);
    }

}

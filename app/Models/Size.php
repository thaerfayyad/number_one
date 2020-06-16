<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;

class Size extends Model
{
    //
    public $translatedAttributes = ['name'];
    use SoftDeletes ,Translatable;
    protected $table = 'sizes';
//    protected $fillable = ['name','status'];
    protected $hidden = ['updated_at', 'deleted_at'];


    public function getImageAttribute($value)
    {
        return url('uploads/images/sizes/'. $value);
    }

    public function oils()
    {
        return $this->hasMany(Size::class,'size_id');
    }
}

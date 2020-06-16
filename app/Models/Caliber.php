<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;

class Caliber extends Model
{
    //
    public $translatedAttributes = ['name'];
    use SoftDeletes , Translatable;
    protected $table = 'calibers';
    protected $fillable = ['image','name','status'];
    protected $hidden = ['updated_at', 'deleted_at'];


    public function getImageAttribute($value)
    {
        return url('uploads/images/calibers/'. $value);
    }
    public function oils()
    {
        return $this->hasMany(Caliber::class,'caliber_id');
    }


}

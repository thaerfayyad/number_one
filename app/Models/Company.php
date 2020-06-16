<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;

class Company extends Model
{
    //
    public $translatedAttributes = ['name'];

    use SoftDeletes,Translatable;
    protected $table = 'companies';
    protected $fillable = ['image'];
    protected $hidden = ['updated_at','updated_at', 'deleted_at'];


    public function getImageAttribute($value)
    {
        return url('uploads/images/company/'. $value);
    }
    public function Attachments (){

        return $this->hasMany('App\Models\Attachment','company_id');
    }
    public function oils()
    {
        return $this->hasMany(Oil::class,'company_id');
    }

}

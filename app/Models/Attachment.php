<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;

class Attachment extends Model
{
    //
    public $translatedAttributes = ['name'];

    use SoftDeletes,Translatable;
    protected $table = 'Attachment';
    protected $fillable = ['image'];
    protected $hidden = ['updated_at', 'deleted_at'];


    public function getImageAttribute($value)
    {
        return url('uploads/images/company/'. $value);
    }
    public function company(){
        return $this->belongsTo('App\Models\Company','company_id');
    }
}

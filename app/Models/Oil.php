<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;

class Oil extends Model
{
    //
    public $translatedAttributes = ['name'];

    use SoftDeletes , Translatable;
    protected $table = 'oils';

    protected $fillable = ['image','company_id','caliber_id','size_id','quantity','price','type' ];
    protected $hidden = ['updated_at','uploaded_at', 'deleted_at'];

    public function getImageAttribute($value)
    {
        return url('uploads/images/oils/'. $value);
    }


    public function company()
    {
        return $this->belongsTo(Company::class,'company_id');
    }
    public function caliber()
    {
        return $this->belongsTo(Caliber::class,'caliber_id');
    }
    public function size()
    {
        return $this->belongsTo(Size::class,'size_id');
    }


}

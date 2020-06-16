<?php

namespace App\Models;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Language extends Model
{
    use SoftDeletes, Translatable;

    public $translatedAttributes = ['name'];
    protected $fillable = ['lang','flag'];
//    protected $appends = ['current_name'];


    public function getFlagAttribute($flag){
        return url($flag);
    }

//    public function getCurrentNameAttribute($name){
//        $id = Language::where('lang',app()->getLocale())->pluck('id')->first();
//        //return $id;
//        $name = LanguageTranslation::where('language_id',$id)->where('locale',app()->getLocale())->pluck('name')->first();
//        return $name;
//    }


}

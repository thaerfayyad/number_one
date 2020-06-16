<?php

namespace App\Models;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    use Translatable;
    public $translatedAttributes = ['title','join_description','description', 'address', 'key_words'];
//    protected $appends = ['privacy','terms','aboutus'];
    protected $hidden = ['translations'];

    public function getLogoAttribute($logo)
    {
        return !is_null($logo)?url('uploads/images/settings/'.$logo):null;
    }

    public function getImageAttribute($image)
    {
        //return url('uploads/settings/'.$image);
        return !is_null($image)?url('uploads/images/settings/'.$image):null;
    }



}

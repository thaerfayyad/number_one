<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Dimsav\Translatable\Translatable;

use Illuminate\Database\Eloquent\SoftDeletes;


class LandingPage extends Model
{
    use SoftDeletes , Translatable;

    protected $hidden = ['created_at', 'updated_at', 'deleted_at'];
    public $translatedAttributes = ['title','description','aboutUs','downlod','descriptionFirstStage','descriptionSacandtStage','descriptionThirdStage','features','titl1','title2','title3','title4','descriptionFeature1','descriptionFeature2','descriptionFeature3','descriptionFeature4','howOrder','descriptionOrder1','descriptionOrder2','descriptionOrder3'];


    public function getImageAttribute($value)
    {
        return url('uploads/LandingPage/'.$value);
    }


}

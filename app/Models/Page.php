<?php

namespace App\Models;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Page extends Model
{
    use SoftDeletes, Translatable;

    public $translatedAttributes = ['title', 'slug', 'description', 'key_words'];

    protected $fillable = ['image'];

    public function getImageAttribute($image)
    {
        if (!is_null($image)) {
            return url($image);
        }
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;


class Question extends Model
{
    //
    public $translatedAttributes = ['question','answer'];

    use SoftDeletes,Translatable;
    protected $table = 'questions';
    protected $hidden = ['updated_at', 'deleted_at'];

}
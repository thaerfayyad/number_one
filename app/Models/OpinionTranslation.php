<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class OpinionTranslation extends Model
{
    use  SoftDeletes;
    public $fillable = ['name','jobTitle','descraption'];
}

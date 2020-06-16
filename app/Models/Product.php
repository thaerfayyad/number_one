<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use App\User;

class Product extends Model
{
    //
    public $translatedAttributes = ['name' ,'description'];

    use SoftDeletes,Translatable;
    protected $table = 'products';
    protected $fillable = ['image' , 'price' ,'discount', 'offer_from' ,'offer_to'];
    protected $hidden = ['updated_at', 'deleted_at'];

    protected $appends = ['available_offer', 'price_offer', 'type_name', 'available_int'];
    

    public function getAvailableOfferAttribute()
    {
        return $this->offer_from .' ' . '_'.' '. $this->offer_to;

    }
    public function getPriceOfferAttribute()
    {
        if ($this->discount == 0) {
            return 0 ;
        }
        $price = $this->price;
        if($this->offer_from!= null && $this->offer_from <= now()->toDateString() && $this->offer_to >= now()->toDateString()) {
            $discount = ($price * $this->discount) / 100;
            $newPrice = $price - $discount;
            return $newPrice;
        }
        return 0;
    }


    public function getImageAttribute($value)
    {
        return url('uploads/images/products/' . $value);
    }


    public function category(){
        return $this->belongsTo(Category::class,'category_id','id')->withDefault();
    }

    //relatioship between order and product many to many
    public function orders()
    {
        return $this->belongsToMany(Order::class,'order_products','order_id','product_id')->withPivot('quantity','price');
    }
    
    public function getTypeNameAttribute()
    {
        $unit ="";
        if($this->type == 0) // kg
        {
            $unit = __('cp.kilo');
        }
        else if($this->type == 1) // package
        {
            $unit = __('cp.package');
        }
        else if($this->type == 2) // ounce
        {
            $unit = __('cp.ounce');
        }
        else if($this->type == 3) // piece
        {
            $unit = __('cp.piece');
        }
        else if($this->type == 4) // bag
        {
            $unit = __('cp.bag');
        }
        else if($this->type == 5) // number
        {
            $unit = __('cp.number');
        }
        return $unit;
    }
    
    
    public function getAvailableIntAttribute()
    {
        return (int) $this->available;
    }
    

}

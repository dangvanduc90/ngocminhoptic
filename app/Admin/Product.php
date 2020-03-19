<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;


class Product extends Model
{
    protected $fillable = [
        'name' , 'is_display', 'name_en', 'type_id', 'slug', 'sku' , 'price' , 'saleoff', 'chatlieu', 'chatlieu_en', 'content_en', 'note_en', 'content', 'note', 'status', 'meta_title', 'meta_des', 'meta_key'
    ];

    public function colors()
    {
        return $this->hasMany('App\Admin\Color');
    }

    public function type()
    {
        return $this->belongsTo('App\Admin\Type');
    }

    public function getImage(){
    	$color = $this->colors()->where('status',1)->orderby('is_default','desc')->first();
    	if($color != null) return $color->image_product;
    	else return asset('images/no-image.png');
    }

    public function getThumb(){
    	$color = $this->colors()->where('status',1)->orderby('is_default','desc')->first();
    	if($color != null) return  str_replace("source", "thumbs", $color->image_product);
    	else return asset('images/no-image.png');
    }
}

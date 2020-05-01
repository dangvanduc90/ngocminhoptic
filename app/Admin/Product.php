<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;


class Product extends Model
{
    protected $fillable = [
        'name' , 'is_display', 'name_en', 'type_id', 'slug', 'sku' , 'price' , 'saleoff', 'chatlieu', 'chatlieu_en', 'description', 'description_en', 'content_en', 'note_en', 'content', 'note', 'status', 'meta_title', 'meta_des', 'meta_key'
    ];

    protected $with = ['type'];

    public function images()
    {
        return $this->hasMany('App\Admin\ImageProduct');
    }

    public function type()
    {
        return $this->belongsTo('App\Admin\Type');
    }

    public function getImage(){
    	$color = $this->images()->where('status',1)->orderby('is_default','desc')->first();
    	return $color != null ? $color->image_product : asset('images/no-image.png');
    }

    public function getThumb(){
    	$color = $this->images()->where('status',1)->orderby('is_default','desc')->first();
    	return $color != null ? str_replace("source", "thumbs", $color->image_product) : asset('images/no-image.png');
    }
}

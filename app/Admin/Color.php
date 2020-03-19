<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class Color extends Model
{
    protected $fillable = [
        'product_id' , 'name', 'name_en', 'image_color' , 'code_color', 'image_product', 'is_default', 'status'
    ];

    protected $append =[
        'thumb_color', 'thumb_product', 'list_image'
    ];

    public function product()
    {
        return $this->belongsTo('App\Admin\Product');
    }

    public function setImageColorAttribute($value) {
    	$tmp = $value;
    	if ($tmp != null && $tmp != "") {
    		$index = strpos($tmp,'FILES/source/');
    		if (!$index === false) {
    			$tmp = substr($tmp,$index, strlen($tmp));
    		}
    	}
    	$this->attributes['image_color'] = $tmp;
    }

    public function setImageProductAttribute($value) {
    	$tmp = $value;
    	if ($tmp != null && $tmp != "") {
    		$index = strpos($tmp,'FILES/source/');
    		if (!$index === false) {
    			$tmp = substr($tmp,$index, strlen($tmp));
    		}
    	}
    	$this->attributes['image_product'] = $tmp;
    }

    public function getImageColorAttribute() {
    	$tmp = $this->attributes['image_color'];
    	if ($tmp != null && $tmp != "") {
    		$tmp = config('admin.base_url').$tmp;
    	}
    	return $tmp;
    }

    public function getImageproductAttribute() {
    	$tmp = $this->attributes['image_product'];
    	if ($tmp != null && $tmp != "") {
    		$tmp = config('admin.base_url').$tmp;
    	}
    	return $tmp;
    }

    public function getThumbColorAttribute() {
        $tmp = $this->attributes['image_color'];
        if ($tmp != null && $tmp != "") {
            $tmp = config('admin.base_url').$tmp;
            $tmp = str_replace("source", "thumbs", $tmp);
        }
        return $tmp;
    }

    public function getListImageAttribute() {
        $_name = $this->attributes['name'];
        $product = $this->product;
        if($product != null){
           $files = Storage::disk('album_product')->files($product->sku.'/'.$_name);
           return $files;
        }
        return null;
    }

    public function urlImg($str){
        return config('admin.base_url').'FILES/source/products/'.$str;
    }

     public function urlThumb($str){
        return config('admin.base_url').'FILES/thumbs/products/'.$str;
    }

    public function getThumbProductAttribute() {
        $tmp = $this->attributes['image_color'];
        if ($tmp != null && $tmp != "") {
            $tmp = config('admin.base_url').$tmp;
            $tmp = str_replace("source", "thumbs", $tmp);
        }
        return $tmp;
    }
}

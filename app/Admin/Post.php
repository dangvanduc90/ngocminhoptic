<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
   	protected $fillable = [
        'name' , 'name_en', 'is_display', 'image' , 'slug', 'des_s', 'content' , 'type',  'des_s_en', 'content_en' , 'meta_title', 'meta_des', 'meta_key' , 'created_by', 'updated_by', 'status' , 'type',
    ];

    protected $append =[
        'thumb',
    ];


    public function adminCreated()
    {
        return $this->belongsTo('App\Admin','created_by');
    }

     public function adminUpdated()
    {
        return $this->belongsTo('App\Admin','updated_by');
    }

    public function setImageAttribute($value) {
    	$tmp = $value;
    	if ($tmp != null && $tmp != "") {
    		$index = strpos($tmp,'FILES/source/');
    		if (!$index === false) {
    			$tmp = substr($tmp,$index, strlen($tmp));
    		}
    	}
    	$this->attributes['image'] = $tmp;
    }

    public function getImageAttribute() {
    	$tmp = $this->attributes['image'];
    	if ($tmp != null && $tmp != "") {
    		$tmp = config('admin.base_url').$tmp;
    	}
    	return $tmp;
    }

    public function getThumbAttribute() {
        $tmp = $this->attributes['image'];
        if ($tmp != null && $tmp != "") {
            $tmp = config('admin.base_url').$tmp;
            $tmp = str_replace("source", "thumbs", $tmp);
        }
        return $tmp;
    }
}

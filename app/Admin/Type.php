<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
    protected $fillable = [
        'name' , 'name_en', 'slug', 'meta_title', 'meta_des', 'meta_key', 'status',
    ];

    public function products()
    {
        return $this->hasMany('App\Admin\Product');
    }
}

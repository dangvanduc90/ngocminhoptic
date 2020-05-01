<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'name' , 'is_display', 'name_en', 'type_id', 'slug', 'sku' , 'price' , 'saleoff', 'chatlieu', 'chatlieu_en', 'description', 'description_en', 'content_en', 'note_en', 'content', 'note', 'status', 'meta_title', 'meta_des', 'meta_key'
    ];

    protected $with = ['type'];

    protected $appends = [
        'images',
        'avatar',
    ];

    public function images()
    {
        return $this->hasMany('App\Admin\ImageProduct')->orderBy('is_default', 'desc');
    }

    public function type()
    {
        return $this->belongsTo('App\Admin\Type');
    }

    public function getAvatarAttribute()
    {
        foreach ($this->images as $image) {
            if ($image->is_default) {
                return $image;
            }
        }
        return new ImageProduct();
    }
}

<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class ImageProduct extends Model
{
    protected $fillable = [
        'product_id',
        'product_image',
        'is_default',
        'title',
        'alt',
    ];

    protected $casts = [
        'product_id' => 'integer',
        'is_default' => 'boolean',
    ];

    public function product()
    {
        $this->belongsTo('App\Admin\Product')->withDefault();
    }
}

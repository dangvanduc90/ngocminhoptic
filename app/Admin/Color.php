<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class Color extends Model
{
    protected $fillable = [
        'name', 'name_en', 'code_color', 'status'
    ];

    protected $append =[
        'thumb_color', 'thumb_product', 'list_image'
    ];
}

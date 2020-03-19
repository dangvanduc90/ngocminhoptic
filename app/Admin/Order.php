<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = [
        'name', 'address', 'email', 'phone', 'gio', 'ngay', 'coso', 'content', 'status'
    ];
}

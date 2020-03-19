<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class LienHe extends Model
{
    protected $fillable = [
        'name', 'phone', 'email', 'address', 'content', 'status'
    ];
}

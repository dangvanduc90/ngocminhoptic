<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class Khambenh extends Model
{
    protected $fillable = [
        'name' , 'price', 'status', 'masp'
    ];
}

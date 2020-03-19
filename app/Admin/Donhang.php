<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class Donhang extends Model
{
    protected $fillable = [
        'name', 'phone', 'address', 'email', 'content', 'type', 'status'
    ];

    public function giohangs()
    {
        return $this->hasMany('App\Admin\Giohang');
    }

    public function sum(){
    	return $this->giohangs()->sum('sum');
    }
}

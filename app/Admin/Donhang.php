<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class Donhang extends Model
{
    protected $fillable = [
        'name', 'phone', 'address', 'email', 'content', 'type', 'status', 'stk', 'bank_id'
    ];

    public function giohangs()
    {
        return $this->hasMany('App\Admin\Giohang');
    }

    public function bank()
    {
        return $this->hasOne('App\Admin\Bank', 'id', 'bank_id')->withDefault();
    }

    public function getBankNameAttribute()
    {
        return $this->bank->name;
    }

    public function sum(){
    	return $this->giohangs()->sum('sum');
    }
}

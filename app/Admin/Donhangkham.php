<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class Donhangkham extends Model
{
    protected $fillable = [
        'benhan_id', 'khambenh_id', 'soluong', 'gia', 'thanhtien',
    ];

    public function benhan()
    {
        return $this->belongsTo('App\Admin\Benhan');
    }

    public function khambenh()
    {
        return $this->belongsTo('App\Admin\Khambenh')->withDefault();
    }
}

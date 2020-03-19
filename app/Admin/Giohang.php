<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class Giohang extends Model
{
    protected $fillable = [
        'color_id', 'price', 'amount', 'sum', 'donhang_id',
    ];

    public function color()
    {
        return $this->belongsTo('App\Admin\Color');
    }

    public function donhang()
    {
        return $this->belongsTo('App\Admin\Donhang');
    }
}

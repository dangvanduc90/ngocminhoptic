<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class Benhan extends Model
{
    protected $casts = [
        'datcoc' => 'integer',
        'congno' => 'integer',
        'tongtien' => 'integer',
        'tongthanhtien' => 'integer',
    ];

    protected $fillable = [
        'madon' , 'hovaten', 'sdt', 'pd', 'ngaykham', 'ngayhen', 'diachi', 'noidung', 'mp_ts', 'mt_ts',
        'mp_thiluc', 'mt_thiluc', 'mp_ts_moi', 'mt_ts_moi', 'mp_tl_kich', 'mt_tl_kich', 'mp_nhanap', 'mt_nhanap',
        'khieunai', 'ghichu', 'datcoc', 'congno', 'tongtien', 'tongthanhtien', 'status'
    ];

    public function donhangkhams()
    {
        return $this->hasMany('App\Admin\Donhangkham');
    }

    public function sum(){
    	return $this->donhangkhams()->sum('thanhtien');
    }

    public function total(){
    	return $this->sum() - floatval($this->khieunai) + (0.1 * $this->sum());
    }
}

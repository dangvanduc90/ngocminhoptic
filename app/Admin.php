<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Admin extends Authenticatable
{
    protected $fillable = [
        'username', 'fullname', 'email', 'age', 'gender', 'phone',
        'address', 'status', 'role', 'authorization',
        'password', 'created_by',
    ];

    protected $guard = 'admin';

    public function getAuthorizationAttribute()
    {
       $tmp = $this->attributes['authorization'];
       $res = [];
       if($tmp != null && $tmp != ""){
        $res = explode(";", $tmp);
       }
       return $res;

    }

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}

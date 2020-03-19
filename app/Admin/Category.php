<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;
use App\Admin\Category;

class Category extends Model
{
    protected $fillable = [
        'name', 'slug', 'cat_id', 'type', 'note', 'status',
    ];

    protected $appends = ['parent'];

    public function getParentAttribute()
    {    
        $cat_id = $this->attributes['cat_id'];
        $res = null;
        if(isset($cat_id)){
        	$res = Category::find($cat_id);
        }
        return $res;
        
    }
}

<?php

namespace App\Models\Admin;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Estado extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];

    public function cidade()
    {
        return $this->hasMany('App\Models\Admin\Cidade');
    }
}

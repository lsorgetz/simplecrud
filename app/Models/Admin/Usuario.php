<?php

namespace App\Models\Admin;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Usuario extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];

    public function cidade()
    {
        return $this->belongsTo('App\Models\Admin\Cidade');
    }
}

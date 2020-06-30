<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Cidade extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];

    function estado() {
        return $this->belongsTo('App\Models\Admin\Estado');
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class slider extends Model
{
    public $timestamps = false;
    
    protected $table        = 'slider';
    protected $fillable     = ['slider_ten','slider_hinh','slider_hienthi'];

    protected $guarded      = ['slider_id'];
    protected $primaryKey   = 'slider_id';
   

   
}

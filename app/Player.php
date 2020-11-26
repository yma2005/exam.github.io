<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Player extends Model
{
     public function role()
   {
   	return $this->belongsTo('App\Role');
   }
}

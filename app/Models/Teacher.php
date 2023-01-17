<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    use HasFactory;

    public function cgies()
    {
        return $this->hasOne(Cgy::class);
    }





    public function cgies()
    {
        return $this->hasMany(Cgy::class);
    }



    public function tags()
    {
        return $this->belongsToMany(Tag::class);
    }

    public function cgy(){
       return $this->belongsTo(Cgy::class);
    }
}

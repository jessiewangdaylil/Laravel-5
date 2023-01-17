<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;

    public function cgy()
    {
        return $this->belongsTo(Cgy::class);
    }

    public function contact()
    {
        return $this->belongsTo(Contact::class);
    }

}
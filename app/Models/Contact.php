<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;

    protected $fillable = ['subject', 'message', 'email', 'name', 'phone'];

    public function course()
    {
        return $this->hasOne(Course::class);
    }

}
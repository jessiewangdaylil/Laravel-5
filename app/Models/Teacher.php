<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    use HasFactory;
//關聯設定開始 Relationship setting start
    //找老師屬於哪個分類
    public function cgies()
    {
        return $this->hasMany(Cgy::class);
    }
    //找老師的使用者帳號
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    //找老師開的課程
    public function courses()
    {
        return $this->hasMany(User::class);
    }
//關聯設定結束 Relationship setting end
};
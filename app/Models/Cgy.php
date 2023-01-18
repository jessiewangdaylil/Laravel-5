<?php

namespace App\Models;

use App\Models\Course;
use App\Models\Teacher;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cgy extends Model
{
    use HasFactory;
//關聯設定開始 Relationship setting start
    //找父分類有哪些分類(一對多)
    public function cgies()
    {
        return $this->hasMany(Cgy::class);
    }
    //找分類有屬於哪個父分類(一對一)
    public function cgy()
    {
        return $this->belongsToMany(Cgy::class);
    }
    //找分類有哪些老師(一對多)
    public function teachers()
    {
        return $this->hasMany(Teacher::class);
    }
    //找分類有哪些課程(一對多)
    public function courses()
    {
        return $this->hasMany(Course::class);
    }
//關聯設定結束 Relationship setting end

}
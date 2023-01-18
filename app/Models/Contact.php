<?php

namespace App\Models;

use App\Models\Course;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;
// 白名單
    protected $fillable = ['subject', 'message', 'email', 'name', 'phone'];

//關聯設定開始 Relationship setting start
    //找許願單許願的那堂課程(一對一)
    public function course()
    {
        return $this->hasOne(Course::class);
    }
    //找許願單被誰填寫(一對一)
    public function user()
    {
        return $this->belongsTo(User::class);
    }
//關聯設定結束 Relationship setting end

}

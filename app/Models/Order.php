<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
//關聯設定開始 Relationship setting start
    //找訂單來自哪個使用者(一對一)
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    //找訂單訂購那些課程(一對多)
    public function course()
    {
        return $this->hasMany(Course::class);
    }

//關聯設定結束 Relationship setting end
}
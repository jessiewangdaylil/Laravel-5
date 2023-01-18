<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;
//關聯設定開始 Relationship setting start
    //找課程屬於哪個分類(一對一)
    public function cgy()
    {
        return $this->belongsTo(Cgy::class);
    }
    //找課程出現在那些表單(一對多)
    public function contacts()
    {
        return $this->belongsToMany(Contact::class);
    }
    //找課程出現在那些訂單(多對多)
    public function orders()
    {
        return $this->belongsToMany(Contact::class);
    }
    //找課程由那些老師擔任(多對多)
    public function teachers()
    {
        return $this->belongsToMany(Contact::class);
    }
//關聯設定結束 Relationship setting end

}
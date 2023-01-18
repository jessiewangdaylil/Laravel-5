<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Element extends Model
{
    use HasFactory;
//關聯設定開始 Relationship setting start
    public function user()
    {
        return $this->belongsTo(User::class);
    }
//關聯設定結束 Relationship setting end

//模型方法開始 Model Methods start
// 用途 :取得第一張照片
    public function getFirstPic()
    {
        $havePics = strstr($this->pic, '[');
        if ($havePics) {

            $pic = json_decode($this->pic, true);
            if (is_array($pic) && count($pic) > 0) {
                return $pic[0];
            } else {
                return null;
            }
        } else {
            return $this->pic;

        }
    }
    // 用途 :取得第一個Icon
    public function getFirstIcon()
    {
        $haveIcons = strstr($this->icon, '[');
        if ($haveIcons) {

            $icon = json_decode($this->icon, true);
            if (is_array($icon) && count($icon) > 0) {
                return $icon[0];
            } else {
                return null;
            }
        } else {
            return $this->icon;

        }
    }
//模型方法開始 Model Methods End

}
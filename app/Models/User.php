<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Notifications\Notifiable;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Laravel\Jetstream\HasProfilePhoto;
use Laravel\Sanctum\HasApiTokens;

class User extends \TCG\Voyager\Models\User

{
    use HasApiTokens;
    use HasFactory;
    use HasProfilePhoto;
    use Notifiable;
    use TwoFactorAuthenticatable;

    /**
     * The attributes that are mass assignable.白名單
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
        'two_factor_recovery_codes',
        'two_factor_secret',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array<int, string>
     */
    protected $appends = [
        'profile_photo_url',
    ];
//關聯設定開始 Relationship setting start
    //找使用者(管理員)改過那些網頁元素
    public function element()
    {
        return $this->hasMany(Element::class);
    }
    //找使用者的老師身分
    public function teacher()
    {
        return $this->hasOne(Teacher::class);
    }
    //找使用者填寫過的聯絡表
    public function contacts()
    {
        return $this->hasMany(Contact::class);
    }
    //找使用者訂購過的訂單
    public function orders()
    {
        return $this->hasMany(Order::class);
    }
//關聯設定結束 Relationship setting end
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('username')->nullable()->unique();
            $table->string('title', 45)->nullable(); //頭銜
            $table->string('first_name', 45)->nullable(); //姓
            $table->string('last_name', 45)->nullable(); //名
            $table->string('organization', 40)->nullable(); //組織
            $table->string('identify', 20)->nullable(); //身分證字號
            $table->string('gender', 20)->nullable(); //性別
            $table->date('birthday')->nullable(); //生日
            $table->string('tel', 20)->nullable(); //電話
            $table->string('mobile', 20)->nullable(); //手機號碼
            $table->string('address', 100)->nullable(); //地址
            $table->boolean('enabled')->default(true); //是否啟用

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn(['username', 'type', 'title', 'first_name', 'last_name', 'organization', 'identify', 'gender', 'birthday', 'tel', 'mobile', 'pic', 'post_id', 'address', 'desc', 'enabled']);
        });
    }
};
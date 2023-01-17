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
        Schema::create('contacts', function (Blueprint $table) {
            $table->id();
            $table->string('name', 20); //姓名
            $table->enum('salutation', ['先生', '小姐', '其他'])->nullable(); //稱呼
            $table->string('subject', 20); //標題
            $table->string('message', 500); //訊息
            $table->string('phone', 20)->nullable(); //連絡電話
            $table->string('email', 100)->nullable(); //電子郵箱
            $table->boolean('replied')->default(false); //已回覆
            $table->string('handler', 20)->nullable(); //回覆人(處理者)
            $table->timestamp('replied_at')->nullable(); //回覆日期
            $table->unsignedBigInteger('user_id')->index()->nullable(); //使用者
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade'); //外鍵是否同步刪除
            $table->date('course_at')->nullable(); //許願課程時間
            $table->enum('is_existcourse', ['否', '是', '免填'])->default('免填'); //是否存在此課程
            $table->foreignId('course_id')->constrained()->nullable(); //許願已存在課程
            $table->timestamps();

        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {

        Schema::table('contacts', function (Blueprint $table) {
            $table->dropForeign(['user_id']);
            $table->dropForeign(['course_id']);
        });
        Schema::dropIfExists('contacts');
    }
};

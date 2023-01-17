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
        Schema::create('courses', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('cgy_id')->unsigned()->index(); //課程分類
            $table->foreign('cgy_id')->references('id')->on('cgies')->onDelete('cascade');
            $table->bigInteger('teacher_id')->unsigned()->index(); //課程分類
            $table->foreign('teacher_id')->references('id')->on('teachers')->onDelete('cascade');
            $table->integer('hours'); //單堂課幾小時
            $table->datetime('started_at'); //上課時間
            $table->datetime('ended_at'); //結束時間
            $table->datetime('cycle'); //上課週期
            $table->string('title', 50); //標題
            $table->string('pics', 255)->nullable(); //圖片
            $table->integer('price_og')->default(0); //初始售價
            $table->integer('price_new')->nullable(); //更新售價
            $table->string('badge', 30)->nullable(); //小標
            $table->integer('star')->default(10); //星數，5星為10
            $table->integer('people')->default(0); //人數限制   用fun 抓剩餘人數
            $table->string('desc', 400)->nullable(); //描述
            $table->string('chars', 300)->nullable(); //課程特色
            $table->string('sku', 100)->nullable(); //sku編號
            $table->integer('sort')->default(0); //排序
            $table->boolean('enabled')->default(true); //是否啟用
            $table->bigInteger('course_id')->unsigned()->index(); //課程分類
            $table->foreign('course_id')->references('id')->on('courses')->onDelete('cascade');
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
        Schema::table('teachers', function (Blueprint $table) {
            $table->dropForeign(['teacher_id']);
            $table->dropForeign(['cgy_id']);
        });
        Schema::dropIfExists('courses');

    }
};
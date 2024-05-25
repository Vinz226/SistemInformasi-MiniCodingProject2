<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKaryawanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Karyawan', function (Blueprint $table) {
            $table->increments('ID');
            $table->string('Nama')->nullable();
            $table->string('Pangkat')->nullable();
            $table->string('Telepon')->nullable();
            $table->string('Email')->nullable();
            $table->string('Foto')->nullable();
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
        Schema::dropIfExists('Karyawan');
    }
}

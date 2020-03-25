<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddMasanphamToSanphamkhamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('khambenhs', function (Blueprint $table) {
            $table->addColumn('string', 'masp', ['length' => 255])->nullable()->after('name');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('khambenhs', function (Blueprint $table) {
            $table->dropColumn('masp');
        });
    }
}

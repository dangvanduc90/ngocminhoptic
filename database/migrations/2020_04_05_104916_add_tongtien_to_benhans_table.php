<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddTongtienToBenhansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('benhans', function (Blueprint $table) {
            $table->addColumn('float', 'tongtien')->nullable()->default(0)->after('congno');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('benhans', function (Blueprint $table) {
            $table->dropColumn('tongtien');
        });
    }
}

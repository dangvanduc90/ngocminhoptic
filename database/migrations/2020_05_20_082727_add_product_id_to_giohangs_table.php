<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddProductIdToGiohangsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('giohangs', function (Blueprint $table) {
            $table->addColumn('integer', 'product_id')->after('donhang_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('giohangs', function (Blueprint $table) {
            $table->dropColumn('tongthanhtien');
        });
    }
}

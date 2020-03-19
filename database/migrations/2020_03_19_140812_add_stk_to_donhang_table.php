<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddStkToDonhangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('donhangs', function (Blueprint $table) {
            $table->addColumn('text', 'stk')->nullable()->after('email');
            $table->addColumn('integer', 'bank_id')->nullable()->after('email');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('donhangs', function (Blueprint $table) {
            $table->dropColumn('stk');
            $table->dropColumn('bank_id');
        });
    }
}

<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ChangeColorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('colors', function (Blueprint $table) {
            $table->dropColumn('image_product');
            $table->dropColumn('image_color');
            $table->dropColumn('is_default');
            $table->dropColumn('product_id');
            $table->dropColumn('quantity');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('colors', function (Blueprint $table) {
            $table->addColumn('text', 'image_color')->nullable();
            $table->addColumn('text', 'image_product')->nullable();
            $table->addColumn('boolean', 'is_default')->default(false)->nullable();
            $table->addColumn('integer', 'product_id');
            $table->addColumn('integer', 'quantity')->default(0);
        });
    }
}

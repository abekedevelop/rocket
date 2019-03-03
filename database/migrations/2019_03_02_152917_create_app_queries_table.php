<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAppQueriesTable extends Migration
{

    public function up()
    {
        Schema::create('app_queries', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('search_query');
            $table->string('query_result');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('app_queries');
    }
}

<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class AppQueries extends Model
{
    protected $table = 'app_queries';

    protected $fillable = [
        'type',
        'search_query',
        'query_result'
    ];
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\models\Credentials;

class CredKeeper extends Controller
{
    private static $clientData = [
        'clientId' => '',
        'appName' => ''
    ];

    public static function getClientData () {
        $credData = Credentials::where([
            'state' => 1
        ])->first();

        if (!empty($credData)) {

            self::$clientData['clientId'] = $credData->client_id;
            self::$clientData['appName'] = $credData->app_name;

        } else {
            return false;
        }
        return self::$clientData;
    }
}

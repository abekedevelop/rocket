<?php
/**
 * Created by PhpStorm.
 * User: abk
 * Date: 3/4/19
 * Time: 7:45 AM
 */

namespace App\Traits;


trait SendRequest
{
    public function sendRequest ($url) {

        $curl = curl_init();

        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

        curl_setopt_array($curl,[
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_HTTPHEADER => [
                'Accept-version:'=> 'v1'
            ],
            CURLOPT_URL => $url
        ]);
        $result = curl_exec($curl);

        $result = json_decode($result, true);

        curl_close($curl);

        return $result;
    }
}
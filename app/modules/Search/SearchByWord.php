<?php
/**
 * Created by PhpStorm.
 * User: abk
 * Date: 3/3/19
 * Time: 7:30 PM
 */

namespace App\modules\Search;


use App\Http\Controllers\CredKeeper;

class SearchByWord
{
    private $searchUrl = 'https://api.unsplash.com/search/photos?';

    public function searchByWord ($term, $pageNum) {


        $url = $this->getSearchUrl($term, $pageNum);

        $result = $this->sendRequest($url);

        $totalPages = $result->total_pages;

        return [
            'status' => 'success',
            'data' => $result,
            'total' => $totalPages
        ];
    }

    private function sendRequest ($url) {

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

        $result = json_decode($result);

        curl_close($curl);

        return $result;
    }

    private function getSearchUrl ($term, $pageNum) {

        $clientData = CredKeeper::getClientData();

        $perPage = 15;

        return $this->searchUrl . 'client_id=' . $clientData['clientId'] . '&query=' . $term . '&page=' . $pageNum . '&per_page=' . $perPage;
    }
}
<?php

namespace App\Traits;


use App\helpers\CredKeeper;

trait GetSearchUrl
{
    private $searchUrl = 'https://api.unsplash.com/';

    private function getSearchUrl ($searchType, $term, $pageNum = false, $perPage = false) {

        $clientData = CredKeeper::getClientData();

        if ($searchType === 'photos') {
            return $this->searchUrl . 'search/photos/?client_id=' . $clientData['clientId'] . '&query=' . $term . '&page=' . $pageNum . '&per_page=' . $perPage;
        }
        if ($searchType === 'id') {
            return $this->searchUrl . 'photos/' . $term . '?client_id=' . $clientData['clientId'];
        }

    }
}
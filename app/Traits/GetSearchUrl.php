<?php

namespace App\Traits;


use App\helpers\CredKeeper;

trait GetSearchUrl
{
    private $searchUrl = 'https://api.unsplash.com/search/';

    private function getSearchUrl ($searchType, $term, $pageNum = false, $perPage = false) {

        $clientData = CredKeeper::getClientData();

        if ($searchType === 'photos') {
            return $this->searchUrl . 'photos/?client_id=' . $clientData['clientId'] . '&query=' . $term . '&page=' . $pageNum . '&per_page=' . $perPage;
        }
        if ($searchType === 'id') {
            return $this->searchUrl . 'photos/?client_id=' . $clientData['clientId'] . '&id=' . $term;
        }

    }
}
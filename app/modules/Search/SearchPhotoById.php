<?php

namespace App\modules\Search;


use App\helpers\QuerySaver;
use App\Traits\GetSearchUrl;
use App\Traits\SendRequest;

class SearchPhotoById
{
    use GetSearchUrl;
    use SendRequest;

    public function searchById ($id) {
        $url = $this->getSearchUrl('id', $id);

        $result = $this->sendRequest($url);

        $querySaver = new QuerySaver();

        $querySaver->saveQueryData('id', $id, $result);

        return [
            'status' => 'success',
            'data' => $result
        ];
    }
}
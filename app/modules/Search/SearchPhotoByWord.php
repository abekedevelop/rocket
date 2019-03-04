<?php
/**
 * Created by PhpStorm.
 * User: abk
 * Date: 3/3/19
 * Time: 7:30 PM
 */

namespace App\modules\Search;


use App\helpers\QuerySaver;
use App\Traits\GetSearchUrl;
use App\Traits\SendRequest;

class SearchPhotoByWord
{
    use GetSearchUrl;
    use SendRequest;

    public function search($word, $pageNum)
    {
        $perPage = 15;

        // search type from unsplash api: photos, collections, users
        $url = $this->getSearchUrl('photos', $word, $pageNum, $perPage);

        $result = $this->sendRequest($url);

        $querySaver = new QuerySaver();

        $querySaver->saveQueryData('word', $word, $result);

        $totalPages = $result['total_pages'];

        return [
            'status' => 'success',
            'data' => $result,
            'total' => $totalPages
        ];
    }
}
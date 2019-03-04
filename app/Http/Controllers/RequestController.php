<?php

namespace App\Http\Controllers;

use App\modules\Search\SearchPhotoById;
use App\modules\Search\SearchPhotoByWord;
use Illuminate\Http\Request;

class RequestController extends Controller
{

    public function searchPhotos (Request $request) {
        try {
            $term = $request->query('term');
            $pageNum = $request->query('pageNum');

            if (trim($term) === '') {
                return [
                    'status' => 'error',
                    'message' => 'Could not obtain any search criteria'
                ];
            }

            $search = new SearchPhotoByWord();

            return $search->search($term, $pageNum);

        } catch (\Exception $e) {
            echo $e;
            die;
        }
    }

    public function searchPhotoById (Request $request) {
        try {
            $id = $request->query('photoId');
            $search = new SearchPhotoById();

            return $search->searchById($id);
        } catch(\Exception $err) {
            echo $err;
            die;
        }

    }
}

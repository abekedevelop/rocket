<?php

namespace App\Http\Controllers;

use App\modules\Search\SearchById;
use App\modules\Search\SearchByWord;
use Illuminate\Http\Request;

class RequestController extends Controller
{

    public function searchByWord (Request $request) {
        try {
            $term = $request->query('term');
            $pageNum = $request->query('pageNum');

            if (trim($pageNum) === '') {
                return [
                    'status' => 'error',
                    'message' => 'Could not obtain any search criteria'
                ];
            }

            $search = new SearchByWord();

            return $search->searchByWord($term, $pageNum);

        } catch (\Exception $e) {
            echo $e;
            die;
        }
    }

    public function searchById (Request $request) {
        try {
            $id = $request->query('photoId');
            $search = new SearchById();

            return $search->searchById($id);
        } catch(\Exception $err) {
            echo $err;
            die;
        }

    }
}

<?php
/**
 * Created by PhpStorm.
 * User: abk
 * Date: 3/3/19
 * Time: 10:24 PM
 */

namespace App\helpers;


use App\models\AppQueries;

class QuerySaver
{
    public function saveQueryData ($type, $query, $data) {
        $model = new AppQueries();
        $model->type = $type;
        $model->search_query = $query;
        $parsedData = self::parse($data);
        $model->query_result = $parsedData;
        $model->save();
    }

    private function parse ($data) :string {
        $parsedData = [
//            'total_pages' => $data['total_pages'],
//            'total' => $data['total']
        ];

        // saving essential data only
        foreach ($data['results'] as $item) {
            $photo = [
                'image_id' => $item['id'],
                'image_description' => $item['description'],
                'user_id' => $item['user']['id'],
                'user_name' => $item['user']['name']
            ];
            $parsedData[] = $photo;
        }
        return json_encode($parsedData);
    }
}
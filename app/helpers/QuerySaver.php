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
        $parsedData = self::parse($type, $data);
        $model->query_result = $parsedData;
        $model->save();
    }

    private function parse ($type, $data) :string {
        $parsedData = [];
        if ($type === 'word') {
            $parsedData = [
                'total_pages' => $data['total_pages'],
                'total' => $data['total']
            ];

            // saving essential data only
            foreach ($data['results'] as $item) {
                $photo = [
                    'image_id' => $item['id'],
                    'image_description' => $item['description'],
                    'user_id' => $item['user']['id'],
                    'user_name' => $item['user']['first_name'],
                    'user_last_name' => $item['user']['last_name'],
                    'user_location' => $item['user']['location'],
                    'instagram_username' => $item['user']['instagram_username']

                ];
                $parsedData[] = $photo;
            }
        }
        if ($type === 'id') {
            $photo = [
                'id' => $data['id'],
                'description' => $data['description'],
                'user_id' => $data['user']['id'],
                'user_first_name' => $data['user']['first_name'],
                'user_last_name' => $data['user']['last_name'],
                'user_location' => $data['user']['location'],
                'instagram_username' => $data['user']['instagram_username'],
                'twitter_username' => $data['user']['twitter_username']
            ];
            $parsedData[] = $photo;
        }

        return json_encode($parsedData);
    }
}
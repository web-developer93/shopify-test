<?php

namespace app\controllers;
use app\models\Collections;
use app\models\ShopifyExport;
class CollectionsController extends \yii\web\Controller
{
    // Завантажуємо JSON з списком колекцій, і дозаписуємо нові у БД
    public function actionSave()
    {
        $shopifyModel = new ShopifyExport();
        $json = $shopifyModel->getJSON('/admin/smart_collections.json');
        $collections = json_decode($json,true);
        foreach ($collections['smart_collections']  as $collection){
            $model = new Collections();
            $model->title = $collection['title'];
            $model->type = $collection['handle'];
            $model->save();
        }


    }

}

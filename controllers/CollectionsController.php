<?php

namespace app\controllers;
use app\models\Collections;
use app\models\ShopifyCollection;
use app\models\ShopifyExport;
use yii\web\HttpException;

class CollectionsController extends \yii\web\Controller
{
    // Завантажуємо JSON з списком колекцій, і дозаписуємо нові у БД
    public function actionSave()
    {
        $shopifyModel = new ShopifyExport();
        $json = $shopifyModel->getJSON('/admin/smart_collections.json');
        echo $json;
        if( $json != 0){   //Перевіряємо результат функції на наявність даних
             $collectionSave = new ShopifyCollection(); 
            if($collectionSave->saveCollectionData($json)){   //Зберігаємо колекцію Shopify у БД і перевіряємо чи не повертав метод false
                 throw new HttpException(500,'Server Error');
            }
        }
        else{
             throw new HttpException(500,'Server Error');
        }



    }

}

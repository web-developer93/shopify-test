<?php

namespace app\controllers;

use app\models\Products;
use app\models\ShopifyExport;
use yii\data\ActiveDataProvider;

class ProductController extends \yii\web\Controller
{
    public $layout = false;
// Завантажуємо JSON з списком продуктів, і дозаписуємо нові у БД
    public function actionSave()
    {
        $shopifyModel = new ShopifyExport();
        $jsonProducts = $shopifyModel->getJSON('/admin/products.json');
        $products = json_decode($jsonProducts,true);

        foreach($products['products'] as $product){
            $model = new Products();
            $model->description = $product['body_html'];
            $model->title = $product['title'];
            $model->type = $product['product_type'];
            $model->price = $product['variants'][0]['price'];
            $model->image = $product['image']['src'];
            $model->save();
        }

    }

//Створюємо $dataProvider з продуктами для нашої колекції
    public function actionView(){
        if(isset($_POST['typeProduct'])){
            $typeProduct = $_POST['typeProduct'];
            $query = Products::find()->where(['type'  => $typeProduct]);

            $dataProvider = new ActiveDataProvider([
                    'query' => $query,
                    'sort' => false
            ]);
            $dataProvider->pagination = false;
           return $this->render('view', ['dataProvider' => $dataProvider]); // відправляємо dataProvider для рендеру таблиці
        }
    }
    
    

}

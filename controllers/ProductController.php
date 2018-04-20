<?php

namespace app\controllers;

use app\models\Products;
use app\models\ShopifyExport;
use app\models\ShopifyProduct;
use yii\data\ActiveDataProvider;
use yii\web\HttpException;

class ProductController extends \yii\web\Controller
{
    public $layout = false;
// Завантажуємо JSON з списком продуктів, і дозаписуємо нові у БД
    public function actionSave()
    {
        $shopifyModel = new ShopifyExport();
        $jsonProducts = $shopifyModel->getJSON('/admin/products.json');

        if($jsonProducts != ''){ //Перевіряємо результат функції на наявність даних
            $productSave = new ShopifyProduct();
          if(!$productSave->saveProductData($jsonProducts)){ //Зберігаємо колекцію Shopify у БД і перевіряємо чи не повертав метод false
               throw new HttpException(501,'Server Error');
           }

        }
        else{

           throw new HttpException(502,'Server Error');
        }





    }

//Створюємо $dataProvider з продуктами для нашої колекції
    public function actionView(){
        if(isset($_POST['typeProduct'])){
            $typeProduct = $_POST['typeProduct'];
            $query = Products::find()->where(['product_type'  => $typeProduct]);

            $dataProvider = new ActiveDataProvider([
                    'query' => $query,
                    'sort' => false
            ]);
            $dataProvider->pagination = false;
           return $this->render('view', ['dataProvider' => $dataProvider]); // відправляємо dataProvider для рендеру таблиці
        } 
        else{
            
            throw new HttpException(500,'Server Error');
        }
    }
   
    

    
    

}

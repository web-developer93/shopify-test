<?php
/**
 * Created by PhpStorm.
 * User: mukol
 * Date: 19.04.2018
 * Time: 21:17
 */

namespace app\models;
use Yii;
use yii\base\Model;

class ShopifyProduct extends Model
{


//Перегляд списку продуктів
     public function saveProductData($data){
         
         $dataArray = json_decode($data, true);
         foreach($dataArray['products'] as $product ){
             $variants = $product['variants'];
             $image = $product['image'];
             $images = $product['images'];
             unset($product['variants'],$product['images'], $product['image'], $product['options']);
             $saveProduct = $this->saveProduct($product, $images, $variants);
             $saveProductImage = $this->saveImage($image);
             if(!$saveProduct && !$saveProductImage){
                 return false;
             }

         }
         return true;
     }
//Збереження продукту
    protected function saveProduct($product, $images, $variants){
        $model = Products::find()->where(['id' => $product['id']])->one();
        if(!$model){
            $model = new Products();
        }
        $model->attributes = $product;
        $model->images = json_encode($images);
        $model->variants = json_encode($variants);

        if($model->save()){
            return true;
        }
      

         return false;


    }
//Збереження зображення
    protected function saveImage($image){

        if(!empty($image)){ // перевіряємо існування зображення, якщо не існує завершуємо функцію

            $model = ProductImages::find()->where(['product_id' => $image['product_id']])->one();
            if(!$model){
                $model = new ProductImages();
            }
            $model->attributes = $image;
            if($model->save()) {
                return true;
            }
           

        }
        else{
            return true;
        }

       return false;



    }

}
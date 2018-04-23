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


             $saveProduct = $this->saveProduct($product);

             if(!$saveProduct ){
                 return false;
             }

         }
         return true;
     }
//Збереження продукту
    public function saveProduct($product){
        $model = Products::find()->where(['id' => $product['id']])->one();
        if(isset($model)){
            return true;
        }
        else{
            $model = new Products();
        }
        $variants = $product['variants'];
        $options = $product['options'];
        $images = $product['images'];
        $model->attributes = $product;


        if($model->save()){

            if(!($this->saveOptions($options) && $this->saveVariants($variants) && $this->saveImages($images))){
                return false;
            }


            return true ;
        }
        else{
            return false;
        }




    }
//Перегляд масиву опцій і передача на збереження
    public function saveOptions($options){
        foreach ($options as $option){
            if(!$this->saveOption($option)){
                return false;
            }
        }
        return true;
    }
//Перегляд масиву зображень і передача на збереження
    public function saveImages($images){
        foreach($images as $image){
            if(!$this->saveImage($image)){
                return false;
            }
        }
        return true;
    }
//Перегляд масиву варіантів і передача на збереження
    public function saveVariants($variants){
        foreach ($variants as $variant){
            if(!$this->saveVariant($variant)){
                return false;
            }
        }
        return true;
    }

//Збереження зображення
    public function saveImage($image){

        if(!empty($image)){ // перевіряємо існування зображення, якщо не існує завершуємо функцію

            $model = $model = new ProductImages();

            $model->attributes = $image;
            if(!$model->save()) {
                return false;
            }
           

        }


       return true;

    }
//Збереження варіанта
    public function saveVariant($variant){
        $model = new ProductVariants();
        $model->attributes = $variant;
        if($model->save()){
            return true;
        }
        else{
           
            return false;
        }

    }
//Збереження опцій
    public function saveOption($option){
        $model = new ProductOptions();
        $model->attributes = $option;
        $model->values = json_encode($option['values']);
        if($model->save()){
            return true;
        }
        else{

            return false;
        }
    }


}
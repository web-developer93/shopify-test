<?php
/**
 * Created by PhpStorm.
 * User: mukol
 * Date: 20.04.2018
 * Time: 9:09
 */

namespace app\models;


use yii\base\Model;

class ShopifyCollection extends Model
{
    public function saveCollectionData($data){
        $dataArray = json_decode($data,true); //Конвертуємо json  масив
        foreach ($dataArray['smart_collections'] as $collection){ //переглядаємо список колекцій


            if(!$this->saveCollection($collection)){ // передаємо дані для збереження у БД
                return false;
            }
        }
        return true;
    }
//зберігання колекції
    public function saveCollection($collection){
        $model = Collections::find()->where(['id' => $collection['id']])->one();
        if(isset($model)){
            return true;
        }
        else{
            $model = new Collections();
        }
        $rules = $collection['rules'];
        $image = $collection['image'];
        $model->attributes = $collection;
        $model->rule = $rules[0]['condition'];
       

        if($model->save()){

            $saveImage = $this->saveImageCollection($image, $model->id); //Зберігаємо картинку колекції
            return (true && $saveImage);
        }
        

        return false;
    }
    
//збереження зображення колекції
    public function saveImageCollection($image, $id){
        if(!empty($image)){ // перевіряємо існування зображення, якщо не існує завершуємо функцію

            $model = $model = new CollectImage();
            $model->attributes = $image;
            $model->id = $id;
            if($model->save()) { //зберігаємо зображення
                return true;
            }

        }
        else{
            return true;
        }
        return false;
    }



}
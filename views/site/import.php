<?php
/**
 * Created by PhpStorm.
 * User: mukol
 * Date: 17.04.2018
 * Time: 12:49
 */
use yii\helpers\Html;
use yii\helpers\Url;


$this->title = 'Імпорт';
$this->params['breadcrumbs'][] = $this->title;
$ajaxUrlProduct = Url::toRoute(['/product/save']);
$ajaxUrlCollect =  Url::toRoute(['/collections/save']);
?>
<div class="site-login">
    <h1><?= Html::encode($this->title) ?></h1>
    <? echo Html::a('Оновити продукти','#',[
        'onClick' => "$.ajax({
             url : '{$ajaxUrlProduct}',
             type  :  'post',
             success : function(data){
                alert('Список продуктів успішно оновлено');
             },
             error : function(data){
                 alert('Помилка, щось пішло не так');
             }
        });",
        'class' => 'btn btn-success btn-lg'
    ]); ?>

    <? echo Html::a('Оновити колекції','#',[
        'onClick' => "$.ajax({
             url : '{$ajaxUrlCollect}',
             type  :  'post',
              success : function(data){
                alert('Список колекцій успішно оновлено');
             },
             error : function(data){
                 alert('Помилка, щось пішло не так');
             }
        });",
        'class' => 'btn btn-success btn-lg'
    ]); ?>

</div>


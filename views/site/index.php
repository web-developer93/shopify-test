<?php

/* @var $this yii\web\View */

$this->title = 'My Yii Application';

$listData = \yii\helpers\ArrayHelper::map($models , 'rule','title' );

?>
<div class="site-index">

    <div class="jumbotron">


        
    </div>

    <div class="body-content">

        <div class="row">
            <div class="col-md-12">
                <?= \yii\helpers\Html::label('Колекції')?>
                <?= \yii\helpers\Html::dropDownList('list', '', $listData,['class' => 'form-control', 'prompt' => 'Виберіть колекцію', 'id' => 'select-collection']) ?>

                <?= \yii\helpers\Html::hiddenInput('url',\yii\helpers\Url::toRoute('product/view'),['id' => 'urlProductView']);?>
                <br>
                <div id="products-container"></div>
            </div>
        </div>

    </div>
</div>

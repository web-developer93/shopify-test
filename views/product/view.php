<?php
/**
 * Created by PhpStorm.
 * User: mukol
 * Date: 17.04.2018
 * Time: 20:35
 */
use yii\helpers\Html;
//Виводимо таблицю з продуктами
echo \yii\grid\GridView::widget([
    'dataProvider' => $dataProvider,
    'columns' => [
        [
            'class' => 'yii\grid\SerialColumn',
        ],
        [
            'attribute' => 'title',
            'label' => 'Заголовок'
        ],
        [
            'attribute' => 'description',
            'format' => 'html',
            'content' => function($data){
                return substr($data->description,0,150) . '...';
            },
            'label' => 'Опис'

        ],
        [
            'attribute' => 'image',
            'content' => function($data){
                return Html::img($data->image, ['width' => '100']);
            },
            'label' => 'Картинка'
        ],
        [
            'attribute' => 'price',
            'content' => function($data){
                return $data->price . '₴';
            },
            'label' => 'Ціна'
        ]
    ]
]);
?>
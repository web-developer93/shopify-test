<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_products".
 *
 * @property int $id
 * @property int $title
 * @property int $image
 * @property int $description
 * @property int $type
 * @property int $price
 */
class Products extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_products';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [[ 'title', 'image', 'description', 'type', 'price'], 'required'],
            [['id'], 'safe'],
           [['title'], 'unique']

        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [

            'title' => 'Title',
            'image' => 'Image',
            'description' => 'Description',
            'type' => 'Type',
            'price' => 'Price',
        ];
    }
}

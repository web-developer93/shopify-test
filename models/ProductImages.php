<?php

namespace app\models;

use app\components\DateTransform;
use Yii;

/**
 * This is the model class for table "tbl_product_images".
 *
 * @property int $id
 * @property int $product_id
 * @property int $position
 * @property string $created_at
 * @property string $alt
 * @property int $width
 * @property int $height
 * @property string $src
 */
class ProductImages extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_product_images';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'product_id', 'position', 'created_at', 'width', 'height', 'src'], 'required'],
            [['id', 'product_id', 'position', 'width', 'height'], 'integer'],
            [['created_at'], 'safe'],
            [['alt', 'src'], 'string', 'max' => 255],
            [['id'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'product_id' => 'Product ID',
            'position' => 'Position',
            'created_at' => 'Created At',
            'alt' => 'Alt',
            'width' => 'Width',
            'height' => 'Height',
            'src' => 'Src',
        ];
    }

    public function getImage(){
        return $this->hasOne(Products::className(), ['product_id' => 'id'] ); //Звязуємо продукт з картинкою
    }

    public function beforeSave($insert)
    {
        if (parent::beforeSave($insert)) {

            $this->created_at = DateTransform::transform($this->created_at);


            return true;
        }
        return false;
    }
}

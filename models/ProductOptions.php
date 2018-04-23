<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_product_options".
 *
 * @property int $id
 * @property int $product_id
 * @property string $name
 * @property int $position
 * @property string $values
 */
class ProductOptions extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_product_options';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['product_id', 'name', 'position', 'values'], 'required'],
            [['product_id', 'position'], 'integer'],
            [['values'], 'string'],
            [['name'], 'string', 'max' => 100],
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
            'name' => 'Name',
            'position' => 'Position',
            'values' => 'Values',
        ];
    }
    
    public function getProduct(){
        return $this->hasOne(Products::className(), ['id' => 'product_id']);
    }
    
}

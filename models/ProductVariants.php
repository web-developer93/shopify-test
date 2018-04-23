<?php

namespace app\models;
use app\components\DateTransform;
use Yii;

/**
 * This is the model class for table "tbl_product_variants".
 *
 * @property int $id
 * @property int $product_id
 * @property string $title
 * @property double $price
 * @property string $sku
 * @property int $position
 * @property string $inventory_policy
 * @property double $compare_at_price
 * @property string $fulfillment_service
 * @property string $inventory_management
 * @property string $option1
 * @property string $option2
 * @property string $option3
 * @property string $created_at
 * @property string $updated_at
 * @property int $taxable
 * @property string $barcode
 * @property int $grams
 * @property int $image_id
 * @property int $inventory_quantity
 * @property double $weight
 * @property string $weight_unit
 * @property int $inventory_item_id
 * @property int $old_inventory_quantity
 * @property int $requires_shipping
 */
class ProductVariants extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_product_variants';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['product_id', 'title', 'price', 'position', 'inventory_policy', 'fulfillment_service', 'taxable', 'grams', 'inventory_quantity', 'weight', 'weight_unit', 'inventory_item_id', 'old_inventory_quantity', 'requires_shipping'], 'required'],
            [['product_id', 'position', 'grams', 'image_id', 'inventory_quantity', 'inventory_item_id', 'old_inventory_quantity'], 'integer'],
            [['price', 'compare_at_price', 'weight'], 'number'],
            [['created_at', 'updated_at', 'barcode', 'image_id'], 'safe'],
            [['title', 'sku', 'inventory_management', 'option1', 'option2', 'option3', 'barcode'], 'string', 'max' => 100],
            [['inventory_policy', 'fulfillment_service'], 'string', 'max' => 50],
         //   [['taxable', 'requires_shipping'], 'string', 'max' => 1],
            [['weight_unit'], 'string', 'max' => 10],
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
            'title' => 'Title',
            'price' => 'Price',
            'sku' => 'Sku',
            'position' => 'Position',
            'inventory_policy' => 'Inventory Policy',
            'compare_at_price' => 'Compare At Price',
            'fulfillment_service' => 'Fulfillment Service',
            'inventory_management' => 'Inventory Management',
            'option1' => 'Option1',
            'option2' => 'Option2',
            'option3' => 'Option3',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'taxable' => 'Taxable',
            'barcode' => 'Barcode',
            'grams' => 'Grams',
            'image_id' => 'Image ID',
            'inventory_quantity' => 'Inventory Quantity',
            'weight' => 'Weight',
            'weight_unit' => 'Weight Unit',
            'inventory_item_id' => 'Inventory Item ID',
            'old_inventory_quantity' => 'Old Inventory Quantity',
            'requires_shipping' => 'Requires Shipping',
        ];
    }

    public function getProduct(){
        return $this->hasOne(Products::className(),['id' => 'product_id'] );
    }

    public function beforeSave($insert)
    {
        if (parent::beforeSave($insert)) {

            $this->created_at = DateTransform::transform($this->created_at);

            $this->updated_at =  DateTransform::transform($this->updated_at);

            return true;
        }
        return false;
    }
}

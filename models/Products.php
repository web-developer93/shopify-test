<?php

namespace app\models;

use app\components\DateTransform;
use Yii;

/**
 * This is the model class for table "tbl_products".
 *
 * @property int $id
 * @property string $title
 * @property string $body_html
 * @property string $vendor
 * @property string $product_type
 * @property string $created_at
 * @property string $handle
 * @property string $updated_at
 * @property string $published_at
 * @property string $template_suffix
 * @property string $published_scope
 * @property string $tags
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
            [['id','title', 'body_html', 'vendor', 'product_type', 'created_at', 'handle', 'updated_at', 'published_at', 'published_scope', 'variants'], 'required'],
            [['body_html'], 'string'],
            [['created_at', 'updated_at', 'published_at'], 'safe'],
            [['title', 'handle', 'template_suffix', 'published_scope', 'tags'], 'string', 'max' => 255],
            [['vendor'], 'string', 'max' => 100],
            [['product_type'], 'string', 'max' => 50],
            [['template_suffix', 'tags', 'images'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'body_html' => 'Body Html',
            'vendor' => 'Vendor',
            'product_type' => 'Product Type',
            'created_at' => 'Created At',
            'handle' => 'Handle',
            'updated_at' => 'Updated At',
            'published_at' => 'Published At',
            'template_suffix' => 'Template Suffix',
            'published_scope' => 'Published Scope',
            'tags' => 'Tags',
        ];
    }


    public function getImage(){
        return $this->hasOne(ProductImages::className(), ['product_id' => 'id'] ); //Звязуємо продукт з картинкою
    }
    
    public function beforeSave($insert)
    {
        if (parent::beforeSave($insert)) {

            $this->created_at = DateTransform::transform($this->created_at);
            $this->published_at = DateTransform::transform($this->published_at);
            $this->updated_at =  DateTransform::transform($this->updated_at);

            return true;
        }
        return false;
    }

}

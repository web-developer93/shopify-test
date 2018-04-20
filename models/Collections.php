<?php

namespace app\models;
use app\components\DateTransform;
use Yii;

/**
 * This is the model class for table "tbl_collections".
 *
 * @property int $id
 * @property string $handle
 * @property string $title
 * @property string $updated_at
 * @property string $body_html
 * @property string $published_at
 * @property string $sort_order
 * @property string $template_sufix
 * @property int $disjunctive
 * @property string $rule
 */
class Collections extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_collections';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'handle', 'title', 'updated_at', 'published_at', 'sort_order', 'disjunctive', 'rule'], 'required'],
            [['updated_at', 'published_at', 'template_sufix', 'body_html'], 'safe'],
            [['body_html'], 'string'],
            [['handle', 'title', 'sort_order', 'template_sufix', 'rule'], 'string', 'max' => 255],
           
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'handle' => 'Handle',
            'title' => 'Title',
            'updated_at' => 'Updated At',
            'body_html' => 'Body Html',
            'published_at' => 'Published At',
            'sort_order' => 'Sort Order',
            'template_sufix' => 'Template Sufix',
            'disjunctive' => 'Disjunctive',
            'rule' => 'Rule',
        ];
    }

    public function getImage(){
        return $this->hasMany(CollectImage::className(), ['id' => 'id'] ); //Звязуємо колекцію з картинкою
    }
    
    public function beforeSave($insert)
    {
        if (parent::beforeSave($insert)) {

           
            $this->published_at =   DateTransform::transform($this->published_at);
            $this->updated_at =  DateTransform::transform($this->updated_at);

            return true;
        }
        return false;
    }
}

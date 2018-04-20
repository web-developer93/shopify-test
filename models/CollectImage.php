<?php

namespace app\models;
use app\components\DateTransform;
use Yii;

/**
 * This is the model class for table "tbl_collect_image".
 *
 * @property int $id
 * @property int $collect_id
 * @property string $created_at
 * @property string $alt
 * @property int $width
 * @property int $height
 * @property string $src
 */
class CollectImage extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_collect_image';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'created_at', 'width', 'height', 'src'], 'required'],
            [['id', 'width', 'height'], 'integer'],
            [['created_at', 'alt'], 'safe'],
            [['alt', 'src'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'collect_id' => 'Collect ID',
            'created_at' => 'Created At',
            'alt' => 'Alt',
            'width' => 'Width',
            'height' => 'Height',
            'src' => 'Src',
        ];
    }

    public function getImage(){
        return $this->hasMany(Collections::className(), ['id' => 'id'] ); //Звязуємо колекцію з картинкою
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

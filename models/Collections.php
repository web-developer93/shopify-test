<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_collections".
 *
 * @property int $id
 * @property string $title
 * @property string $hundler
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
            [['title', 'type'], 'required'],
            [['title', 'type'], 'string', 'max' => 255],
            [['type' ,'title'], 'unique']
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
            'type' => 'Type',
        ];
    }
}

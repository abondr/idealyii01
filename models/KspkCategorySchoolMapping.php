<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "kspk_category_school_mapping".
 *
 * @property int $id
 * @property int $kspk_category
 * @property int $school_id
 */
class KspkCategorySchoolMapping extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'kspk_category_school_mapping';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kspk_category', 'school_id'], 'required'],
            [['kspk_category', 'school_id'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'kspk_category' => 'Kspk Category',
            'school_id' => 'School ID',
        ];
    }
}

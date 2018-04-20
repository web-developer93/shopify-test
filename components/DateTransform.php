<?php

/**
 * Created by PhpStorm.
 * User: mukol
 * Date: 19.04.2018
 * Time: 22:32
 */
namespace app\components;
use yii\base\Component;



class DateTransform extends Component
{
    public static function transform($date){
        
        return  date('Y-m-d H:i:s',strtotime($date));
        
    }
    
}
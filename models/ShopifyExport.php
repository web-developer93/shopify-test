<?php
/**
 * Created by PhpStorm.
 * User: mukol
 * Date: 17.04.2018
 * Time: 9:38
 */
namespace app\models;

use Yii;
use yii\base\Model;
class ShopifyExport extends Model{
    //Параментри підключення до Shopify API
    public $apiKey = '56650a3fa0b257d4fee51357c8f8cde1';
    public $password = 'e9c052d3ac894d74ecc2d9bb42eea72f';
    public $urlSite = 'computer-shop-today.myshopify.com';

    // Отримання отримання результату в форматі JSON  від API
    public function getJSON($address){
        $mainUrl = 'https://' . $this->apiKey . ':' . $this->password . '@' . $this->urlSite . $address;
        $json = file_get_contents($mainUrl);
        return $json;
    }
}
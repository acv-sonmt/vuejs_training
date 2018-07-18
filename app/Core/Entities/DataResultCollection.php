<?php
/**
 * Created by PhpStorm.
 * User: MSI
 * Date: 6/25/2018
 * Time: 9:18 AM
 */

namespace App\Core\Entities;


class DataResultCollection
{
    public $data=[];
    public $status;
    public $message;
    public $errorCode = [];


    public function first()
    {
       if($this->data!=null && !empty($this->data) && isset($this->data[0])){
           return $this->data[0];
       }else{
           return array();
       }
    }

    /**
     * @return mixed
     */
    public function dataToArray(){
        return json_decode( json_encode($this->data), true);
    }

}

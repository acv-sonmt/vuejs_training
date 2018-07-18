<?php 
//This is dev automatic generate 
 namespace App\Dev\Entities; 
use App\Core\Entities\Entity; 
class DEV_GET_TRANSLATION_DATA_LST extends Entity{
	public $id;
	public $lang_code;
	public $type_code;
	public $code;
	public $text;
	public $translate_type_code;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

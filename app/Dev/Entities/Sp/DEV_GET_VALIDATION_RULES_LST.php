<?php 
//This is dev automatic generate 
 namespace App\Dev\Entities; 
use App\Core\Entities\Entity; 
class DEV_GET_VALIDATION_RULES_LST extends Entity{
	public $id;
	public $lang_code;
	public $code;
	public $type_name;
	public $text;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

<?php 
//This is dev automatic generate 
 namespace App\Dev\Entities; 
use App\Core\Entities\Entity; 
class DEV_GET_LANGUAGE_CODE_LST extends Entity{
	public $id;
	public $code;
	public $name;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

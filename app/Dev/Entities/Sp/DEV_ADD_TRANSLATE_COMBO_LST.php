<?php 
//This is dev automatic generate 
 namespace App\Dev\Entities; 
use App\Core\Entities\Entity; 
class DEV_ADD_TRANSLATE_COMBO_LST extends Entity{
	public $id;
	public $type_code;
	public $type_name;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

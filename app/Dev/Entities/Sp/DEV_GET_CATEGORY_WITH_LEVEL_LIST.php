<?php 
//This is dev automatic generate 
 namespace App\Dev\Entities; 
use App\Core\Entities\Entity; 
class DEV_GET_CATEGORY_WITH_LEVEL_LIST extends Entity{
	public $id;
	public $name;
	public $level_value;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

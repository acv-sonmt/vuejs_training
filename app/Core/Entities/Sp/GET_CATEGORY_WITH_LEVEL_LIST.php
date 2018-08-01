<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class GET_CATEGORY_WITH_LEVEL_LIST extends Entity{
	public $id;
	public $name;
	public $level_value;
	public $lft;
	public $rgt;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

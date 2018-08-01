<?php 
//This is dev automatic generate 
 namespace App\Api\Entities; 
use App\Core\Entities\Entity; 
class API_GET_CATEGORY_LST extends Entity{
	public $id;
	public $name;
	public $level_value;
	public $parent;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

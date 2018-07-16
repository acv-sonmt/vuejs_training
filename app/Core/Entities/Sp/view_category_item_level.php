<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class view_category_item_level extends Entity{
	public $id;
	public $name;
	public $lft;
	public $rgt;
	public $level_value;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

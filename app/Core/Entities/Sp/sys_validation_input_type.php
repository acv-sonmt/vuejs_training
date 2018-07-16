<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class sys_validation_input_type extends Entity{
	public $id;
	public $type_code;
	public $type_name;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

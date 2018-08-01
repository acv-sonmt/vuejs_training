<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class sys_roles extends Entity{
	public $id;
	public $name;
	public $role_value;
	public $description;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

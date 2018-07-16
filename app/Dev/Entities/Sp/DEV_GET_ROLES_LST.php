<?php 
//This is dev automatic generate 
 namespace App\Dev\Entities; 
use App\Core\Entities\Entity; 
class DEV_GET_ROLES_LST extends Entity{
	public $id;
	public $name;
	public $role_value;
	public $description;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

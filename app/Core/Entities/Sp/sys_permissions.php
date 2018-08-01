<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class sys_permissions extends Entity{
	public $id;
	public $permission_value;
	public $permission_name;
	public $descriptions;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

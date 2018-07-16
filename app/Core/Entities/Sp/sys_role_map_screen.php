<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class sys_role_map_screen extends Entity{
	public $id;
	public $role_value;
	public $screen_id;
	public $is_active;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

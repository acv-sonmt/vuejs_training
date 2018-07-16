<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class aa extends Entity{
	public $id;
	public $email;
	public $password;
	public $role_value;
	public $remember_token;
	public $is_active;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class users extends Entity{
	public $id;
	public $email;
	public $password;
	public $role_value;
	public $name;
	public $remember_token;
	public $created_at;
	public $updated_at;
	public $is_active;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

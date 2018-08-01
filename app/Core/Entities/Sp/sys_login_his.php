<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class sys_login_his extends Entity{
	public $id;
	public $user_id;
	public $token_code;
	public $loged_at;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class users_detail extends Entity{
	public $user_id;
	public $gender;
	public $birth_date;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

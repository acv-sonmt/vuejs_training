<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class oauth_clients extends Entity{
	public $id;
	public $user_id;
	public $name;
	public $secret;
	public $redirect;
	public $personal_access_client;
	public $password_client;
	public $revoked;
	public $created_at;
	public $updated_at;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

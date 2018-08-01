<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class oauth_auth_codes extends Entity{
	public $id;
	public $user_id;
	public $client_id;
	public $scopes;
	public $revoked;
	public $expires_at;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

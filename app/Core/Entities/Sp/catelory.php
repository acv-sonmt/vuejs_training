<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class catelory extends Entity{
	public $id;
	public $name;
	public $lft;
	public $rgt;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

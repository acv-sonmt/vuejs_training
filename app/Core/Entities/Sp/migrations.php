<?php 
//This is dev automatic generate 
 namespace App\Core\Entities; 
use App\Core\Entities\Entity; 
class migrations extends Entity{
	public $id;
	public $migration;
	public $batch;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

<?php 
//This is dev automatic generate 
 namespace App\Dev\Entities; 
use App\Core\Entities\Entity; 
class DEV_GET_PARAM_OF_SPS_LST extends Entity{
	public $SPECIFIC_CATALOG;
	public $SPECIFIC_SCHEMA;
	public $SPECIFIC_NAME;
	public $ORDINAL_POSITION;
	public $PARAMETER_MODE;
	public $PARAMETER_NAME;
	public $DATA_TYPE;
	public $CHARACTER_MAXIMUM_LENGTH;
	public $CHARACTER_OCTET_LENGTH;
	public $NUMERIC_PRECISION;
	public $NUMERIC_SCALE;
	public $DATETIME_PRECISION;
	public $CHARACTER_SET_NAME;
	public $COLLATION_NAME;
	public $DTD_IDENTIFIER;
	public $ROUTINE_TYPE;
	public  function __construct($object){
		 parent::__construct($object);
	}
} 

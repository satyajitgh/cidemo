<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/* Author: Jorge Torres
* Description: Login model class
*/
class Demomodel extends CI_Model
{  
	var $category_table = 'demo_category';
	function __construct(){
	    parent::__construct();      
	}
	function getAllCategories($format=1)
	{
		$this->db->where("status",1);	
		$this->db->where("parent_cat_id", 0);
		$rs = $this->db->get($this->category_table);
  		$list = $rs->result_array();
  		$dc=array();
  		foreach ($list as $k => $d) {  				
  			$dc[$k]=$d;
  			$sub_cat=$this->getCategories($d['id']);
  			if(count($sub_cat)>0)
  			{
  				$dc[$k]['child']=$sub_cat;
  			}
  		}	
   		return json_encode($dc);			
	}//end of function 
	function getCategories($cat_id)
	{
		$this->db->select('*');
		$this->db->from('demo_category');
		$this->db->where("demo_category.parent_cat_id",$cat_id);	
		$this->db->where("status",1);	
		$this->db->order_by("id", "asc");
		$rs = $this->db->get();
  		$list = $rs->result_array();
  		return (is_array($list)?$list:array());			
	}//end of function 
	function getDemos($cat_id)
	{
		echo $cat_id;
		echo "SELECT * FROM demo_listing WHERE categories = $cat_id";
		// pr($cat_id);
		// die();
		// $this->db->select('*');
		// $this->db->from('demo_listing');
		// $this->db->where_in("categories",$cat_id);	
		// $this->db->order_by("id", "desc");

		$query = $this->db->query("SELECT * FROM demo_listing WHERE categories = $cat_id");
		// $rs = $this->db->get();
  // 		$list = $rs->result_array();
		$list = $query->result();
		$list = json_decode(json_encode($list), true); 
  		return (is_array($list)?$list:array());			
	}//end of function 
	function getDemo($demo_id)
	{
		$this->db->select('*');
		$this->db->from('demo_listing');
		$this->db->where("id",$demo_id);	
		$this->db->order_by("id", "desc");
		$rs = $this->db->get();
  		$list = $rs->result_array();
  		return (is_array($list)?$list:array());			
	}//end of function 
   	
}
?>
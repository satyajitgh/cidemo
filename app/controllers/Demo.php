<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Demo extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Demomodel');	
	}
	public function index()
	{
		$demo_cats=$this->Demomodel->getAllCategories();
		$demo_cat_arr=json_decode($demo_cats);
		$dc=array();
		$page=array();
		if($this->input->post())
		{
			$posts=$this->input->post();
			$page['cat_name']=$posts['cat_name'];			
			$page['cat_id']=$posts['cat_id'];			
		}
		else
		{
			$page['cat_name']=$demo_cat_arr[0]->name;
			$page['cat_id']=$demo_cat_arr[0]->id;
		}
		$page['demos']=$this->Demomodel->getDemos($page['cat_id']);
		$page["layout_content"]=$this->load->view('pages/demo_listing',$page,true);
		$this->load->view('main_display',$page);
	}//end of function
	public function showdemo()
	{
		$page=array();
		if($this->input->post())
		{
			$demo_id=$this->input->post('demo_id');
			$demo=$this->Demomodel->getDemo($demo_id);
			$page['demo_url']=$demo[0]['demo_link'];
		}
		$this->load->view('full_display',$page);
	}//end of function
}

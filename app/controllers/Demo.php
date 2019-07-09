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
		}
		//$page["layout_content"]=$this->load->view('pages/addfeed',$data['pc'],true)
		$this->load->view('main_display',$page);
	}
}

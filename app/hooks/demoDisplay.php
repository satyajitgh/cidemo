<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class demoDisplay {

	function header()
	{
		/*$CI =& get_instance();
		
		$buffer = $CI->output->get_output();
	 
		 $search = array('__HEADER__');
	 
		 $replace = $CI->load->view('elements/header','',true);
	 
		$buffer = preg_replace($search, $replace, $buffer);
	 
		$CI->output->set_output($buffer);
		$CI->output->_display();*/
	}
	
	function footer()
	{
		/*$CI =& get_instance();
		$buffer = $CI->output->get_output();
	 
		 $search = array('__FOOTER__');
	 
		 $replace = $CI->load->view('elements/footer','',true);
	 
		$buffer = preg_replace($search, $replace, $buffer);
	 
		$CI->output->set_output($buffer);
		$CI->output->_display();*/
	}
	
	function commonDisplay()
	{		
		$CI =& get_instance();
		$buffer = $CI->output->get_output();		
	 
		 $search = array(		
			'{__SIDEBAR__}',			// Set Common SIDEBAR,
			'{__HEADER__}',			// Set Common HEADER,
			'{__FOOTER__}',			// Set Common FOOTER,
			'{__PAGE_TITLE__}',			// Page Title,				
		  );
	 	$od = $CI->session->userdata('operator_details');
	 	$ud = $CI->session->userdata('userdetails');
	 	$cr = $CI->session->userdata('CurrRestaurents');
		$data['userdetails'] = $ud;
		$data['operator_details'] = $od;
		
		$data=array();
		$title="Demo Listing";
		$data['categories']=json_decode($CI->Demomodel->getAllCategories());


		$replace = array(			
			$CI->load->view('layouts/sidebar',$data,true),				
			$CI->load->view('layouts/header',$data,true),				
			$CI->load->view('layouts/footer',$data,true),				
			$title				
		);

		$buffer = preg_replace($search, $replace, $buffer);
	 	
		$CI->output->set_output($buffer);
		$CI->output->_display();
	}
	
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
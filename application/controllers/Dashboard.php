<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends Base_Controller {
	
	/**
     * Dashboard
     *
     * @access  public
     * @param   
     * @return  view
     */
	
	public function index()
	{
		$this->data['title'] = 'Dashboard';
		$this->data['subview'] = 'dashboard/main';
		$this->load->view('components/main', $this->data);
	}
}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	function __construct() 
	{
	   	parent::__construct();
	   	$this->load->model('User_model');
	}

	function index()
    {
        $data['_view'] = 'user/index';
        $this->load->view('layouts/main',$data);
    }
}

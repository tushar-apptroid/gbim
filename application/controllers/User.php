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


    function api_test()
    {
    	$data['_view'] = 'user/api_test';
        $this->load->view('layouts/main',$data);
    }


    function getApiData()
    {
        $postData = $this->input->post();
 
        $response = $this->User_model->get_api_data($postData);
    	  echo json_encode($response);
    }

    function saveApiData()
    {
        $api_data = commanCurlRequest(SErankking_API."sites","GET");
        $data = json_decode($api_data);
        foreach ($data as $value) 
        {
            $this->User_model->saveApiData($value);    
        }
    }

 //    usort($myArray, function($a, $b) {
	//     return $a['order'] <=> $b['order'];
	// });
}

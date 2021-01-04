<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class Api extends REST_Controller {

	function __construct() 
	{
	   	parent::__construct();
	   	// $this->output->enable_profiler(TRUE);
	   	$this->load->model('User_model');
	}

	function getToken_get()
	{
		$token = $this->authorization_token->generateToken();
		$this->response($token, REST_Controller::HTTP_OK);
	}

	function getUser_get($id = 0)
	{
		$is_validate = $this->authorization_token->validateToken();
		if($is_validate['status'])
		{
	        $data = $this->User_model->getUser($id);
			$this->response($data, REST_Controller::HTTP_OK);
		}
		else
		{
			$this->response($is_validate['message'], REST_Controller::HTTP_OK); 
		}
	}

	function getUsers_post()
	{
		$is_validate = $this->authorization_token->validateToken();
		if($is_validate['status'])
		{
			$filter = $this->input->post();
			// pr($filter);exit;
	        $data = $this->User_model->getAllUser($filter);
	        // $response = array("data" => $data);
			$this->response($data, REST_Controller::HTTP_OK);
		}
		else
		{
			$this->response($is_validate['message'], REST_Controller::HTTP_OK); 
		}
	}

	function addUser_post()
	{
		$is_validate = $this->authorization_token->validateToken();
		if($is_validate['status'])
		{
			$this->form_validation->set_rules('first_name', 'First Name', 'trim|required');
			$this->form_validation->set_rules('last_name', 'Last Name', 'trim|required');
			$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[users.email]');
			$this->form_validation->set_rules('password', 'Password', 'trim|required');
			$this->form_validation->set_rules('phone_number', 'Phone Number', 'trim|required|callback_valid_phone_number');
			$this->form_validation->set_rules('role_type', 'Role Type', 'trim|required|in_list[admin,project_manager,task_manager,client]');
			
			if ($this->form_validation->run())
			{
				$data = $this->input->post();	
				$data['created_on'] = date("Y-m-d H:i:s");

				$this->User_model->addUser($data);
				$messages['status'] = TRUE;
				$messages['msg'] = 'User created successfully.';

				$this->response($messages, REST_Controller::HTTP_OK);
			}
			else 
			{
				$messages['status'] = FALSE;
				$messages['msg'] = $this->validation_errors();
				$this->response($messages, REST_Controller::HTTP_OK);
			}
		}
		else
		{
			$this->response($is_validate['message'], REST_Controller::HTTP_OK); 
		}
	}

	// function saveUser_put($id) No use beacuse ci form validation not work with put 
	function saveUser_post($user_id)
	{
		$is_validate = $this->authorization_token->validateToken();
		if($is_validate['status'])
		{
			$user_data = $this->User_model->getUser($user_id);
			if(!empty($user_data))
			{
				$this->form_validation->set_rules('first_name', 'First Name', 'trim|required');
				$this->form_validation->set_rules('last_name', 'Last Name', 'trim|required');
				
				if($user_data['email'] != $this->input->post('email'))
				{
					$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[users.email]');
				}

				$this->form_validation->set_rules('password', 'Password', 'trim|required');
				$this->form_validation->set_rules('phone_number', 'Phone Number', 'trim|required|callback_valid_phone_number');
				$this->form_validation->set_rules('role_type', 'Role Type', 'trim|required|in_list[admin,project_manager,task_manager,client]');

				if ($this->form_validation->run())
				{
					$data = $this->input->post();	
					$data['updated_on'] = date("Y-m-d H:i:s");

					$this->User_model->saveUser($user_id,$data);
					$messages['status'] = TRUE;
					$messages['msg'] = 'User saved successfully.';

					$this->response($messages, REST_Controller::HTTP_OK);
				}
				else 
				{

					$messages['status'] = FALSE;
					$messages['msg'] = $this->validation_errors();
					$this->response($messages, REST_Controller::HTTP_OK);
				}
			}
			else
			{
				$this->response(['Invalid User'], REST_Controller::HTTP_OK); 
			}
		}
		else
		{
			$this->response($is_validate['message'], REST_Controller::HTTP_OK); 
		}
	}

	function deleteUser_delete($user_id)
	{
		$is_validate = $this->authorization_token->validateToken();
		if($is_validate['status'])
		{
			$user_data = $this->User_model->getUser($user_id);
			if(!empty($user_data))
			{
				$this->User_model->deleteUser($user_id);
				$this->response(['User deleted successfully.'], REST_Controller::HTTP_OK);
			}
			else
			{
				$this->response(['Invalid User'], REST_Controller::HTTP_OK);
			}
		}
		else
		{
			$this->response($is_validate['message'], REST_Controller::HTTP_OK); 
		}
	}

	function valid_phone_number($value)
	{
	    $value = trim($value);
	    if ($value == '') {
	        return TRUE;
	    }
	    else
	    {
	        if (preg_match('/^\(?[0-9]{3}\)?[-. ]?[0-9]{3}[-. ]?[0-9]{4}$/', $value))
	        {
	            return preg_replace('/^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/', '$1$2$3', $value);
	        }
	        else
	        {
	        	$this->form_validation->set_message('valid_phone_number', 'Invalid phone number format.');
	            return FALSE;
	        }
	    }
	}
}

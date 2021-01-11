<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {

	function getAllUser($filter)
	{
		$where = array();
		$sql = "SELECT
					*
				FROM
					users u
				";

		$search = $filter['search'];
	    if(!empty($search)){
	        $or_search = array();
	        $or_search[] = "u.first_name like '%".$search."%'";
	        $or_search[] = "u.last_name like  '%".$search."%'";
	        $or_search[] = "u.email like '%".$search."%'";
	        $or_search[] = "u.phone_number like '%".$search."%'";
	        $where[] = 	count($or_search)>0 ?  "(".implode (" OR ",$or_search)." ) " : ""; 
	    }

	    if(!empty($filter['role_type']))
	    {
	    	$where[] = " u.role_type = '".$filter['role_type']."'";
	    }

	    $sql .= count($where)>0 ? " WHERE ".implode (" AND ",$where) : "";

	    // if($filter)
		return $this->db->query($sql)->result_array();
	}

	function getUser($id)
	{
		$sql = "SELECT
					*
				FROM
					users
				WHERE
					id = ".$id."
				";
		return $this->db->query($sql)->row_array();	
	}

	function addUser($data)
	{
		$this->db->insert('users',$data);
		return $this->db->insert_id();
	}

	function saveUser($user_id,$data)
	{
		return $this->db->update('users', $data, array('id'=>$user_id));
	}

	function deleteUser($user_id)
	{
		return $this->db->delete('users', array('id'=>$user_id));
	}

	function saveApiData($data)
	{
		$sql = "
				SELECT
					*
				FROM
					api_data
				WHERE
					api_id = '".$data->id."'";
		$save_data = $this->db->query($sql)->row_array();
		if(empty($save_data))
		{
			$insert_data = array();
			$insert_data['api_id'] = $data->id;
			$insert_data['title'] = $data->title;
			$insert_data['name'] = $data->name;
			$insert_data['group_id'] = $data->group_id;
			$insert_data['is_active'] = $data->is_active;
			$insert_data['exact_url'] = $data->exact_url;
			$insert_data['subdomain_match'] = $data->subdomain_match;
			$insert_data['depth'] = $data->depth;
			$insert_data['check_freq'] = $data->check_freq;
			$insert_data['check_day'] = $data->check_day;
			$insert_data['guest_link'] = $data->guest_link;
			$insert_data['created_on'] = date("Y-m-d H:i:s");
			return $this->db->insert('api_data', $insert_data);
		}
	}

	function get_api_data($postData=null)
	{

	    $response = array();

	     $draw = $postData['draw'];
	     $start = $postData['start'];
	     $rowperpage = $postData['length']; // Rows display per page
	     $columnIndex = $postData['order'][0]['column']; // Column index
	     $columnName = $postData['columns'][$columnIndex]['data']; // Column name
	     $columnSortOrder = $postData['order'][0]['dir']; // asc or desc
	     $searchValue = $postData['search']['value']; // Search value

 		
	     // $search_arr = array();
	     // $searchQuery = "";
	     // if($searchValue != '')
	     // {
	     //     $search_arr[] = " (api_data.api_id like '%".$searchValue."%' or 
	     //         api_data.title like '%".$searchValue."%' or 
	     //         api_data.name like '%".$searchValue."%' or 
	     //         api_data.group_id like '%".$searchValue."%' or 
	     //         api_data.check_day like '%".$searchValue."%' or 
	     //         api_data.exact_url like '%".$searchValue."%' or 
	     //         api_data.guest_link like '%".$searchValue."%' or 
	     //         api_data.created_on like '%".$searchValue."%' ) ";
	     // }


	     // if(count($search_arr) > 0){
	     //     $searchQuery = implode(" and ",$search_arr);
	     // }

	     $this->db->select('count(*) as allcount');
	     $this->db->from('api_data');
	     
	     $records = $this->db->get()->result();
	     $totalRecords = $records[0]->allcount;

	     // $this->db->select('count(*) as allcount');
	     // if($searchQuery != '')
	     //     $this->db->where($searchQuery);
	     //     $this->db->from('api_data');
	         
	     //     $records = $this->db->get()->result();
	     //     $totalRecordwithFilter = $records[0]->allcount;

	     //     $this->db->select('api_data.*');
	     // if($searchQuery != '')
	     //     $this->db->where($searchQuery);
	     //     $this->db->order_by($columnName, $columnSortOrder);
	         
	     //     $this->db->limit($rowperpage, $start);
	     //     $this->db->from('api_data');
	         
	     // $records = $this->db->get()->result();

	     // $data = array();

	     // foreach($records as $record ){
	     //     $data[] = array( 
	     //         "api_id"=>$record->api_id,
	     //         "title"=>$record->title,
	     //         "name"=>$record->name,
	     //         "group_id"=>$record->group_id,
	     //         "is_active"=>$record->is_active,
	     //         "exact_url"=>$record->exact_url,
	     //         "subdomain_match"=>$record->subdomain_match,
	     //         "depth"=>$record->depth,
	     //         "check_freq"=>$record->check_freq,
	     //         "check_day"=>$record->check_day,
	     //         "guest_link"=>$record->guest_link,
	     //         "created_on"=>$record->created_on,
	     //     ); 
	     // }

	    $sql = "
	    	SELECT
	    		*
	    	FROM
	    		api_data
	    ORDER BY
    		DATE(created_on)=DATE(CURRENT_TIMESTAMP) DESC,
    		DATE(created_on)<DATE(CURRENT_TIMESTAMP) ASC,
    		DATE(created_on)>DATE(CURRENT_TIMESTAMP) DESC";
    		$records = $this->db->query($sql)->result();
    	foreach($records as $record ){
	         $data[] = array( 
	             "api_id"=>$record->api_id,
	             "title"=>$record->title,
	             "name"=>$record->name,
	             "group_id"=>$record->group_id,
	             "is_active"=>$record->is_active,
	             "exact_url"=>$record->exact_url,
	             "subdomain_match"=>$record->subdomain_match,
	             "depth"=>$record->depth,
	             "check_freq"=>$record->check_freq,
	             "check_day"=>$record->check_day,
	             "guest_link"=>$record->guest_link,
	             "created_on"=>$record->created_on,
	         ); 
	     }
	     $response = array(
	         "draw" => intval($draw),
	         "iTotalRecords" => $totalRecords,
	         "iTotalDisplayRecords" => $totalRecords,
	         "aaData" => $data
	     );
// pr($response);exit;
	     return $response; 
	}

}
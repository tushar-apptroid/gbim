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
	        $or_search[] = $db->nameQuote('u.first_name')." like  ".$db->quote('%'.$search.'%');
	        $or_search[] = $db->nameQuote('u.last_name')." like  ".$db->quote('%'.$search.'%');
	        $or_search[] = $db->nameQuote('u.email')." like  ".$db->quote('%'.$search.'%');
	        $or_search[] = $db->nameQuote('u.phone_number')." like  ".$db->quote('%'.$search.'%');
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
}

/* End of file User_model.php */
/* Location: ./application/models/User_model.php */
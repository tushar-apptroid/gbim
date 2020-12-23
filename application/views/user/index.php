<div class="pull-right" style="margin-top: 10px;">
	<button data-toggle="modal" data-target="#addUserModal" class="btn btn-success">Add</button> 
</div>
<div style="margin-top: 10px;">
	<form id="userList">
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-md-5">
				<input type="text" name="search" id="search" class="form-control" placeholder="search">
			</div>
			<div class="col-md-5">
				<select name="role_type" id="role_type" class="form-control">
					<option value = "">Select Role Type</option>
					<option value = "admin">Admin</option>
					<option value = "project_manager">Project Manager</option>
					<option value = "task_manager">Task Manager</option>
					<option value = "client">Client</option>
				</select>
			</div>
		</div>	
		<table class="table table-striped table-bordered" id= "users_table">
		    <tr>
				<th>Sr</th>
				<th>Name</th>
				<th>Email</th>
				<th>Phone Number</th>
				<th>Role</th>
				<th>Actions</th>
		    </tr>
		    <tbody id="list-list"></tbody>
		</table>\
	</form>
</div>

<?php
	$this->load->view('user/_user_add_modal');
?>

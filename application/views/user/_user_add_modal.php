<div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" data-user_id = "0" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h5 class="modal-title" id="exampleModalLabel">Add User</h5>
                <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span> -->
                <!-- </button> -->
            </div>
            <div class="modal-body">
            	<div class="row">
						<div class="col-md-12 validation-errors"></div>
				</div>
	            <form id="addUserform" method="post">
	                <div class="form-group">
	                    <label for="first_name" class="col-md-4 control-label">First Name</label>
	                    <div class="col-md-8">
	                        <input type="text" name="first_name" value="<?php echo $this->input->post('first_name'); ?>" class="form-control" id="first_name" />
	                    </div>
	                </div>
	                <div class="form-group">
	                    <label for="last_name" class="col-md-4 control-label">Last Name</label>
	                    <div class="col-md-8">
	                        <input type="text" name="last_name" value="<?php echo $this->input->post('last_name'); ?>" class="form-control" id="last_name" />
	                    </div>
	                </div>
	                <div class="form-group">
	                    <label for="email" class="col-md-4 control-label">Email</label>
	                    <div class="col-md-8">
	                        <input type="text" name="email" value="<?php echo $this->input->post('email'); ?>" class="form-control" id="email" />
	                        <span class="text-danger"><?php echo form_error('email');?></span>
	                    </div>
	                </div>
	                <div class="form-group">
	                    <label for="password" class="col-md-4 control-label">Password</label>
	                    <div class="col-md-8">
	                        <input type="password" name="password" value="<?php echo $this->input->post('password'); ?>" class="form-control" id="password" />
	                    </div>
	                </div>
	                <div class="form-group">
	                    <label for="phone_number" class="col-md-4 control-label">Phone Number</label>
	                    <div class="col-md-8">
	                        <input type="text" name="phone_number" value="<?php echo $this->input->post('phone_number'); ?>" class="form-control" id="phone_number" />
	                    </div>
	                </div>
	                <div class="form-group">
	                    <label for="role_type" class="col-md-4 control-label">Role Type</label>
	                    <div class="col-md-8">
	                       <select name="role_type" id="role_type"  class="form-control">
	                       		<option value = "">Select Role Type</option>
	                       		<option value = "admin">Admin</option>
	                       		<option value = "project_manager">Project Manager</option>
	                       		<option value = "task_manager">Task Manager</option>
	                       		<option value = "client">Client</option>
	                       	</select>
	                    </div>
	                </div>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	                <button type="button" class="btn btn-primary" id="adduser">Save</button>
	            </div>
            </form>
        </div>
    </div>
</div>
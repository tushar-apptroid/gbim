<?php echo form_open('user/edit/'.$user['id'],array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="password" class="col-md-4 control-label">Password</label>
		<div class="col-md-8">
			<input type="text" name="password" value="<?php echo ($this->input->post('password') ? $this->input->post('password') : $user['password']); ?>" class="form-control" id="password" />
		</div>
	</div>
	<div class="form-group">
		<label for="first_name" class="col-md-4 control-label">First Name</label>
		<div class="col-md-8">
			<input type="text" name="first_name" value="<?php echo ($this->input->post('first_name') ? $this->input->post('first_name') : $user['first_name']); ?>" class="form-control" id="first_name" />
		</div>
	</div>
	<div class="form-group">
		<label for="last_name" class="col-md-4 control-label">Last Name</label>
		<div class="col-md-8">
			<input type="text" name="last_name" value="<?php echo ($this->input->post('last_name') ? $this->input->post('last_name') : $user['last_name']); ?>" class="form-control" id="last_name" />
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-md-4 control-label">Email</label>
		<div class="col-md-8">
			<input type="text" name="email" value="<?php echo ($this->input->post('email') ? $this->input->post('email') : $user['email']); ?>" class="form-control" id="email" />
			<span class="text-danger"><?php echo form_error('email');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="phone_number" class="col-md-4 control-label">Phone Number</label>
		<div class="col-md-8">
			<input type="text" name="phone_number" value="<?php echo ($this->input->post('phone_number') ? $this->input->post('phone_number') : $user['phone_number']); ?>" class="form-control" id="phone_number" />
		</div>
	</div>
	<div class="form-group">
		<label for="role_type" class="col-md-4 control-label">Role Type</label>
		<div class="col-md-8">
			<input type="text" name="role_type" value="<?php echo ($this->input->post('role_type') ? $this->input->post('role_type') : $user['role_type']); ?>" class="form-control" id="role_type" />
		</div>
	</div>
	<div class="form-group">
		<label for="created_on" class="col-md-4 control-label">Created On</label>
		<div class="col-md-8">
			<input type="text" name="created_on" value="<?php echo ($this->input->post('created_on') ? $this->input->post('created_on') : $user['created_on']); ?>" class="form-control" id="created_on" />
		</div>
	</div>
	<div class="form-group">
		<label for="updated_on" class="col-md-4 control-label">Updated On</label>
		<div class="col-md-8">
			<input type="text" name="updated_on" value="<?php echo ($this->input->post('updated_on') ? $this->input->post('updated_on') : $user['updated_on']); ?>" class="form-control" id="updated_on" />
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Save</button>
        </div>
	</div>
	
<?php echo form_close(); ?>
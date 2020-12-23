$(document).ready( function () 
{
 	getusers(); 
 	$(document).on("click","#adduser",function()
 	{
 		var user_id = $('#addUserModal').attr('data-user_id');
 		alert(user_id);
		if(user_id == "" || user_id == undefined)
		{
			$.ajax({
		    	url: GLOBALS.base_url+'api/adduser',
		    	type: 'POST',
		    	dataType: 'json',
		    	data:$("#addUserform").serializeArray(),
		    	beforeSend: function(xhr){xhr.setRequestHeader('Authorization', GLOBALS.key);},
		    	success:function(response)
		    	{
		    		if(response.status)
		    		{
		    			$('#addUserModal').find('.modal-body .validation-errors').html('');
		    			alert(response.msg);
		    			location.reload();
		    		}
		    		else
		    		{
		    			response.msg = response.msg[0].replace('/\n/g', "<br>");
		    			$('#addUserModal').find('.modal-body .validation-errors').html(response.msg);	
		    		}
		    	},
		    });
		}
		else
		{
			$.ajax({
		    	url: GLOBALS.base_url+'api/saveuser/'+user_id,
		    	type: 'POST',
		    	dataType: 'json',
		    	data:$("#addUserform").serializeArray(),
		    	beforeSend: function(xhr){xhr.setRequestHeader('Authorization', GLOBALS.key);},
		    	success:function(response)
		    	{
		    		if(response.status)
		    		{
		    			$('#addUserModal').find('.modal-body .validation-errors').html('');
		    			alert(response.msg);
		    			location.reload();
		    		}
		    		else
		    		{
		    			response.msg = response.msg[0].replace('/\n/g', "<br>");
		    			$('#addUserModal').find('.modal-body .validation-errors').html(response.msg);	
		    		}
		    	},
		    });
		}
 	});

 	$('#addUserModal').on('hidden.bs.modal', function() {
		$('#addUserModal form[id=addUserform]')[0].reset();
		$('#addUserModal .validation-errors').html('');
		$('#addUserModal .modal-header').text('Add User');
	});

	$(document).on("click",".delete_user",function(){
		var user_id = $(this).attr('data-user_id');
		// alert(user_id);
		$.ajax({
		    url: GLOBALS.base_url+'api/deleteUser/'+user_id,
		    type: 'DELETE',
		    beforeSend: function(xhr){xhr.setRequestHeader('Authorization', GLOBALS.key);},
		    success: function(response) 
		    {
		    	alert(response);
		    	location.reload();   
		    }
		});
	});

	$(document).on("click",".edit_user",function(){
		var user_id = $(this).attr('data-user_id');
		// alert(user_id);
		$.ajax({
		    url: GLOBALS.base_url+'api/getUser/'+user_id,
		    type: 'GET',
		    beforeSend: function(xhr){xhr.setRequestHeader('Authorization', GLOBALS.key);},
		    success: function(response) 
		    {
		    	$('#addUserModal .modal-header').text('Save User');
		    	$('#addUserModal #first_name').val(response.first_name);
		    	$('#addUserModal #last_name').val(response.last_name);
		    	$('#addUserModal #email').val(response.email);
		    	$('#addUserModal #password').val(response.password);
		    	$('#addUserModal #phone_number').val(response.phone_number);
		    	$('#addUserModal #role_type').val(response.role_type);
		    	$('#addUserModal').attr("data-user_id",user_id);
		    	$('#addUserModal').modal('show');  
		    }
		});
	});

	$(document).on("keyup","#search",function()
	{
		getusers()
	});

	$(document).on("change","#role_type",function(){
		getusers();
	});
});


function getusers() 
{
	var data = $('#userList').serialize();
	$.ajax({
    	url: GLOBALS.base_url+'api/getUsers',
    	type: 'POST',
    	dataType: 'json',
    	data:data,
    	beforeSend: function(xhr){xhr.setRequestHeader('Authorization', GLOBALS.key);},
    	success:function(data)
    	{
    		$("#list-list").html('');
			let daftar = data;
	        var html = '';
    		if(jQuery.isEmptyObject(data))
    		{
		        html += `<tr>
		                        <td colspan ="6" style="text-align:center"> No records found </td>
		                    </tr>`;

		        //This is selector of my <tbody> in my table
		        $("#list-list").html(html);
    		}
    		else
    		{
	    		let daftar = data;
	            var html = '';
	            $.each(daftar, function (i, data) {
	                html += `<tr>
	                                <td> ` + (i+1) + `</td>
	                                <td>` + data.first_name +` `+data.last_name + `</td>
	                                <td>` + data.email + `</td>
	                                <td> ` + data.phone_number + ` </td>
	                                <td> ` + data.role_type + ` </td>
	                                <td><button type="button" class="btn btn-info btn-xs edit_user" data-user_id="`+data.id+`">Edit</button> 
	            						<button type="button" class="btn btn-danger btn-xs delete_user" data-user_id="`+data.id+`">Delete</button>
	        						</td>
	                            </tr>`;

	                //This is selector of my <tbody> in my table
	                $("#list-list").html(html);
	            });
	        }
    	}
    });
}


    <table id="tableSwapi" class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
        		<th>Password</th>
        		<th>First Name</th>
        		<th>Last Name</th>
        		<th>Email</th>
        		<th>Phone Number</th>
        		<th>Role Type</th>
        		<th>Created On</th>
        		<th>Updated On</th>
        		<!-- <th>Actions</th> -->
            </tr>
        </thead>
        <tbody id="list-list"></tbody>
    </table>    
    <script>
        $(document).ready(function () {
            $("#tableSwapi").dataTable();
            $.ajax({
                url: GLOBALS.base_url+'api/getUser',
                type: 'get',
                dataType: 'json',
                beforeSend: function(xhr){xhr.setRequestHeader('Authorization', GLOBALS.key);},
                success: function (result) 
                {
                    let daftar = result;
                    var html = '';
                    $.each(daftar, function (i, data) {
                        html += `<tr>
                                        <td> ` + data.id + `</td>
                                        <td> ` + data.password + `</td>
                                        <td>` + data.first_name + `</td>
                                        <td>` + data.last_name + `</td>
                                        <td>` + data.email + `</td>
                                        <td> ` + data.phone_number + ` </td>
                                        <td> ` + data.role_type + ` </td>
                                        <td>` + data.created_on + `</td>
                                        <td> ` + data.updated_on + `</td>
                                    </tr>`;

                        //This is selector of my <tbody> in my table
                        $("#list-list").html(html);
                    });
                }
            });
        });
    </script>

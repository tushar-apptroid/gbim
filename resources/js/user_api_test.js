
$(document).ready(function(){

       var userDataTable = $('#example1').DataTable({
         'processing': true,
         'serverSide': true,
         'serverMethod': 'post',
         'searching': false,
         'paging': false, 
         'info': false,
         "order": [[ 9, "desc" ]],
         'ajax': {
            'url': GLOBALS.base_url+'user/getApiData',
            'data': function(data)
            {
               // data.search_std_id = $('#standard_id').val();
               // data.search_from_date = $('#from_date').val();
               // data.search_to_date = $('#to_date').val();
               // data.search_input = $('#search_input').val();
            }
         },
         'columns': [
            // { data: 'id' },
            { data: 'title' },
            { data: 'name' },
            { data: 'group_id' },
            { data: 'is_active' },
            { data: 'exact_url' },
            { data: 'subdomain_match' },
            { data: 'depth' },
            { data: 'check_freq' },
            { data: 'check_day' },
            { data: 'created_on' },

         ]
       });

       $('#standard_id,#from_date,#to_date').change(function(){
          userDataTable.draw();
       });
});
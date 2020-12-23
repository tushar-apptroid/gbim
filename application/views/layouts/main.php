<!DOCTYPE html>
<html>

	<head>
		<title></title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

	    <!-- CSS styles -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
	    <!-- JS Libs -->
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.js" type="text/javascript"></script>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
		
		  
		<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>

		<script>
		    GLOBALS = {};
		    GLOBALS.base_url = "<?php echo base_url();?>";
		    GLOBALS.key = "<?php echo $this->authorization_token->generateToken();?>"
		</script>

		<?php
			$controller = $this->router->fetch_class();
			$action = $this->router->fetch_method();
			
			echo Assets::js("".$controller."_".$action.".js");
			echo Assets::css("".$controller."_".$action.".css");
		?>
	</head>

	<body>
		<div class="container">
			<div class="row">
				<?php	if(isset($_view) && $_view)
				    $this->load->view($_view);
				?>
			</div>
		</div>
	</body>
</html>

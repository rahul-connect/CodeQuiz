<?php
session_start();
if(isset($_SESSION['email'])){
	header("location:home.php");
	exit();
}
?>
<!DOCTYPE>
<html>
<head>
<title>Code Quiz</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<style>
body {
    background-image: url("steve.jpg");
	background-size: cover;
	background-position: center;
    background-repeat: no-repeat;
	height:auto;
}
</style>
</head>

<body>
<div class="container" style="margin-top:30px;">

  <div class="row">
       <div class="col-sm-12">
     <div class="panel panel-danger">
	    <div class="panel-heading"><h1 align="center">Welcome to online quiz system for Web Programming</h1></div>
	    
		</div>
	 </div>
	 
	 
  </div>
<?php
		if(isset($_GET['success'])){
			echo "<div class='alert alert-success fade in'>
			<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                  <strong style='text-transform: uppercase;font-family: COMIC SANS MS;'>Registraion Successful</strong>
               </div>
";
		}

		if(isset($_GET['fail'])){
			echo "<div class='alert alert-danger fade in'>
			<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                  <strong style='text-transform: uppercase;font-family: COMIC SANS MS;'>Username or Password Incorrect</strong>
               </div>
";
		}
		
		if(isset($_GET['exist'])){
			echo "<div class='alert alert-warning fade in'>
			<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                  <strong style='text-transform: uppercase;font-family: COMIC SANS MS;'>Email Address already Registered</strong>
               </div>
";
		}
		
	?>
</div>
	
<div class="container">
<div class="row">

  <div class="col-sm-6">
  
  <div class="panel panel-success">
      <div class="panel-heading"><h2>Login Form</h2></div>
        <div class="panel-body">	 
	 <form role="form" action="signin_sub.php" method="post">
	  <div class="form-group">
	      <label for="email">Email :</label>
		  <input type="email" class="form-control" name="e" id="email" placeholder="Enter Email..."> 
	  </div>
	  <div class="form-group">
	    <label for="pwd">Password:</label>
		<input type="password" class="form-control" name="p" id="pwd" placeholder="Enter password...">
	  </div>
	  <div class="form-group">
	  <button type="submit" class="btn btn-success">Submit</button>  
	  </div>
	  </form>
	  </div>
  </div>
  </div>
  
  <div class="col-sm-6">
  
  <div class="panel panel-primary">
      <div class="panel-heading"><h2>Signup Form</h2></div>
        <div class="panel-body">
	
   
   
	 <form role="form" method="post" enctype="multipart/form-data" action="signup_sub.php">
	 
	 <div class="form-group">
	    <label for="name">Full Name :</label>
		<input type="text" class="form-control" name="n" id="name" placeholder="Enter your Name..." required>
	 </div>
	  <div class="form-group">
	      <label for="email">Email :</label>
		  <input type="email" class="form-control" name="e" id="email" required placeholder="Enter Email..."> 
	  </div>
	  <div class="form-group">
	    <label for="pwd">Password:</label>
		<input type="password" class="form-control" name="p" id="pwd" required placeholder="Enter password...">
	  </div>
	  <div class="form-group">
	    <label for="file">Upload your Image (optional)</label>
		<input type="file" class="form-control" name="img" id="file">
	 </div>
	  <div class="form-group">
	  <button type="submit" class="btn btn-primary">Submit</button>  
	  </div>
	  </form>
	  </div>
  </div>
  </div>


</div>
</div>
</body>
</html>
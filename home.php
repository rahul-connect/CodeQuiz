<?php
include("class/users.php");
if(!isset($_SESSION['email'])){header("location:index.php");}
$email = $_SESSION['email'];
$profile = new users;
$profile->user_profile($email);
$profile->cat_show();
?>
<!DOCTYPE>
<html>
<head>
<title>Code Quiz</title>
<style>
body {
    background-image: url("wallp.jpg");
	background-size: cover;
	background-position: center;
    background-repeat: no-repeat;
	height:auto;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
<h2>Online Quiz in Web Programming</h2>
<ul class="nav nav-tabs">
   <li class="active"><a data-toggle="tab" href="#home">HOME</a></li>
   <li><a data-toggle="tab" href="#profile">Profile</a></li>
   
    <li style="" class="visible-lg visible-md"><a href=" http://app.appsgeyser.com/3730365/CodeQuiz" target="_blank"><span class="glyphicon glyphicon-download" id="app"></span> Download App</a></li>
    <li class="visible-xs"><a href=" http://app.appsgeyser.com/3730365/CodeQuiz" target="_blank" ><span class="glyphicon glyphicon-download"></span>App</a></li>
	<li style="float:right"><a href="logout.php">Logout</a></li>
    
</ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
       <center><h3>Home</h3></center>
    
	<div class="row">
	<div class="col-sm-4"></div>
	<div class="col-sm-4"><br>
	
	<form action="ques_show.php" method="post">

	
	<select class="form-control" id="" name="cat">
	   <option>Select a Category</option>
	   
	   <?php 
	  
	  foreach($profile->cat as $category){
		  
	  
	?>
	   <option value="<?php echo $category['id']; ?>"><?php echo $category['cat_name']; ?></option>
	  
	  <?php } ?>	  
	</select><br>
	<center><input type="submit" value="Start Quiz" class="btn btn-success"></center>

	</form>
	

	</div>
	<div class="col-sm-4"></div>
	</div>
  </div>
  
  <div id="profile" class="tab-pane fade">
  
  <div class="row">
  <div class="col-xs-0 col-lg-2"></div>
  <div class="col-xs-12 col-lg-8"><br>
    <center><h3>YOUR PROFILE</h3></center><br>
	<table class="table table-bordered table-responsive">
	  <?php
	     foreach($profile->data as $prof){
			 ?>
	   
	      <tr class="warning">
		     <th>User Id</th>
			 <td><?php echo $prof['id'] ?></td>
		 </tr>
		 <tr class="warning">
		     <th>Name</th>
			 <td><?php echo $prof['name'] ?></td>
	     </tr>
		 <tr class="warning"> 
		     <th>Email</th>
			 <td><?php echo $prof['email'] ?></td>
	     </tr>
		 <tr class="warning">
		     <th>Image</th>
			 <td>
			 <?php
			 
			 if($prof['img'] != ""){
				 $img = $prof['img'];
			     echo "<img src='img/$img' width='50px' height='50px'>";
			 }else{
				 echo "<b>Image not Uploaded</b>";
			 }
			 
			 ?>
			 </td>
		</tr>
		<tr class="warning">
		     <th>Quiz Solved</th>
			 <td><b><?php echo $prof['num_test'] ?></b></td>
			 
		</tr>
	    <tr class="danger">
		     <th>Last Score(%)</th>
			 <td><b><?php echo $prof['last_result'] ?></b></td>
		  </tr>
	   
	  <?php
		 }
	  ?>
	</table>
	<center><div id="delete"><a href="home.php?del=<?php echo $email ?>"><button class="btn btn-danger" style="color:white;"><b>Delete your Account</b></button></div></center>
 </div>
 <div class="col-xs-0 col-lg-2"></div>
  </div>
  
  </div>
  
  </div>  
  
  
</div>

</div>
<?php
if(isset($_GET['del'])){
	$del_email = $_GET['del'];
	$run = $profile->conn->query("delete from signup where email='$del_email'");
	if($run){
		session_destroy();
		header("location:index.php");
	}
	
}

?>

</body>
</html>


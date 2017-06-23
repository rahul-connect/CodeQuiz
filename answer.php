<?php
include("class/users.php");
$ans = new users;

$answer = $ans->answer($_POST);
if(isset($_GET['id'])){
	$update = $_GET['id'];
	$select = $ans->conn->query("select * from signup where email='$update'");
	$test = $select->fetch_array(MYSQLI_ASSOC);
	$number = $test['num_test'];
	$new = $number+1;
	$run = $ans->conn->query("update signup set num_test ='$new' where email='$update'");
	
}

?>
<html>
<head>
  <title>Progress Card</title>
  <style>
body {
    background-image: url("aple.png");
	background-size: cover;
	background-position: center;
    background-repeat: no-repeat;
	height:auto;
}
tr td{
	font-weight:bolder;
}
</style>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<!---
<center><h2>Right Answer <?php echo  $answer['right']; ?></h2></center>
<center><h2>Wrong Answer <?php echo  $answer['wrong']; ?></h2></center>
<center><h2>Not Attempt <?php echo  $answer['no_answer']; ?></h2></center>
--->
<?php
$total_qus = $answer['right']+$answer['wrong']+$answer['no_answer'];
$attempt_qus = $total_qus - $answer['no_answer'];
?>
<div class="container">
  <div class="col-sm-2"></div>
  <div class="col-sm-8">
   <center><h1 style="font-family:COMIC SANS MS">Your Quiz Results</h1><center><br><br>
   
   <table class="table table-bordered">
       <thead>
	   <tr>
	   <th><h2><b>Total Number of Questions</b></h2></th>
	   <th><h2><b><?php echo $total_qus; ?></b></h2></th>
	   </tr>
	   </thead>
	   
	   <tbody>
	       <tr>
		     <td>Attempted Questions</td>
		     <td><?php echo $attempt_qus ?></td>
		   </tr>
		   	  <tr>
		     <td>Correct Answer</td>
		     <td><?php echo $answer['right']; ?></td>
		   </tr>
		    <tr>
		     <td>Wrong Answer</td>
		     <td><?php echo $answer['wrong']; ?></td>
		   </tr>
		   
		    <tr>
		     <td>Not Attempted</td>
		     <td><?php echo $answer['no_answer']; ?></td>
		   </tr>
		   
		   <tr>
		     <td><b>Your Result</b></td>
		     <td><?php 
   
				$per = ($answer['right']*100)/($total_qus);			 
			     echo "<i>".$per."%</i>";
			 ?></td>
		   </tr>
           <tr>
                <td align="center" colspan="4"><a href="home.php"><button class="btn btn-info" style="padding:8px;font-weight:bolder;"><b>Go to Home Page</b></button></a></td>
          </tr>		   

	   
	   </tbody>
   </table>
   </div>
   <div class="col-sm-2"></div>
</div>

</body>
</html>
<?php
$run = $ans->conn->query("update signup set last_result ='$per' where email='$update'");
?>
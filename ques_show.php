<?php
include("class/users.php");
$qus = new users;
$cat = $_POST['cat'];
$qus->qus_show($cat);
$_SESSION['cat'] = $cat;
$i = 0;
?>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
body {
    background-image: url("math.jpg");
	background-size: cover;
	background-position: center;
    background-repeat: no-repeat;
	height:auto;
}
</style>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
function timeout(){
	var minute = Math.floor(timeLeft/60);
	var second = timeLeft%60;
	if(timeLeft == 0){
		
		$("form").submit();
		clearTimeout(tm);
	}else{
		document.getElementById("time").innerHTML=minute+":"+second;
		document.getElementById("foot").innerHTML=minute+":"+second;
	}
	timeLeft--;
	var tm = setTimeout(function(){
		timeout();
	},1000);
	
}
</script>
  </head>
<body onload="timeout()">

<div class="container">
<div class="panel panel-primary" style="margin-top:15px">
<script>
  var timeLeft = 2*60;
 
  </script>
<div class="panel-heading"><center><b style="font-size:20px;"><center>TIME LEFT&emsp;<span id="time"></span></center></b></div>
  <div class="panel-body">
  <div class="col-sm-2">
  
  
  </div>
  
  
  
   <div class="col-sm-8">
  

<form action="answer.php?id=<?php echo $_SESSION['email']; ?>" method="post" name="form1">
<?php foreach($qus->qus as $ques){
	$i++;
?>
  <table class="table table-bordered">
    <thead>
      <tr style="background:pink " >
        <th><?php echo $i; ?>.&nbsp;<?php echo $ques['question']; ?></th>
        
      </tr>
    </thead>
    <tbody>
	<?php 
	if(isset($ques['ans1'])){ 
	?>
      <tr class="active">
        <td><input type="radio" value="0" name="<?php echo $ques['id']; ?>">&nbsp;<?php echo $ques['ans1']; ?></td>
      </tr>
	<?php } ?>
	<?php 
	if(isset($ques['ans2'])){ 
	?>
	   <tr class="active">
        <td><input type="radio" value="1" name="<?php echo $ques['id']; ?>">&nbsp;<?php echo $ques['ans2']; ?></td>
      </tr>
	<?php } ?>
	<?php 
	if(isset($ques['ans3'])){ 
	?>
	   <tr class="active">
        <td><input type="radio"  value="2" name="<?php echo $ques['id']; ?>">&nbsp;<?php echo $ques['ans3']; ?></td>
      </tr>
	<?php } ?>
	<?php 
	if(isset($ques['ans4'])){ 
	?>
	   <tr class="active">
        <td><input type="radio"  value="3" name="<?php echo $ques['id']; ?>">&nbsp;<?php echo $ques['ans4']; ?></td>
      </tr>
	<?php } ?>
	<tr class="active" style="display:none;">
    <td><input type="radio"  checked ="checked"  value="no_attempt" name="<?php echo $ques['id'] ?>"></td>
     </tr>
	
    </tbody>
  </table>
  
  <?php } ?>
  <center><input type="submit" value="Submit Quiz" class="btn btn-success">&emsp;
</form>

<a href="home.php" style="color:white;" class="btn btn-danger" role="button">Cancel</a></center>
  </div>
 </div>
 <div class="panel-footer"><center><b style="font-size:20px;"><center>TIME LEFT&emsp;<span id="foot"></span></center></b></div>
 <div class="col-sm-2"> </div>
  </div>

</div>

</body>
</html>


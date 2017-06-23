<?php
include("class/users.php");
$register = new users;
extract($_POST);
$img_name = $_FILES['img']['name'];
$tmp_name =$_FILES['img']['tmp_name'];
move_uploaded_file($tmp_name,"img/".$img_name);
$check = $register->conn->query("select * from signup where email='$e'");
if($check->num_rows ==0){
	

$query = "insert into signup(name,email,pass,img) VALUES('$n','$e','$p','$img_name') ";
if($register->signup($query,$e)){
	
	        $register->url("home.php");
			 
			
		 

}
}else{
	$register->url("index.php?exist");
}

?>
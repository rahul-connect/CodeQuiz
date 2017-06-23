<?php
session_start();
class users{
	public $host = "localhost";
	public $username = "root";
	public $pass = "";
	public $db_name = "quiz_oops";
	public $conn;
	public $data;
	public $cat;
	public $qus;
	
	
	public function __construct(){
		$this->conn = new mysqli($this->host,$this->username,$this->pass,$this->db_name);
		if($this->conn->connect_errno){
			die("Databse Connection Failure".$this->conn->connect_errno);
			
		}
	}
	
	public function signup($data,$e){
		$this->conn->query($data);
		$_SESSION['email']= $e;
		return true;
	}
	
   public function signin($email,$pass){
	$query = $this->conn->query("SELECT email,pass FROM signup WHERE email='$email' AND pass='$pass'");
		$query->fetch_array(MYSQLI_ASSOC);
		if($query->num_rows==1){
			$_SESSION['email']= $email;
			return true;
		}else{
			return false;
		}
}
	
	public function user_profile($email){
	     	$query = $this->conn->query("SELECT * from signup where email='$email'");
			$row = $query->fetch_array(MYSQLI_ASSOC);
			if($query->num_rows >0){
			     	$this->data[] = $row;
			}
			return $this->data;
	}
	
	public function cat_show(){
		$query = $this->conn->query("SELECT * from category");
		while($row = $query->fetch_array(MYSQLI_ASSOC))
		       {
			
				$this->cat[] = $row;
			}
			return $this->cat;
		
	}
	
		
	
	public function qus_show($qus){
		$query = $this->conn->query("select * from questions WHERE cat_id='$qus' ORDER BY RAND()");
		if($query->num_rows > 1){
			
		
		while($row=$query->fetch_array(MYSQLI_ASSOC)){
			$this->qus[] = $row;
		}
		return $this->qus;
		}else{
			$this->url("home.php");
		}
	}
	
	public function answer($data){
		$ans = implode($data);
		$right = 0;
		$wrong = 0;
		$no_answer=0;
		$query = $this->conn->query("select id,ans from questions WHERE cat_id='".$_SESSION['cat']."'");
		while($qust=$query->fetch_array(MYSQLI_ASSOC)){
           if($qust['ans']== $_POST[$qust['id']]){
			   $right++;
		   }else if($_POST[$qust['id']]=="no_attempt"){
			   $no_answer++;
		   }else{
			   $wrong++;
		   }	
		}
		$array = array();
		
		$array['right'] = $right;
		$array['wrong'] = $wrong;
		$array['no_answer'] = $no_answer;
		return $array;
	
	}
	
	public function url($url){
		header("location:".$url);
	}
}

new users;

?>
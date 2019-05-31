<?php            
include "data.php"; 
 
extract($_POST);
 
mysql_select_db('laravel_db');
$sql = mysql_query("SELECT * FROM registerusers WHERE email = '$email'  LIMIT 1", $conn);

if(mysql_num_rows($sql) > 0){
	$response_array = array('status' =>406 ,'message' => 'Email Already Exists');
}else{
		$sql = "INSERT INTO registerusers (name, email,pincode) VALUES ('$name','$email','$pincode')";
		$res = mysql_query($sql);
		if(!$res){
			$response_array = array('status' =>406 ,'message' => mysql_error());
		}else{
			$response_array = array('status' =>200 ,'message' => 'Successfully Registered !!');
		}
 }
echo json_encode($response_array);
 
 
 
 
?>
<?php 
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = 'root';
$conn = mysql_connect($dbhost, $dbuser, $dbpass,'laravel_db');


if(! $conn ) {
	echo mysql_error();
}
?>
<?php

$name=$_POST['firstname'];
$middlelname=$_POST['middlename'];
$lastname=$_POST['lastname'];
$email=$_POST['email'];
$tel=$_POST['tel'];
$mobile=$_POST['mobile'];
$address=$_POST['add'];
$postalcode=$POST['ptc'];
$username=$POST['username'];
$conpwd=$POST['con_pwd'];

$con=mysql_connect("localhost","root","","dfs");

if(!$con)
	echo "Connectivity Error";

$query="INSERT INTO mentor VALUES($name,$middlename,$lastname,$email,$gender,$language,$email,$tel,$mobile,$add,$ptc,$username,$pwd)";

if(mysql_query($query,$con))
	echo("Success");
else
	echo("Failure");

?>





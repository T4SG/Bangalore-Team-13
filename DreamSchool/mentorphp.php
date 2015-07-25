<?php

$name=$_POST['firstname'];
$middlename=$_POST['middlename'];
$lastname=$_POST['lastname'];
$email=$_POST['email'];
$gender="Male";
$language=$_POST['language'];
$tel=$_POST['tel'];
$mobile=$_POST['mobile'];
$address=$_POST['add'];
$ptc=$_POST['ptc'];
$pwd=$_POST['pwd'];

$con=mysqli_connect("localhost","root","","dfs");

if(!$con)
	echo "Connectivity Error";

$query="insert into mentor(`firstname`, `middlename`, `lastname`, `gender`, `language`, `email`, `tel`, `mobile`, `addr`, `ptc`, `username`, `pwd`) values ('$name','$middlename','$lastname','$gender','$language','$email','$tel','$mobile','$address','$ptc','$email','$pwd')";
if(mysqli_query($con,$query))
	echo("Success");
else
	echo(mysqli_error($con));
?>





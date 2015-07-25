<?php

$name=$_POST['firstname'];
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

$query="insert into mentor(`name`, `gender`, `language`, `email`, `tel`, `mobile`, `addr`, `ptc`, `username`, `pwd`) values ('$name','$gender','$language','$email','$tel','$mobile','$address','$ptc','$email','$pwd')";
if(mysqli_query($con,$query))
	echo("Success");
else
	echo(mysqli_error($con));
?>
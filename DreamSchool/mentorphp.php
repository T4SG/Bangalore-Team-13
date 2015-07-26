<?php

$name=$_POST['name'];

$middlelname=$_POST['middlename'];

$lastname=$_POST['lastname'];
$middlelname=$_POST['middlename'];
$email=$_POST['email'];
$tel=$_POST['tel'];

$mobile=$_POST['mobile'];

$address=$_POST['add'];
$postalcode=$POST['ptc'];

$username=$POST['username'];



$con=mysql_connect("localhost","root","");


if(!$con)

<<<<<<< HEAD:mentorphp.php
echo "error";


$query=sprintf("INSERT INTO dfs.mentor VALUES('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s')");



mysql_query($query,$con);



echo "successfully registered";






=======
$query="insert into mentor(`firstname`, `middlename`, `lastname`, `gender`, `language`, `email`, `tel`, `mobile`, `add`, `ptc`, `username`, `pwd`) values ('$name','$middlename','$lastname','$gender','$language','$email','$tel','$mobile','$address','$ptc','$email','$pwd')";
if(mysqli_query($con,$query))
	echo("Success");
else
	echo(mysqli_error($con));
>>>>>>> origin/master:DreamSchool/mentorphp.php
?>





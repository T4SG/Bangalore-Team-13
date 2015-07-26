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
$conpwd=$POST['con_pwd'];


$con=mysql_connect("localhost","root","");


if(!$con)

echo "error";


$query=sprintf("INSERT INTO dfs.mentor VALUES('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s')");



mysql_query($query,$con);



echo "successfully registered";






?>





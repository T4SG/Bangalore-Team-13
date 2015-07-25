<?php

$sname=$_POST['name'];
$father=$_POST['fathername'];
$address=$_POST['presentaddress'];
$gender=$_POST['sex'];
$hometown=$_POST['city'];
$s=$_POST['state'];
$pin=$_POST['pincode'];
$email=$_POST['emailid'];
$dateofbirth=$_POST['dob'];
$mobile=$_POST['mobileno'];

$con=mysql_connect("localhost","root","");


$query=sprintf("INSERT INTO mentee VALUES('%s','%s','%s','%s','%s','%s','%s','%s',,yyyy/mm/dd','%d')",($sname),($father),($address),($gender),($hometown),($s),($pin),($email),($dateofbirth),($mobile));



mysql_query($query,$con);










echo "successfully registered";

?>


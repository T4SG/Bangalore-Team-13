<?php
$name=$_POST['name'];
$father=$_POST['fathername'];
$gender=$_POST['sex'];
$city=$_POST['City'];
$state=$_POST['State'];
$pin=$_POST['pincode'];
$email=$_POST['emailid'];
$dob=$_POST['dob'];
$mobile=$_POST['mobileno'];
$pwd=$_POST['pwd'];

$con=mysqli_connect("localhost","root","","dfs");

$query="INSERT INTO `mentee`(`name`, `fathername`, `sex`, `city`, `state`, `pincode`, `emailid`, `dob`, `mobileno`, `username`, `pwd`) VALUES ('$name','$father','$gender','$city','$state','$pin','$email','$dob','$mobile','$email','$pwd')";

if(mysqli_query($con,$query))
  echo "Successfully registered";
else
  echo "Failure:".mysqli_error($con);

?>


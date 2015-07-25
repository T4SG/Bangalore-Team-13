<?php

$con=mysqli_connect("localhost","root","","dfs");

if(!$con)
	echo "Connectivity Error";

$query  = "SELECT * FROM mentor";
$result = mysqli_query($con,$query);

while($row = mysqli_fetch_array($result, MYSQL_ASSOC))
 {
     echo "Name :{$row['name']} <br>" .
          "City : {$row['city']} <br>" . 
          "email : {$row['email']} <br><br>";
 } 


?>
<?php

$con=mysqli_connect("localhost","root","","dfs");

if(!$con)
	echo "Connectivity Error";

$query  = "SELECT * FROM mentor where email = 'keshav2509@gmail.com'";
$result = mysqli_query($con,$query);

$output = "";
while($row = mysqli_fetch_array($result, MYSQL_ASSOC))
 {
		$output= "Name :{$row['name']} <br>" .
          "City : {$row['city']} <br>" . 
          "Email : {$row['email']} <br><br>" .
		  "Telephone : {$row['tel']} <br><br>" .
		  "Mobile : {$row['mobile']} <br><br>" .
		  "postal Code : {$row['ptc']} <br><br>";
 } 
 echo $output;

?>
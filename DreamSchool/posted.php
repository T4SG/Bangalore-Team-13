<?php

$post=$_POST['post'];




$con=mysql_connect("localhost","root","");


if(!$con)

echo "error";


$query=sprintf("INSERT INTO dfs.post VALUES('%s')",mysql_real_escape_string($post));



mysql_query($query,$con);



echo "successfully registered";

?>


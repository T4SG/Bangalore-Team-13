<?php
session_start();
if(!session_is_registered(username)){
header("location:mentornew.php");
}
?>

<html>
<body>
Login Successful
</body>
</html>
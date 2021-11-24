<?php include 'includes/config.php';
$name=$_POST['user'];
$pass=$_POST['pass'];
$q="select * from signin where username='$name'&& password='$pass'";
mysqli_query($q);
?>
<?php
session_start();
include 'conex.php';
$local = $_GET['local'];
//$_SESSION['contador']++;
$sql="INSERT INTO `contador`(`local`, `tipo`) VALUES ('".$local."','ingreso')";
mysqli_query($con,$sql) or die(mysqli_error($con));
header('Location: index.php');
?>
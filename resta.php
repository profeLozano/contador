<?php
session_start();
$local = $_GET['local'];

include 'conex.php';
//$_SESSION['contador']--;
if($_SESSION['contador'] < 0){
    $_SESSION['contador']=0;
} else {
    $sql="INSERT INTO `contador`(`local`, `tipo`) VALUES ('".$local."','egreso')";
    mysqli_query($con,$sql) or die(mysqli_error($con));
}

header('Location: index.php');
?>
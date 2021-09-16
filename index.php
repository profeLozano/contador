<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contador</title>
</head>
<?php
session_start();
include 'conex.php';

$sql="SELECT(SELECT COUNT(id) as cantidad FROM `contador` WHERE tipo='ingreso' AND DATE(fecha) = DATE(NOW())) -
(SELECT COUNT(id) as cantidad FROM `contador` WHERE tipo='egreso' AND DATE(fecha) = DATE(NOW())) as resultado";
$resultado=mysqli_query($con,$sql);
$fila = mysqli_fetch_assoc($resultado);

?>

<body>
    <h1 style="font-size:140px; color:blue;"><?php print $fila['resultado'] ?></h1>
    <div>
        <form action="suma.php" method="GET">
            <input type="hidden" name="local" value="prueba">
            <input style="font-size: 80px;" type="submit" value="+">
        </form>
    </div>
    <div>
        <form action="resta.php" method="GET">
            <input type="hidden" name="local" value="prueba">
            <input style="font-size: 90px;" type="submit" value="-">
        </form>
    </div>
    <div style="width: 50%;">
        <form action="tabla.php" method="GET">
            <input type="hidden" name="local" value="prueba">
            <input style="font-size: 90px;" type="submit" value="Ver resultados por hora">
        </form>
    </div>
</body>

</html>
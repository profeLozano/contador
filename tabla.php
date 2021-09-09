<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<?php
if(isset($_GET['fecha'])){
    $fecha = $_GET['fecha'];
}
else{
    $fecha = date('Y-m-d');
}
?>
<body>
    <form action="tabla.php" method="GET">
        <input type="date" name="fecha" id="">
        <input type="submit" value="Actualizar">
    </form>
    <table>
        <thead>
            <tr>
                <th>Ingresos</th>
                <th>Egresos</th>
                <th>Cantidad</th>
                <th>Hora</th>
            </tr>
        </thead>
        <tbody>
        <?php
        include 'conex.php';
        $sql="SELECT COUNT(`id`) AS cantidad, HOUR(`fecha`) as hora FROM `contador` WHERE DATE(fecha) = '".$fecha."' AND tipo = 'ingreso' GROUP BY HOUR(`fecha`)";
        $resultado=mysqli_query($con,$sql);
        $sql1="SELECT COUNT(`id`) AS cantidad, HOUR(`fecha`) as hora FROM `contador` WHERE DATE(fecha) = '".$fecha."' AND tipo = 'egreso' GROUP BY HOUR(`fecha`)";
        $resultado1=mysqli_query($con,$sql1);
        $egresos = array();
        while($fila1=mysqli_fetch_assoc($resultado1)){
            $egresos[$fila1['hora']] = $fila1['cantidad'];
        }
        while($fila=mysqli_fetch_assoc($resultado)){
            $texto = "<tr>";
            $texto .= "<td>";
            $texto .= $fila['cantidad'];
            $texto .= "</td>";
            $texto .= "<td>";
            $texto .= $egresos[$fila['hora']];
            $texto .= "</td>";
            $texto .= "<td>";
            $texto .= $fila['cantidad']-$egresos[$fila['hora']];
            $texto .= "</td>";
            $texto .= "<td>";
            $texto .= $fila['hora'];
            $texto .= "</td>";
            $texto .= "</tr>";
            print $texto;
        }
        ?>
        </tbody>

    </table>
    <a href="index.php">Volver</a>
</body>
</html>
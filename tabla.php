<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>Cantidad</th>
                <th>Hora</th>
            </tr>
        </thead>
        <tbody>
        <?php
        include 'conex.php';
        $sql="SELECT COUNT(`id`) AS cantidad, HOUR(`fecha`) as hora FROM `contador` WHERE DATE(fecha) = '".date('Y-m-d')."' AND tipo = 'ingreso' GROUP BY HOUR(`fecha`)";
        $resultado=mysqli_query($con,$sql);
        while($fila=mysqli_fetch_assoc($resultado)){
            $texto = "<tr>";
            $texto .= "<td>";
            $texto .= $fila['cantidad'];
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
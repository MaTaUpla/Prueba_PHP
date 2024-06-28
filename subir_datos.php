<?php
include 'coneccion.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    //rescato los parametros ingresados los cuales ya estan validados respecto a lo que se pidio
    $rut = $_POST["rut"];
    $nombre = $_POST["nombre"];
    $alias = $_POST["alias"];
    $email = $_POST["email"];
    $region = $_POST["region"];
    $comuna = $_POST["comuna"];
    $candidato = $_POST["candidato"];
    $difusion = $_POST['CSEDN'];
    //lo almaceno de manera unitaria ya que lo encontre mas sencillo y solo es almacenarlo, podria ser con una lsita en caso de que se requieran mas formas dedifusion
    $n = count($difusion);
    $web = false;
    $tv = false;
    $rrss = false;
    $amigo = false;
    //se hace un ciclo ya que los parametros de difusion llegan en un array entonces asi se recorre y se asigna su valor booleano
    for ($i = 0; $i < $n; $i++) {
        if ($difusion[$i] == 'web') { $web = true; }
        if ($difusion[$i] == 'tv') { $tv = true; }
        if ($difusion[$i] == 'rrss') { $rrss = true; }
        if ($difusion[$i] == 'amigo') { $amigo = true; }
    }
}
//creacion de la query para insertar en la base de datos 
$query = "INSERT INTO votos (rut,nombre,alias,email,region_id,comuna_id, candidato_id, web, tv ,rrss ,amigo)
VALUES ('$rut', '$nombre', '$alias', '$email', '$region', '$comuna', '$candidato', '$web', '$tv', '$rrss', '$amigo')";
$resultado = conectar()->query($query);
$conn->desconectar();
?>



   

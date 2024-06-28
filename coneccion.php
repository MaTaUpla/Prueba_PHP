<?php
//creo la funcion donde se crea la conexion con la base de datos
function conectar(){
    $hostname = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'votacion';

    $conn = mysqli_connect($hostname,$username,$password,$dbname);
    if(!$conn){
        die("Intento de Conexion a la base de datos resulto fallido " . mysqli_connect_error());
    }
    return $conn;
}

//esto hara que se cierre esa conexion
function desconectar($conn){
    mysqli_close($conn);
}
?>

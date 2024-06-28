<?php
include 'coneccion.php';
if(isset($_GET['function'])) {
    $function = $_GET['function'];
    if($function === 'Regiones') {
        echo getRegiones();
    }else if($function === 'Comunas'){
        $region = $_GET['region'];
        echo getComunas($region);
    }else if($function === 'Candidatos'){
        echo getCandidatos();
    }else if($function === 'validarRut'){
        $rut = $_GET['rut'];
        echo validarDuplicidadVotos($rut);
    }
}

function getRegiones(){
    $query= 'SELECT * FROM region';
    $resultado = conectar()->query($query);
    $regiones= array();
    if ($resultado->num_rows > 0) {
        foreach($resultado as $region) {
            $regiones[]= $region;    
        }
    } else {
        echo "No se encontraron resultados";
    }
    return json_encode($regiones);
}

function getComunas($region){
    $query= "SELECT * FROM comuna WHERE region_id ='$region'";
    $resultado = conectar()->query($query);
    $comunas= array();
    if ($resultado->num_rows > 0) {
        foreach($resultado as $comuna) {
            $comunas[]= $comuna;    
        }
    } else {
        echo "No se encontraron resultados";
    }
    return json_encode($comunas);
}

function getCandidatos(){
    $query = 'SELECT * FROM candidato';
    $resultado = conectar()->query($query);
    $candidatos= array();
    if ($resultado->num_rows > 0) {
        foreach($resultado as $candidato) {
            $candidatos[]= $candidato;    
        }
    } else {
        echo "No se encontraron resultados";
    }
    return json_encode($candidatos);
}

function validarDuplicidadVotos($rut){
    $query= "SELECT * FROM votos WHERE rut ='$rut'";
    $resultado = conectar()->query($query);
    $existeRut = $resultado->num_rows > 0; 

    return json_encode(array("existeRut" => $existeRut));
}

?>

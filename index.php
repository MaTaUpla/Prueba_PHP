<!--llamo a obtener datos para rellenar los select con la información en la base de datos.-->
<?php include("obtener_datos.php") ?>
<html>
    <head>
        <meta charset="utf8">
        <title>Prueba Diagnostico</title>
    </head>
    <style>
        .container{
            border: 1px solid black;
            width:800px;
        }
        p{
            margin-left:5px;
        }
        #titulo{
            margin-top:4%;
            margin-bottom: 4%;
            margin-left:3%;
        }
        .contenedor-doble{
            display:flex;
            align-items: center;
            margin-bottom: 10px;
            margin-left: 3%;
        }
        .contenedor-doble label{
            width:210px;
        }
        .contenedor-doble p{
            margin-right:10px;
        }
    </style>
    <body>
        <div class="container">
            <div id="titulo"><h2>FORMULARIO DE VOTACIÓN:</h2></div>
            <form id="votacion" method="post" action="subir_datos.php">
                 <!--Datos tipo string-->
                <div class="contenedor-doble">
                    <label>Nombre y Apellido</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
                <div class="contenedor-doble">
                    <label>Alias</label>
                    <input type="text" id="alias" name="alias" required>
                </div>
                <div class="contenedor-doble">
                    <label>RUT</label>
                    <input type="text" id="rut" name="rut" placeholder="ejemplo 11111111-1" required>
                </div>
                <div class="contenedor-doble">
                    <label>Email</label>
                    <input type="text" id="email" name="email" placeholder="ejemplo@ejemplo.ejemplo" required>
                </div>
                <!--Datos tipo combobox-->
                <div class="contenedor-doble">
                    <label>Región</label>
                    <select id="region" name="region" required></select>
                </div>
                <div class="contenedor-doble">
                    <label>Comuna</label>
                    <select id="comuna" name="comuna" required></select>
                </div>
                <div class="contenedor-doble">
                    <label>Candidato</label>
                    <select id="candidato" name="candidato" required></select>
                </div>
                <!--Datos tipo checkbox-->
                <div class="contenedor-doble">
                    <label>Como se enteró de Nosotros</label>
                    <input type="checkbox" id="web" name="CSEDN[]" value="web"><p>Web</p>
                    <input type="checkbox" id="tv" name="CSEDN[]" value="tv"><p>TV</p>
                    <input type="checkbox" id="rrss" name="CSEDN[]" value="rrss"><p>Redes Sociales</p>
                    <input type="checkbox" id="amigo" name="CSEDN[]" value="amigo"><p>Amigo</p>
                </div>

                <!--Enviar formulario-->
                <div class="contenedor-doble">
                    <input type="submit" value="Votar">
                </div>
            </form>
        </div>
    </body>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            //trase de la base todas las regiones ingresadas
            function obtenerRegiones() {
                var xhr = new XMLHttpRequest();
                xhr.open('GET', 'obtener_datos.php?function=Regiones', true);
                xhr.onload = function() {
                    if (xhr.status >= 200 && xhr.status < 300) {
                        var regiones = JSON.parse(xhr.responseText);
                        var selectRegion = document.getElementById('region');
                        selectRegion.innerHTML = '';

                        var optionNull = document.createElement('option');
                        optionNull.value = '';
                        optionNull.textContent = 'Seleccione una region';
                        selectRegion.appendChild(optionNull);

                        regiones.forEach(function(region) {
                            var option = document.createElement('option');
                            option.value = region.region_id;
                            option.textContent = region.nombre_region;
                            selectRegion.appendChild(option);
                        });

                        //al seleccionar una region carga las comunas sino le indica al usuario elegir una region
                        selectRegion.addEventListener('change', function() {
                            var regionId = selectRegion.value;
                            if (regionId){
                                obtenerComunas(regionId); 
                            }else{
                                comunaVacia();
                            }
                        });
                    } else {
                        console.error('Error al obtener regiones');
                    }
                };
                xhr.onerror = function() {
                    console.error('Error de conexión');
                };
                xhr.send();
            }

            //cargar los datos de comunas segun la region escogida
            function obtenerComunas(region) {
                var xhr = new XMLHttpRequest();
                xhr.open('GET', 'obtener_datos.php?function=Comunas&region=' + region, true);
                xhr.onload = function() {
                    if (xhr.status >= 200 && xhr.status < 300) {
                        var comunas = JSON.parse(xhr.responseText);
                        var selectComuna = document.getElementById('comuna');
                        selectComuna.innerHTML = '';

                        var optionNull = document.createElement('option');
                        optionNull.value = '';
                        optionNull.textContent = 'Seleccione una comuna';
                        selectComuna.appendChild(optionNull);

                        comunas.forEach(function(comuna) {
                            var option = document.createElement('option');
                            option.value = comuna.comuna_id;
                            option.textContent = comuna.nombre_comuna;
                            selectComuna.appendChild(option);
                        });
                    } else {
                        console.error('Error al obtener comunas');
                    }
                };
                xhr.onerror = function() {
                    console.error('Error de conexión');
                };
                xhr.send();
            }

            //en caso de que no se haya escogido ninguna region asi evitando aparezca en blanco
            function comunaVacia(){
                var selectComuna = document.getElementById('comuna');
                selectComuna.innerHTML = '';

                var optionNull = document.createElement('option');
                optionNull.value = '';
                optionNull.textContent = 'Seleccione una comuna';
                selectComuna.appendChild(optionNull);
            }

            function obtenerCandidatos() {
                var xhr = new XMLHttpRequest();
                xhr.open('GET', 'obtener_datos.php?function=Candidatos', true);
                xhr.onload = function() {
                    if (xhr.status >= 200 && xhr.status < 300) {
                        var candidatos = JSON.parse(xhr.responseText);
                        var selectCandidato = document.getElementById('candidato');
                        selectCandidato.innerHTML = '';

                        var optionNull = document.createElement('option');
                        optionNull.value = '';
                        optionNull.textContent = 'Seleccione una opción';
                        selectCandidato.appendChild(optionNull);

                        candidatos.forEach(function(candidato) {
                            var option = document.createElement('option');
                            option.value = candidato.candidato_id;
                            option.textContent = candidato.nombre_candidato;
                            selectCandidato.appendChild(option);
                        });
                    } else {
                        console.error('Error al obtener datos de candidatos');
                    }
                };
                xhr.onerror = function() {
                    console.error('Error de conexión');
                };
                xhr.send();
            }

            //inicializo los valores al cargar la pagina
            window.onload = function() {
                comunaVacia();
                obtenerRegiones();
                obtenerCandidatos();
            };

            function validacionesFormulario() {
                //para almacenar los errores en caso de haber varios tambien se puede hacer que reclame de uno.
                var errores = [];
                var valor_nombre = document.getElementById("nombre").value;
                var valor_alias = document.getElementById("alias").value;
                var valor_rut = document.getElementById("rut").value;
                var valor_email = document.getElementById("email").value;
                /////////checkbox multiple/////////
                var valores_checkbox = document.querySelectorAll('input[name="CSEDN[]"]:checked');
                
                //Validar nombre que tenga apellido
                var nombreCompleto = valor_nombre.trim().split(/\s+/);
                if (nombreCompleto.length < 2 || nombreCompleto.some(parte => parte.length === 0)) {
                    errores.push("Debe contener un nombre con su apellido");
                }

                //Validar alias
                //Se usa estructura para validar que tenga letras y numeros
                var formatoAlias = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]+$/;
                if (valor_alias.length < 6) {
                    errores.push("Alias debe tener mas de 5 caracteres.");
                }
                if(!formatoAlias.test(valor_alias)){
                    errores.push("Alias debe tener letras y numeros.");
                }

                //Validar rut si es mayor a 10 y menor a 8 caracteres es un rut invalido
                var formatoRut = /.*-.{1}$/;
                if ((valor_rut.length < 9) || (valor_rut.length > 10)){
                    errores.push("Rut ingresado no valido, es demasiado corto o largo.");
                }
                if(!formatoRut.test(valor_rut)){
                    errores.push("Rut ingresado no valido, no contiene guion.");
                }
                if(!validarRut(valor_rut)){
                    errores.push("Rut ingresado no valido.");
                }

                //Validar email
                //Se usa estructura para validar que tenga el arroba, el punto y que no este vacio
                var formatoEmail = /^\w+([.-_+]?\w+)*@\w+([.-]?\w+)*(\.\w{2,10})+$/;
                if (!formatoEmail.test(valor_email)) {
                    errores.push("Email ingresado no tiene formato correcto,favor de ingresar uno como el ejemplo 'ejemplo@ejemplo.ejemplo'.");
                }

                //validar checkbox multiple
                if(valores_checkbox.length < 2){
                    errores.push("Debe marcar almenos 2 checkbox de 'Como se entero de nosotros'.");
                }

                //Verificar los errores y arrojar el false para que no envie los datos
                if (errores.length > 0) {
                    alert(errores.join("\n"));
                    return false;
                }
                return true;
            }

            //funcion que verifica que el digito verificador este correcto
            function validarRut(rut) {
                //elimino el guion asi dejo un string de pueros numeros
                rut = rut.replace('-', '');
                
                //separo el digito verificador del string y asi obtengo el numero sin digito y el digito
                var numeroSinDigito = rut.slice(0, -1);
                var digitoVerificador = rut.slice(-1).toUpperCase();
                var suma = 0;
                var multiplicador = 2;

                //recorro el numero sin digito haciendo la sumatoria asi obteniendo el multiplicador requerido
                for (var i = numeroSinDigito.length - 1; i >= 0; i--) {
                    suma += multiplicador * parseInt(numeroSinDigito.charAt(i));
                    multiplicador = multiplicador < 7 ? multiplicador + 1 : 2;
                }

                //ya recorrido el numero sin digito se realzia ecuacion de verificacion de digito verificador para luego ver los casos especiales como lo son el - k y - 0
                var digitoVerificadoReal = 11 - (suma % 11);
                if (digitoVerificadoReal === 10) {
                    digitoVerificadoReal = 'K';
                } else if (digitoVerificadoReal === 11) {
                    digitoVerificadoReal = '0';
                } else {
                    digitoVerificadoReal = digitoVerificadoReal.toString();
                }
                //compara el rut entregado con el que deberia haber llegado respecto a su digito verificador
                return digitoVerificadoReal === digitoVerificador;
            }

            //enviar los datos a php para subirlos a la base de datos
            var formulario = document.getElementById("votacion")
            formulario.addEventListener('submit', function(event){
                event.preventDefault();

                //validaciones de datos
                if(!validacionesFormulario()){
                    return;
                }
                //validar rut si existe o no
                var inputRut = document.getElementById('rut').value;
                var xhr = new XMLHttpRequest();
                xhr.open('GET', 'obtener_datos.php?function=validarRut&rut=' + inputRut , true);
                xhr.onload = function() {
                    if (xhr.status >= 200 && xhr.status < 300) {
                        var response = JSON.parse(xhr.responseText);
                        if (response.existeRut) {
                            alert("El RUT ingresado ya está registrado.");
                        }else{
                            alert("Voto realizado.");
                            enviarDatos();
                            formulario.reset();
                        }
                    } else {
                        console.error('Error al verificar los datos');
                    }
                };
                xhr.onerror = function() {
                    console.error('Error de conexión');
                };
                xhr.send();
            });

            function enviarDatos() {
                var xhr = new XMLHttpRequest();
                var formData = new FormData(formulario);

                xhr.open('POST', 'subir_datos.php', true);
                xhr.onload = function() {
                    if (xhr.status >= 200 && xhr.status < 300) {
                        console.log(xhr);
                        var response = JSON.parse(xhr.responseText);
                        console.log(response);
                        console.log(response.mensaje);
                        alert(response.mensaje);
                    } else {
                        console.error('Error al enviar los datos');
                    }
                };
                xhr.onerror = function() {
                    console.error('Error de conexión');
                };
                xhr.send(formData);
            } 
        });
    </script>
</html>

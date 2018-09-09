<?php  

  function abrirConexion(){
  $host = "localhost";
  $usuario = "root";
  $contrasena = "";
  $db = "explora";

  	$conexion = mysqli_connect($host, $usuario, $contrasena, $db);
  	if(!$conexion)
  		echo "Error: ".mysqli_connect_error;
  	else 
  		echo "conectado";

  	return $conexion;
  }

  function cerrarConexion($conexion){
    if($conexion){
    	mysqli_close($conexion);
    	echo "<br>";
    	echo "cerrado";
    }
  }
  
  function insertar($conn,$tabla,$sql){
     $query = "INSERT INTO ".$tabla." "."VALUES ('".$sql."'".")";
	   $resultado = mysqli_query($conn,$query);

	   return $resultado;
	
  }

?>
  
<?php
require_once("../database/conexion.php");


	function validarDato($dato){
		if(isset($dato))
			return htmlspecialchars($dato);
	}


	function insertarUsuario($conexion){
	  	$nombre = validarDato("Juan");//$_POST['nombre'];
	  	$apellidoPaterno = validarDato("Perez");//$_POST['apellidoPaterno'];
	  	$apellidoMaterno = validarDato("Perez");//$_POST['apellidoMaterno'];+
	  	$email = validarDato("jpp@gmail.com");//$_POST['email'];
	  	$username = validarDato("jupep");//$_POST['username'];
	  	$password = sha1(validarDato("123456"));//$_POST['password'];
	  	$imagen = "ruta";
	  	
	  	$sql = $nombre.",".$apellidoPaterno.",".$apellidoMaterno.",".$email.",".$username.",".$password."".$ruta."";

	  	echo $sql;
	}  

	insertarUsuario();
?>
<?php
require_once("../database/conexion.php");


	if(isset($_POST["submit"])){
		
		for($i=0;$i<count($_FILES["imagen"]["name"]);$i++){
		
		 $uploadfile=$_FILES["imagen"]["tmp_name"][$i];
		 $ruta = "../audioguia/img/";
		 move_uploaded_file($_FILES["imagen"]["tmp_name"][$i], "".$ruta."".$_FILES["imagen"]["name"][$i]);
		 
		 //echo $_SERVER['SERVER_NAME'].dirname($_SERVER['PHP_SELF'])."/".$_FILES["imagen"]["name"];	
		 header();
		}
		exit();
	}
	
?>	
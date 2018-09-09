<?php
require_once("../database/conexion.php");

	if(isset($_POST["submit2"])){

		$tipoAudio = $_FILES['audio']['type'];

		if($tipoAudio == 'audio/mpeg' || $tipoAudio =='audio/mpeg3' || $tipoAudio == 'audio/mp3' || $tipoAudio == 'audio/wav'){
			$audio = $_FILES['audio']['name'];
			$temp = $_FILES['audio']['tmp_name'];
			$ruta = "../audioguia/audio/".$audio;

			move_uploaded_file($temp, $ruta);
		}else {
			echo "No es un formato valido";
		} 

	} else{
		echo "No se pudo subir";
	}

?>
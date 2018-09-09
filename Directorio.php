<?php

  function crearCarpeta($ruta){
  	echo $ruta;
    $directorio = mkdir($ruta, 0700);
	  if($directorio)
	  	echo "se creó la ruta";
	  else
	  	echo "Error al crear la ruta";
  }

  function validarCarpeta($ruta){
  	if(!(file_exists($ruta)))
  		crearCarpeta($ruta);
  }

  function concatenarRuta(){
    $audioguia = "audioguia";
    $usuarios = "usuarios";
    $ruta = "".$audioguia.""."/img";
    validarCarpeta($ruta);
    $ruta = "".$audioguia.""."/audio";
    validarCarpeta($ruta);
    $ruta = "".$usuarios.""."/img";
    validarCarpeta($ruta);
  }

  concatenarRuta();

?>
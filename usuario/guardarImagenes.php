<?php
if(isset($_POST['submit'])){
	for($i=0;$i<count($_FILES["imagen"]["name"]);$i++){

	 $uploadfile=$_FILES["imagen"]["tmp_name"][$i];
	 $ruta="../audioguia/img/";
	 move_uploaded_file($_FILES["imagen"]["tmp_name"][$i], "$ruta".$_FILES["imagen"]["name"][$i]);
	}

	exit();
}
?>
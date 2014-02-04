<?php
	include("clases/class_puestos.php");
	$pues = new Puestos();

	$error = $pues->del_puesto(1);
	if($error == "")
	{
		echo $dep->error;
		echo "El puesto se inserto correctamente";
	}
	else
	{
		echo "Ocurrio el siguiente error: ".$error;
	}
?>
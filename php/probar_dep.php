<?php
	include("clases/class_departamentos.php");
	$dep = new Departamentos();

	$error = $dep->ins_departamento(3,2,"algo");
	if($error == "")
	{
		echo $dep->error;
		echo "El Departamento se inserto correctamente";
	}
	else
	{
		echo "Ocurrio el siguiente error: ".$error;
	}
?>
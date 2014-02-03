<?php
	include("clases/class_departamentos.php");
	$conn = new Departamentos();

	$error = $conn->ins_departamento("01","Otro","algo");
	if($error == "")
	{
		echo "El Departamento se inserto correctamente";
	}
	else
	{
		echo "Ocurrio el siguiente error ".$error;
	}
?>
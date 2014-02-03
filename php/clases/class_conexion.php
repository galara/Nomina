<?php
class Conexion
{
	var $conect;
	function __construct() {
		$this->conect = new mysqli('localhost', 'root', 'admin', 'sicen');
		if (mysqli_connect_error()) {
		    die('Error de Conexión (' . mysqli_connect_errno() . ') '
            . mysqli_connect_error());
		}
	}

	function checkConection(){
		$fallo = false;
		if ($this->conect->connect_errno) {
	    $fallo = true;
	    exit();
		}
		return $fallo;
	}

	function consulta($campos,$tabla,$where,$order,$conn){
		$consulta = 'SELECT '.$campos.' FROM '.$tabla;
		if($where != null)
		{
			$consulta = $consulta.' WHERE '.$where;
		}
		if($order != null)
		{
			$consulta = $consulta.'ORDER BY'.$order;
		}
		$result = $this->conect->query($consulta);
		return $result;
	}

	function query($query,$conn)
	{
		$result = mysqli_query($this->conect,$query);
		return $result;
	}

	function __destruct()
	{

	}
}
?>
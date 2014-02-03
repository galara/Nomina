<?php
	/**
	* Clase departamentos aquí se crearán los metodos necesarios para insertar
	*	consultar, eliminar(eliminado logico), y modificar los departamentos
	*/
	class Departamentos
	{
		//Constructor de la clase, sin argumentos
		var $conn;
		function __construct()
		{
			//Se incluye la conexión
			include('class_conexion.php');
			//Se crea la conexión
			$this->conn = new Conexion();
		}

		//Metodo para insertar departamentos
		function ins_departamento($clave,$departamento,$descripcion)
		{
			try {
				//Varible error, si no existe error se regresa en blanco, si cae en catch se guarda el error en ella
				$error = "";
				//Instrucción para insertar
				$query = "CALL sp_ins_dep('".$clave."','".$departamento."','".$descripcion."');";
				$result = $this->conn->query($query,$this->conn->conect);
				if(!$result)
				{
					die('Consulta no v&aacute;lida: ' . mysql_error($result));
				}
			} catch (Exception $e) {
				$error = $e->getMessage();
			}
			return $error;
		}

		function mod_departamento($clave,$departamento,$descripcion)
		{
			try {
				//Varible error, si no existe error se regresa en blanco, si cae en catch se guarda el error en ella
				$error = "";
				//Instrucción para insertar
				$query = "CALL sp_mod_dep('".$departamento."','".$descripcion."','".$clave."')";
				$this->conn->query($query,$this->conn->conect);
			} catch (Exception $e) {
				$error = $e->getMessage();
			}
			return $error;
		}

		function elim_departamento($clave)
		{
			try {
				//Varible error, si no existe error se regresa en blanco, si cae en catch se guarda el error en ella
				$error = "";
				//Instrucción para insertar
				$query = "CALL sp_del_dep('".$clave."')";
				$this->conn->query($query,$this->conn->conect);
			} catch (Exception $e) {
				$error = $e->getMessage();
			}
			return $error;	
		}
	}
?>
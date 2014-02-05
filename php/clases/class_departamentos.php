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
			//Varible error, si no existe error se regresa en blanco, si cae en catch se guarda el error en ella
			$error = "";
			try {	
				//Instrucción para insertar
				$query = "CALL sp_ins_dep('".$clave."','".$departamento."','".$descripcion."');";
				$result = $this->conn->query($query,$this->conn->conect);
				//Se comprueba que la consulta no tenga errores
				if(!$result)
				{
					//Si existe algun error se guarda en la variable
					$error = mysqli_error($this->conn->conect);
				}
			} catch (Exception $e) {
				$error = $e->getMessage();
			}
			return $error;
		}

		function mod_departamento($clave,$departamento,$descripcion)
		{
			//Varible error, si no existe error se regresa en blanco, si cae en catch se guarda el error en ella
			$error = "";
			try {
				//Instrucción para insertar
				$query = "CALL sp_mod_dep('".$departamento."','".$descripcion."','".$clave."')";
				$result = $this->conn->query($query,$this->conn->conect);
				if(!$result)
				{
					$error = mysqli_error($this->conn->conect);
				}
			} catch (Exception $e) {
				$error = $e->getMessage();
			}
			return $error;
		}

		function elim_departamento($clave)
		{
			//Varible error, si no existe error se regresa en blanco, si cae en catch se guarda el error en ella
			$error = "";
			try {
				//Instrucción para insertar
				$query = "CALL sp_del_dep($clave)";
				$result = $this->conn->query($query,$this->conn->conect);
				if(!$result)
				{
					$error = mysqli_error($this->conn->conect);
				}
			} catch (Exception $e) {
				$error = $e->getMessage();
			}
			return $error;	
		}

		function get_all_data()
		{
			
		}
	}
?>
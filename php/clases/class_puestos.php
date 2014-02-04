<?php
	/**
	* Clase puestos aquí se crearán los metodos necesarios para insertar
	*	consultar, eliminar(eliminado logico), y modificar los puestos
	*/
	class Puestos
	{
		//Variable que se usara para crear una instancia de la clase Conexion
		var $conn;
		//Constructor de la clase
		function __construct()
		{
			//Se incluye la conexión
			include('class_conexion.php');
			//Se crea la conexión
			$this->conn = new Conexion();
		}

		//Funcióm para insertar puestos
		function ins_puesto($clave,$dep,$pues,$des)
		{
			$error = "";
			try {
				$query = "CALL sp_ins_puesto('".$clave."','".$dep."','".$pues."','".$des."');";
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

		//Función para modificar puestos
		function mod_puesto($dep,$pues,$des,$id)
		{
			$error = "";
			try {
				$query = "CALL sp_mod_puesto('".$dep."','".$pues."','".$des."','".$id."')";
				$result = $this->conn->query($query,$this->conn->conect);
				if(!$result){
					$error = mysqli_error($this->conn->conect);
				}
			} catch (Exception $e) {
				$error = $e->getMessage();
			}
			return $error;
		}

		//Función para eliminar puestos (logicamente)
		function del_puesto($clave)
		{
			$error = "";
			try {
				$query = "CALL sp_del_puesto('".$clave."')";
				$result = $this->conn->query($query,$this->conn->conect);
				if(!$result){
					$error = mysqli_error($this->conn->conect);
				}
			} catch (Exception $e) {
				$error = $e->getMessage();
			}
			return $error;
		}
	}
?>
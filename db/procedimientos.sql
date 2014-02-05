/*
--------------------------------------------------------------------------
-         Procedimientos almacenados para la tabla Departamentos         -
--------------------------------------------------------------------------
Creacion procedimiento almacenado insertar
*/
DELIMITER //
DROP PROCEDURE IF EXISTS sp_ins_dep //
CREATE PROCEDURE sp_ins_dep(IN id VARCHAR(5), dep VARCHAR(100), des VARCHAR(500)) BEGIN
INSERT INTO cat_departamentos (clave,departamento,descripcion) VALUES (id,dep,des); END 
//
DELIMITER ;
/*
Creación procedimiento modificar
*/
DELIMITER //
DROP PROCEDURE IF EXISTS sp_mod_dep //
CREATE PROCEDURE sp_mod_dep(IN dep VARCHAR(100), des VARCHAR(500), id VARCHAR(5)) BEGIN
UPDATE cat_departamentos SET departamento=dep,descripcion=des
WHERE clave=id; END 
//
DELIMITER ;
/*
Creación procedimiento eliminar
*/
DELIMITER //
DROP PROCEDURE IF EXISTS sp_del_dep //
CREATE PROCEDURE sp_del_dep(IN id VARCHAR(5)) BEGIN
UPDATE cat_departamentos SET activo= FALSE
WHERE clave=id; END 
//
DELIMITER ;
/*
--------------------------------------------------------------------------
-       Fin Procedimientos almacenados para la tabla Departamentos       -
--------------------------------------------------------------------------
*/




/*
--------------------------------------------------------------------------
-            Procedimientos almacenados para la tabla Puestos            -
--------------------------------------------------------------------------
Creacion procedimiento almacenado insertar
*/
DELIMITER //
DROP PROCEDURE IF EXISTS sp_ins_puesto //
CREATE PROCEDURE sp_ins_puesto(IN id VARCHAR(5), dep VARCHAR(5),pues VARCHAR(100), des VARCHAR(500)) BEGIN
INSERT INTO cat_puestos (clave,claveDep,puesto,descripcion) VALUES (id,dep,pues,des); END 
//
DELIMITER ;
/*
Creación procedimiento modificar
*/
DELIMITER //
DROP PROCEDURE IF EXISTS sp_mod_puesto //
CREATE PROCEDURE sp_mod_puesto(IN dep VARCHAR(5), pues VARCHAR(100), des VARCHAR(500), id VARCHAR(5)) BEGIN
UPDATE cat_puestos SET claveDep=dep,puesto=pues,descripcion=des
WHERE clave=id; END 
//
DELIMITER ;
/*
Creación procedimiento eliminar
*/
DELIMITER //
DROP PROCEDURE IF EXISTS sp_del_puesto //
CREATE PROCEDURE sp_del_puesto(IN id VARCHAR(5)) BEGIN
UPDATE cat_puestos SET activo= FALSE
WHERE clave=id; END 
//
DELIMITER ;
/*
--------------------------------------------------------------------------
-          Fin Procedimientos almacenados para la tabla Puestos          -
--------------------------------------------------------------------------
*/




/*
--------------------------------------------------------------------------
-        Procedimientos almacenados para la tabla Tipos Contrato         -
--------------------------------------------------------------------------
Creacion procedimiento almacenado insertar
*/
DELIMITER //
DROP PROCEDURE IF EXISTS sp_ins_tipocontrato //
CREATE PROCEDURE sp_ins_tipocontrato(IN id VARCHAR(5), tipo VARCHAR(50)) BEGIN
INSERT INTO cat_tipoContrato (clave,tipoContrato) VALUES (id,tipo); END 
//
DELIMITER ;
/*
Creación procedimiento modificar
*/
DELIMITER //
DROP PROCEDURE IF EXISTS sp_mod_tipocontrato //
CREATE PROCEDURE sp_mod_tipocontrato (IN tpCon VARCHAR(50), id VARCHAR(5)) BEGIN
UPDATE cat_tipoContrato SET tipoContrato=tpCon
WHERE clave=id; END
//
DELIMITER;
/*
Creación procedimiento eliminar
*/
DELIMITER //
DROP PROCEDURE IF EXISTS sp_del_tipocontrato //
CREATE PROCEDURE sp_del_tipocontrato(IN id VARCHAR(5)) BEGIN
UPDATE cat_tipoContrato SET activo= FALSE
WHERE clave=id; END
//
DELIMITER;




/*
--------------------------------------------------------------------------
-        Procedimientos almacenados para la tabla Tipos Jornadas         -
--------------------------------------------------------------------------
Creacion procedimiento almacenado insertar
*/
DELIMITER //
DROP PROCEDURE IF EXISTS sp_ins_tipojornada //
CREATE PROCEDURE sp_ins_tipojornada(IN id VARCHAR(5), tipoJor VARCHAR(50)) BEGIN
INSERT INTO cat_tiposJornadas (clave,tipoJornada) VALUES (id,tipoJor); END
//
DELIMITER;
/*
Creación procedimiento modificar
*/
DELIMITER //
DROP PROCEDURE if EXISTS sp_mod_tipojornada //
CREATE PROCEDURE sp_mod_tipojornada (IN tipoJor VARCHAR(50), id VARCHAR(5)) BEGIN
UPDATE cat_tiposJornadas SET tipoJornada=tipoJor WHERE clave=id;
END
//
DELIMITER;
/*
Creación procedimiento eliminar
*/
DELIMITER //
DROP PROCEDURE IF EXISTS sp_del_tipojornada //
 CREATE PROCEDURE sp_del_tipojornada(IN id VARCHAR(5)) BEGIN
 UPDATE cat_tiposJornadas SET activo=FALSE WHERE clave= id;
 END
 //
 DELIMITER;




 /*
--------------------------------------------------------------------------
-       Procedimientos almacenados para la tabla Periodicidad Pago       -
--------------------------------------------------------------------------
Creacion procedimiento almacenado insertar
*/
DELIMITER //
DROP PROCEDURE if EXISTS sp_ins_periodicidadpago //
CREATE PROCEDURE sp_ins_periodicidadpago(IN id VARCHAR(5),periodpag VARCHAR(50)) BEGIN
INSERT INTO cat_periodicidadesPagos (clave,periodoPago) VALUES (id,periodpag);
END //
DELIMITER;
/*
Creación procedimiento modificar
*/
DELIMITER //
DROP PROCEDURE if EXISTS sp_mod_periodicidadpago //
CREATE PROCEDURE sp_mod_periodicidadpago(IN periodpag VARCHAR(50), id VARCHAR(5)) BEGIN
update cat_periodicidadesPagos SET periodoPago=periodpag WHERE clave=id;
END //
DELIMITER;
/*
Creación procedimiento eliminar
*/
DELIMITER //
DROP PROCEDURE if EXISTS sp_del_periodicidadpago //
CREATE PROCEDURE sp_del_periodicidadpago(IN id VARCHAR(5)) BEGIN
update cat_periodicidadesPagos SET activo=FALSE WHERE clave=id;
END //
DELIMITER;




 /*
--------------------------------------------------------------------------
-       Procedimientos almacenados para la tabla Periodicidad Pago       -
--------------------------------------------------------------------------
Creacion procedimiento almacenado insertar
*/
DELIMITER //
DROP PROCEDURE IF EXISTS sp_ins_rct //
CREATE PROCEDURE sp_ins_rct(IN id VARCHAR(5), rct VARCHAR(200)) BEGIN
INSERT INTO cat_RCT (clave,descripcion) VALUES (id,rct);
END //
DELIMITER;
/*
Creación procedimiento modificar
*/
DELIMITER //
DROP PROCEDURE if EXISTS sp_mod_rct //
CREATE PROCEDURE sp_mod_rct(IN rct VARCHAR(200), id VARCHAR(5)) BEGIN
update cat_RCT SET descripcion=rct WHERE clave=id;
END //
DELIMITER;
/*
Creación procedimiento eliminar
*/
DELIMITER //
DROP PROCEDURE if EXISTS sp_del_rct //
CREATE PROCEDURE sp_del_rct(IN id VARCHAR(5)) BEGIN
update cat_RCT SET activo=FALSE WHERE clave=id;
END //
DELIMITER;




 /*
--------------------------------------------------------------------------
-       Procedimientos almacenados para la tabla Periodicidad Pago       -
--------------------------------------------------------------------------
Creacion procedimiento almacenado insertar
*/
DELIMITER //
DROP PROCEDURE if EXISTS sp_ins_bancos //
CREATE PROCEDURE sp_ins_bancos(IN id VARCHAR(5), nombre VARCHAR(50), razon VARCHAR(200)) BEGIN
INSERT INTO cat_Bamcos(clave,nombreCorto,razonSocial) VALUES (id,nombre,razon);
END //
DELIMITER;
/*
Creación procedimiento modificar
*/

/*
Creación procedimiento eliminar
*/
/*
	Se crea la base de datos si no existe
*/
CREATE DATABASE IF NOT EXISTS SICEN; USE SICEN;
/*
	Catálogos del sistema
*/
CREATE TABLE IF NOT EXISTS cat_departamentos
(
	clave VARCHAR(5) PRIMARY KEY,
	departamento VARCHAR(100) NOT NULL,
	descripcion VARCHAR(500),
	activo BOOL DEFAULT TRUE
);
CREATE TABLE IF NOT EXISTS cat_puestos
(
	clave VARCHAR(5) PRIMARY KEY,
	claveDep VARCHAR(5) REFERENCES cat_departamentos(clave),
	puesto VARCHAR(100) NOT NULL,
	descripcion VARCHAR(500),
	activo BOOL DEFAULT TRUE
);
CREATE TABLE IF NOT EXISTS cat_tipoContrato
(
	clave VARCHAR(5) PRIMARY KEY,
	tipoContrato VARCHAR(50),
	activo BOOL DEFAULT TRUE
);
CREATE TABLE IF NOT EXISTS cat_tiposJornadas
(
	clave VARCHAR(5) PRIMARY KEY,
	tipoJornada VARCHAR(50),
	activo BOOL DEFAULT TRUE
);
CREATE TABLE IF NOT EXISTS cat_periodicidadesPagos
(
	clave VARCHAR(5) PRIMARY KEY,
	periodoPago VARCHAR(50),
	activo BOOL DEFAULT TRUE
);
/*
	Catálogos complementon nomina
*/
CREATE TABLE IF NOT EXISTS cat_RCT
(
	clave VARCHAR(5) PRIMARY KEY,
	descripcion VARCHAR(200) NOT NULL,
	activo BOOL DEFAULT TRUE
);
CREATE TABLE IF NOT EXISTS cat_Bancos
(
	clave VARCHAR(5) PRIMARY KEY,
	nombreCorto VARCHAR(50) NOT NULL,
	razonSocial VARCHAR(300) NOT NULL,
	activo BOOL DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS cat_RiesgoPuesto
(
	clave VARCHAR(5) PRIMARY KEY,
	descripcion VARCHAR(100) NOT NULL,
	activo BOOL DEFAULT TRUE
);
/*Insertamos elementos del catálogo*/
INSERT INTO cat_RiesgoPuesto (clave,descripcion) VALUES ('1', 'Clase I');
INSERT INTO cat_RiesgoPuesto (clave,descripcion) VALUES ('2', 'Clase II');
INSERT INTO cat_RiesgoPuesto (clave,descripcion) VALUES ('3', 'Clase III');
INSERT INTO cat_RiesgoPuesto (clave,descripcion) VALUES ('4', 'Clase IV');
INSERT INTO cat_RiesgoPuesto (clave,descripcion) VALUES ('5', 'Clase V');
CREATE TABLE IF NOT EXISTS cat_TipoPercepcion
(
	clave VARCHAR(5) PRIMARY KEY,
	descripcion VARCHAR(100) NOT NULL,
	activo BOOL DEFAULT TRUE
);
/*Insertamos elementos del catálogo*/
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('001', 'Sueldos, Salarios Rayas y Jornales');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('002', 'Gratificación Anual (Aguinaldo)');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('003', 'Participación de los Trabajadores en las Utilidades PTU');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('004', 'Reembolso de Gastos Médicos Dentales y Hospitalarios');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('005', 'Fondo de Ahorro');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('006', 'Caja de ahorro');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('009', 'Contribuciones a Cargo del Trabajador Pagadas por el Patrón');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('010', 'Premios por puntualidad');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('011', 'Prima de Seguro de vida');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('012', 'Seguro de Gastos Médicos Mayores');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('013', 'Cuotas Sindicales Pagadas por el Patrón');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('014', 'Subsidios por incapacidad');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('015', 'Becas para trabajadores y/o hijos');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('016', 'Otros');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('017', 'Subsidio para el empleo');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('019', 'Horas extra');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('020', 'Prima dominical');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('021', 'Prima vacacional');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('022', 'Prima por antigüedad');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('023', 'Pagos por separación');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('024', 'Seguro de retiro');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('025', 'Indemnizaciones');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('026', 'Reembolso por funeral');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('027', 'Cuotas de seguridad social pagadas por el patrón');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('028', 'Comisiones');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('029', 'Vales de despensa');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('030', 'Vales de restaurante');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('031', 'Vales de gasolina');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('032', 'Vales de ropa');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('033', 'Ayuda para renta');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('034', 'Ayuda para artículos escolares');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('035', 'Ayuda para anteojos');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('036', 'Ayuda para transporte');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('037', 'Ayuda para gastos de funeral');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('038', 'Otros ingresos por salarios');
INSERT INTO cat_TipoPercepcion(clave, descripcion) VALUES ('039', 'Jubilaciones, pensiones o haberes de retiro');
CREATE TABLE IF NOT EXISTS cat_TipoDeduccion
(
	clave VARCHAR(5) PRIMARY KEY,
	descripcion VARCHAR(200),
	comentario VARCHAR(200) DEFAULT '',
	activo BOOL DEFAULT TRUE
);
/*Insertamos elementos del catálogo*/
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('001', 'Seguridad social');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('002', 'ISR');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('003', 'Aportaciones a retiro, cesantía en edad avanzada y vejez.');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('004', 'Otros');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('005', 'Aportaciones a Fondo de vivienda');
INSERT INTO cat_TipoDeduccion(clave, descripcion,comentario) VALUES ('006', 'Descuento por incapacidad', 'Sumatoria de los valores de los atributos Descuento del nodo Incapacidad');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('007', 'Pensión alimenticia');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('008', 'Renta');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('009', 'Préstamos provenientes del Fondo Nacional de la Vivienda para los Trabajadores');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('010', 'Pago por crédito de vivienda');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('011', 'Pago de abonos INFONACOT');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('012', 'Anticipo de salarios');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('013', 'Pagos hechos con exceso al trabajador');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('014', 'Errores');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('015', 'Pérdidas');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('016', 'Averías');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('017', 'Adquisición de artículos producidos por la empresa o establecimiento');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('018', 'Cuotas para la constitución y fomento de sociedades cooperativas y de cajas de ahorro');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('019', 'Cuotas sindicales');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('020', 'Ausencia (Ausentismo)');
INSERT INTO cat_TipoDeduccion(clave, descripcion) VALUES ('021', 'Cuotas obrero patronales');
CREATE TABLE IF NOT EXISTS cat_TipoIncapacidad
(
	clave VARCHAR(5) PRIMARY KEY,
	descripcion VARCHAR(50),
	activo BOOL DEFAULT TRUE
);
/*Insertamos elementos del catálogo*/
INSERT INTO cat_TipoIncapacidad (clave,descripcion) VALUES ('1', 'Riesgo de trabajo');
INSERT INTO cat_TipoIncapacidad (clave,descripcion) VALUES ('2', 'Enfermedad en general');
INSERT INTO cat_TipoIncapacidad (clave,descripcion) VALUES ('3', 'Maternidad');
/*
	Se crean las tablas principales de la base de datos
*/
CREATE TABLE IF NOT EXISTS sys_empleados
(
	numEmp VARCHAR(5) PRIMARY KEY,
	curp VARCHAR(18),
	tipoRegimen VARCHAR(5) REFERENCES cat_RCT(clave),
	nss VARCHAR(12),
	fechaPago DATE,
	fechaInicialPago DATE,
	fechaFinalPago DATE,
	numDiasPagados INT,
	clavePuesto VARCHAR(5) REFERENCES cat_puestos(clave),
	clabe VARCHAR(25),
	banco VARCHAR(5) REFERENCES cat_Bancos(clave),
	fechaInicioRelacionLab DATE,
	tipoContrato VARCHAR(5) REFERENCES cat_tipoContrato(clave),
	tipoJornada VARCHAR(5) REFERENCES cat_tiposJornadas(clave),
	periodoPago VARCHAR(5) REFERENCES cat_periodicidadesPagos(clave),
	salarioBaseCotApor DOUBLE,
	riesgoPuesto VARCHAR(5) REFERENCES cat_RiesgoPuesto(clave),
	salarioDiario DOUBLE,
	activo BOOL DEFAULT TRUE
);
/*
CREATE TABLE IF NOT EXISTS sys_reciboNomina
(
);
*/
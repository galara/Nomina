/*
	Se crea la base de datos si no existe
*/
Create database if not exists SICEN;
use SICEN;
/*
	Se crean las tablas principales de la base de datos
*/


/*
	Catálogos complementon nomina
*/
create table if not exists cat_RCT
(
	clave int primary key,
	descripcion varchar(200) not null,
	activo bool default true
);
create table if not exists cat_Bancos
(
	clave int primary key,
	nombreCorto varchar(50) not null,
	razonSocial varchar(300) not null,
	activo bool default true
);
create table if not exists cat_RiesgoPuesto
(
	clave int primary key,
	Descripción varchar(100) not null,
	activo bool default true
);
create table if not exists cat_TipoPercepcion
(
	clave int primary key,
	descripcion varchar(100) not null,
	activo bool default true
);
create table if not exists cat_TipoDeduccion
(
	clave int primary key,
	descripcion varchar(200),
	comentario varchar(200),
	activo bool default true
);
create table if not exists cat_TipoIncapacidad
(
	clave int primary key,
	descripcion varchar(50),
	activo bool defaul true
);
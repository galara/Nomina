/*
	Se crea la base de datos si no existe
*/
Create database if not exists SICEN;
use SICEN;
/*
	Se crean las tablas principales de la base de datos
*/
/*
	Catálogos del sistema
*/
create table if not exists cat_departamentos
(
	clave varchar(5) primary key,
	departamento varchar(100) not null,
	descripcion varchar(500),
	activo bool default true
);
create table if not exists cat_puestos
(
	clave varchar(5) primary key,
	claveDep varchar(5) references cat_departamentos(clave),
	puesto varchar(100) not null,
	descripcion varchar(500),
	activo bool default true
);

/*
	Catálogos complementon nomina
*/
create table if not exists cat_RCT
(
	clave varchar(5) primary key,
	descripcion varchar(200) not null,
	activo bool default true
);
create table if not exists cat_Bancos
(
	clave varchar(5) primary key,
	nombreCorto varchar(50) not null,
	razonSocial varchar(300) not null,
	activo bool default true
);
create table if not exists cat_RiesgoPuesto
(
	clave varchar(5) primary key,
	Descripción varchar(100) not null,
	activo bool default true
);
create table if not exists cat_TipoPercepcion
(
	clave varchar(5) primary key,
	descripcion varchar(100) not null,
	activo bool default true
);
create table if not exists cat_TipoDeduccion
(
	clave varchar(5) primary key,
	descripcion varchar(200),
	comentario varchar(200),
	activo bool default true
);
create table if not exists cat_TipoIncapacidad
(
	clave varchar(5) primary key,
	descripcion varchar(50),
	activo bool default true
);
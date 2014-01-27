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
/*Insertamos elementos del catálogo*/
insert into cat_RCT (clave,descripcion) values('2','Sueldos y Salarios');
insert into cat_RCT (clave,descripcion) values('3','Jubilados');
insert into cat_RCT (clave,descripcion) values('4','Pensionados');
insert into cat_RCT (clave,descripcion) values('5','Asimilados a salarios, Miembros de las Sociedades Cooperativas de Producción');
insert into cat_RCT (clave,descripcion) values('6','Asimilados a salarios, Integrantes de Sociedades y Asociaciones Civiles');
insert into cat_RCT (clave,descripcion) values('7','Asimilados a salarios, Miembros de consejos directivos, de vigilancia, consultivos, honorarios a administradores, comisarios y gerentes generales.');
insert into cat_RCT (clave,descripcion) values('8','Asimilados a salarios, Actividad empresarial (comisionistas)');
insert into cat_RCT (clave,descripcion) values('9','Asimilados a salarios, Honorarios asimilados a salarios');
insert into cat_RCT (clave,descripcion) values('10','Asimilados a salarios, Ingresos acciones o títulos valor');

create table if not exists cat_Bancos
(
	clave varchar(5) primary key,
	nombreCorto varchar(50) not null,
	razonSocial varchar(300) not null,
	activo bool default true
);
/*Insertamos elementos del catálogo*/
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('002', 'BANAMEX', 'Banco Nacional de México, S.A., Institución de Banca Múltiple, Grupo Financiero Banamex');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('006', 'BANCOMEXT', 'Banco Nacional de Comercio Exterior, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('009', 'BANOBRAS', 'Banco Nacional de Obras y Servicios Públicos, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('012', 'BBVA BANCOMER', 'BBVA Bancomer, S.A., Institución de Banca Múltiple, Grupo Financiero BBVA Bancomer');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('014', 'SANTANDER', 'Banco Santander (México), S.A., Institución de Banca Múltiple, Grupo Financiero Santander');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('019', 'BANJERCITO', 'Banco Nacional del Ejército, Fuerza Aérea y Armada, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('021', 'HSBC', 'HSBC México, S.A., institución De Banca Múltiple, Grupo Financiero HSBC');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('030', 'BAJIO', 'Banco del Bajío, S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('032', 'IXE', 'IXE Banco, S.A., Institución de Banca Múltiple, IXE Grupo Financiero');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('036', 'INBURSA', 'Banco Inbursa, S.A., Institución de Banca Múltiple, Grupo Financiero Inbursa');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('037', 'INTERACCIONES', 'Banco Interacciones, S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('042', 'MIFEL', 'Banca Mifel, S.A., Institución de Banca Múltiple, Grupo Financiero Mifel');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('044', 'SCOTIABANK', 'Scotiabank Inverlat, S.A.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('058', 'BANREGIO', 'Banco Regional de Monterrey, S.A., Institución de Banca Múltiple, Banregio Grupo Financiero');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('059', 'INVEX', 'Banco Invex, S.A., Institución de Banca Múltiple, Invex Grupo Financiero');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('060', 'BANSI', 'Bansi, S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('062', 'AFIRME', 'Banca Afirme, S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('072', 'BANORTE', 'Banco Mercantil del Norte, S.A., Institución de Banca Múltiple, Grupo Financiero Banorte');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('102', 'THE ROYAL BANK', 'The Royal Bank of Scotland México, S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('103', 'AMERICAN EXPRESS', 'American Express Bank (México), S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('106', 'BAMSA', 'Bank of America México, S.A., Institución de Banca Múltiple, Grupo Financiero Bank of America');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('108', 'TOKYO', 'Bank of Tokyo-Mitsubishi UFJ (México), S.A.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('110', 'JP MORGAN', 'Banco J.P. Morgan, S.A., Institución de Banca Múltiple, J.P. Morgan Grupo Financiero');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('112', 'BMONEX', 'Banco Monex, S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('113', 'VE POR MAS', 'Banco Ve Por Mas, S.A. Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('116', 'ING', 'ING Bank (México), S.A., Institución de Banca Múltiple, ING Grupo Financiero');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('124', 'DEUTSCHE', 'Deutsche Bank México, S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('126', 'CREDIT SUISSE', 'Banco Credit Suisse (México), S.A. Institución de Banca Múltiple, Grupo Financiero Credit Suisse (México)');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('127', 'AZTECA', 'Banco Azteca, S.A. Institución de Banca Múltiple.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('128', 'AUTOFIN', 'Banco Autofin México, S.A. Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('129', 'BARCLAYS', 'Barclays Bank México, S.A., Institución de Banca Múltiple, Grupo Financiero Barclays México');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('130', 'COMPARTAMOS', 'Banco Compartamos, S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('131', 'BANCO FAMSA', 'Banco Ahorro Famsa, S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('132', 'BMULTIVA', 'Banco Multiva, S.A., Institución de Banca Múltiple, Multivalores Grupo Financiero');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('133', 'ACTINVER', 'Banco Actinver, S.A. Institución de Banca Múltiple, Grupo Financiero Actinver');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('134', 'WAL-MART', 'Banco Wal-Mart de México Adelante, S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('135', 'NAFIN', 'Nacional Financiera, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('136', 'INTERBANCO', 'Inter Banco, S.A. Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('137', 'BANCOPPEL', ' BanCoppel, S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('138', 'ABC CAPITAL', ' ABC Capital, S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('139', 'UBS BANK UBS', ' Bank México, S.A., Institución de Banca Múltiple, UBS Grupo Financiero');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('140', 'CONSUBANCO', ' Consubanco, S.A. Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('141', 'VOLKSWAGEN', ' Volkswagen Bank, S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('143', 'CIBANCO', ' CIBanco, S.A.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('145', 'BBASE', ' Banco Base, S.A., Institución de Banca Múltiple');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('166', 'BANSEFI', ' Banco del Ahorro Nacional y Servicios Financieros, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('168', 'HIPOTECARIA FEDERAL', ' Sociedad Hipotecaria Federal, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('600', 'MONEXCB', ' Monex Casa de Bolsa, S.A. de C.V. Monex Grupo Financiero');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('601', 'GBM', ' GBM Grupo Bursátil Mexicano, S.A. de C.V. Casa de Bolsa');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('602', 'MASARI', ' Masari Casa de Bolsa, S.A.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('605', 'VALUE', ' Value, S.A. de C.V. Casa de Bolsa');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('606', 'ESTRUCTURADORES', ' Estructuradores del Mercado de Valores Casa de Bolsa, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('607', 'TIBER', ' Casa de Cambio Tiber, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('608', 'VECTOR', ' Vector Casa de Bolsa, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('610', 'B&B', ' B y B, Casa de Cambio, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('614', 'ACCIVAL', ' Acciones y Valores Banamex, S.A. de C.V., Casa de Bolsa');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('615', 'MERRILL LYNCH', ' Merrill Lynch México, S.A. de C.V. Casa de Bolsa');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('616', 'FINAMEX', ' Casa de Bolsa Finamex, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('617', 'VALMEX', ' Valores Mexicanos Casa de Bolsa, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('618', 'UNICA', ' Unica Casa de Cambio, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('619', 'MAPFRE', ' MAPFRE Tepeyac, S.A.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('620', 'PROFUTURO', ' Profuturo G.N.P., S.A. de C.V., Afore');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('621', 'CB ACTINVER', ' Actinver Casa de Bolsa, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('622', 'OACTIN', ' OPERADORA ACTINVER, S.A. DE C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('623', 'SKANDIA', ' Skandia Vida, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('626', 'CBDEUTSCHE', ' Deutsche Securities, S.A. de C.V. CASA DE BOLSA');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('627', 'ZURICH', ' Zurich Compañía de Seguros, S.A.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('628', 'ZURICHVI', ' Zurich Vida, Compañía de Seguros, S.A.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('629', 'SU CASITA', ' Hipotecaria Su Casita, S.A. de C.V. SOFOM ENR');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('630', 'CB INTERCAM', 'Intercam Casa de Bolsa, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('631', 'CI BOLSA', 'CI Casa de Bolsa, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('632', 'BULLTICK CB', 'Bulltick Casa de Bolsa, S.A., de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('633', 'STERLING', 'Sterling Casa de Cambio, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('634', 'FINCOMUN', 'Fincomún, Servicios Financieros Comunitarios, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('636', 'HDI SEGUROS', 'HDI Seguros, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('637', 'ORDER', 'Order Express Casa de Cambio, S.A. de C.V');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('638', 'AKALA', 'Akala, S.A. de C.V., Sociedad Financiera Popular');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('640', 'CB JPMORGAN', 'J.P. Morgan Casa de Bolsa, S.A. de C.V. J.P. Morgan Grupo Financiero');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('642', 'REFORMA', 'Operadora de Recursos Reforma, S.A. de C.V., S.F.P.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('646', 'STP', 'Sistema de Transferencias y Pagos STP, S.A. de C.V.SOFOM ENR');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('647', 'TELECOMM', 'Telecomunicaciones de México');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('648', 'EVERCORE', 'Evercore Casa de Bolsa, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('649', 'SKANDIA', 'Skandia Operadora de Fondos, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('651', 'SEGMTY', 'Seguros Monterrey New York Life, S.A de C.V');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('652', 'ASEA', 'Solución Asea, S.A. de C.V., Sociedad Financiera Popular');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('653', 'KUSPIT', 'Kuspit Casa de Bolsa, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('655', 'SOFIEXPRESS', 'J.P. SOFIEXPRESS, S.A. de C.V., S.F.P.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('656', 'UNAGRA', 'UNAGRA, S.A. de C.V., S.F.P.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('659', 'OPCIONES EMPRESARIALES DEL NOROESTE', 'OPCIONES EMPRESARIALES DEL NORESTE, S.A. DE C.V., S.F.P.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('901', 'CLS', 'Cls Bank International');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('902', 'INDEVAL', 'SD. Indeval, S.A. de C.V.');
insert into cat_Bancos (clave, nombreCorto,razonSocial) values ('670', 'LIBERTAD', 'Libertad Servicios Financieros, S.A. De C.V.');

create table if not exists cat_RiesgoPuesto
(
	clave varchar(5) primary key,
	descripcion varchar(100) not null,
	activo bool default true
);
/*Insertamos elementos del catálogo*/
insert into cat_RiesgoPuesto (clave,descripcion) values ('1', 'Clase I');
insert into cat_RiesgoPuesto (clave,descripcion) values ('2', 'Clase II');
insert into cat_RiesgoPuesto (clave,descripcion) values ('3', 'Clase III');
insert into cat_RiesgoPuesto (clave,descripcion) values ('4', 'Clase IV');
insert into cat_RiesgoPuesto (clave,descripcion) values ('5', 'Clase V');

create table if not exists cat_TipoPercepcion
(
	clave varchar(5) primary key,
	descripcion varchar(100) not null,
	activo bool default true
);
/*Insertamos elementos del catálogo*/
insert into cat_TipoPercepcion(clave, descripcion) values ('001', 'Sueldos, Salarios Rayas y Jornales');
insert into cat_TipoPercepcion(clave, descripcion) values ('002', 'Gratificación Anual (Aguinaldo)'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('003', 'Participación de los Trabajadores en las Utilidades PTU');
insert into cat_TipoPercepcion(clave, descripcion) values ('004', 'Reembolso de Gastos Médicos Dentales y Hospitalarios'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('005', 'Fondo de Ahorro'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('006', 'Caja de ahorro'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('009', 'Contribuciones a Cargo del Trabajador Pagadas por el Patrón');
insert into cat_TipoPercepcion(clave, descripcion) values ('010', 'Premios por puntualidad'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('011', 'Prima de Seguro de vida'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('012', 'Seguro de Gastos Médicos Mayores');
insert into cat_TipoPercepcion(clave, descripcion) values ('013', 'Cuotas Sindicales Pagadas por el Patrón');
insert into cat_TipoPercepcion(clave, descripcion) values ('014', 'Subsidios por incapacidad'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('015', 'Becas para trabajadores y/o hijos'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('016', 'Otros'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('017', 'Subsidio para el empleo');
insert into cat_TipoPercepcion(clave, descripcion) values ('019', 'Horas extra'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('020', 'Prima dominical'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('021', 'Prima vacacional'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('022', 'Prima por antigüedad'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('023', 'Pagos por separación'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('024', 'Seguro de retiro'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('025', 'Indemnizaciones'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('026', 'Reembolso por funeral'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('027', 'Cuotas de seguridad social pagadas por el patrón'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('028', 'Comisiones'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('029', 'Vales de despensa'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('030', 'Vales de restaurante'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('031', 'Vales de gasolina'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('032', 'Vales de ropa'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('033', 'Ayuda para renta'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('034', 'Ayuda para artículos escolares'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('035', 'Ayuda para anteojos'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('036', 'Ayuda para transporte'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('037', 'Ayuda para gastos de funeral'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('038', 'Otros ingresos por salarios'); 
insert into cat_TipoPercepcion(clave, descripcion) values ('039', 'Jubilaciones, pensiones o haberes de retiro');

create table if not exists cat_TipoDeduccion
(
	clave varchar(5) primary key,
	descripcion varchar(200),
	comentario varchar(200) default '',
	activo bool default true
);
/*Insertamos elementos del catálogo*/
insert into cat_TipoDeduccion(clave, descripcion) values ('001', 'Seguridad social');
insert into cat_TipoDeduccion(clave, descripcion) values ('002', 'ISR');
insert into cat_TipoDeduccion(clave, descripcion) values ('003', 'Aportaciones a retiro, cesantía en edad avanzada y vejez.');
insert into cat_TipoDeduccion(clave, descripcion) values ('004', 'Otros');
insert into cat_TipoDeduccion(clave, descripcion) values ('005', 'Aportaciones a Fondo de vivienda');
insert into cat_TipoDeduccion(clave, descripcion,comentario) values ('006', 'Descuento por incapacidad', 'Sumatoria de los valores de los atributos Descuento del nodo Incapacidad');
insert into cat_TipoDeduccion(clave, descripcion) values ('007', 'Pensión alimenticia');
insert into cat_TipoDeduccion(clave, descripcion) values ('008', 'Renta');
insert into cat_TipoDeduccion(clave, descripcion) values ('009', 'Préstamos provenientes del Fondo Nacional de la Vivienda para los Trabajadores');
insert into cat_TipoDeduccion(clave, descripcion) values ('010', 'Pago por crédito de vivienda');
insert into cat_TipoDeduccion(clave, descripcion) values ('011', 'Pago de abonos INFONACOT');
insert into cat_TipoDeduccion(clave, descripcion) values ('012', 'Anticipo de salarios');
insert into cat_TipoDeduccion(clave, descripcion) values ('013', 'Pagos hechos con exceso al trabajador');
insert into cat_TipoDeduccion(clave, descripcion) values ('014', 'Errores');
insert into cat_TipoDeduccion(clave, descripcion) values ('015', 'Pérdidas');
insert into cat_TipoDeduccion(clave, descripcion) values ('016', 'Averías');
insert into cat_TipoDeduccion(clave, descripcion) values ('017', 'Adquisición de artículos producidos por la empresa o establecimiento');
insert into cat_TipoDeduccion(clave, descripcion) values ('018', 'Cuotas para la constitución y fomento de sociedades cooperativas y de cajas de ahorro');
insert into cat_TipoDeduccion(clave, descripcion) values ('019', 'Cuotas sindicales');
insert into cat_TipoDeduccion(clave, descripcion) values ('020', 'Ausencia (Ausentismo)');
insert into cat_TipoDeduccion(clave, descripcion) values ('021', 'Cuotas obrero patronales');

create table if not exists cat_TipoIncapacidad
(
	clave varchar(5) primary key,
	descripcion varchar(50),
	activo bool default true
);
/*Insertamos elementos del catálogo*/
insert into cat_TipoIncapacidad (clave,descripcion) values ('1', 'Riesgo de trabajo');
insert into cat_TipoIncapacidad (clave,descripcion) values ('2', 'Enfermedad en general');
insert into cat_TipoIncapacidad (clave,descripcion) values ('3', 'Maternidad');
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
INSERT INTO cat_tipoContrato (clave,tipoContrato) VALUES ('01','Base');
INSERT INTO cat_tipoContrato (clave,tipoContrato) VALUES ('02','Eventual');
INSERT INTO cat_tipoContrato (clave,tipoContrato) VALUES ('03','Confianza');
INSERT INTO cat_tipoContrato (clave,tipoContrato) VALUES ('04','Sindicalizado');
INSERT INTO cat_tipoContrato (clave,tipoContrato) VALUES ('05','a prueba');
CREATE TABLE IF NOT EXISTS cat_tiposJornadas
(
	clave VARCHAR(5) PRIMARY KEY,
	tipoJornada VARCHAR(50),
	activo BOOL DEFAULT TRUE
);
INSERT INTO cat_tiposJornadas (clave,tipoJornada) VALUES ('01','Diurna');
INSERT INTO cat_tiposJornadas (clave,tipoJornada) VALUES ('02','Nocturna');
INSERT INTO cat_tiposJornadas (clave,tipoJornada) VALUES ('03','Mixta');
INSERT INTO cat_tiposJornadas (clave,tipoJornada) VALUES ('04','Por hora');
INSERT INTO cat_tiposJornadas (clave,tipoJornada) VALUES ('05','Reducida');
INSERT INTO cat_tiposJornadas (clave,tipoJornada) VALUES ('06','Continuada');
INSERT INTO cat_tiposJornadas (clave,tipoJornada) VALUES ('07','Partida');
INSERT INTO cat_tiposJornadas (clave,tipoJornada) VALUES ('08','Por turnos');
CREATE TABLE IF NOT EXISTS cat_periodicidadesPagos
(
	clave VARCHAR(5) PRIMARY KEY,
	periodoPago VARCHAR(50),
	activo BOOL DEFAULT TRUE
);
INSERT INTO cat_periodicidadesPagos (clave, periodoPago) VALUES ('01','diario');
INSERT INTO cat_periodicidadesPagos (clave, periodoPago) VALUES ('02','semanal');
INSERT INTO cat_periodicidadesPagos (clave, periodoPago) VALUES ('03','quincenal');
INSERT INTO cat_periodicidadesPagos (clave, periodoPago) VALUES ('04','catorcenal');
INSERT INTO cat_periodicidadesPagos (clave, periodoPago) VALUES ('05','mensual');
INSERT INTO cat_periodicidadesPagos (clave, periodoPago) VALUES ('06','bimestral');
INSERT INTO cat_periodicidadesPagos (clave, periodoPago) VALUES ('07','unidad de obra');
INSERT INTO cat_periodicidadesPagos (clave, periodoPago) VALUES ('08','comicion');
INSERT INTO cat_periodicidadesPagos (clave, periodoPago) VALUES ('09','precio alcanzado');
/*
	Catálogos complementon nomina
*/
CREATE TABLE IF NOT EXISTS cat_RCT
(
	clave VARCHAR(5) PRIMARY KEY,
	descripcion VARCHAR(200) NOT NULL,
	activo BOOL DEFAULT TRUE
);
/*Insertamos elementos del catálogo*/
INSERT INTO cat_RCT (clave,descripcion) VALUES('2','Sueldos y Salarios');
INSERT INTO cat_RCT (clave,descripcion) VALUES('3','Jubilados');
INSERT INTO cat_RCT (clave,descripcion) VALUES('4','Pensionados');
INSERT INTO cat_RCT (clave,descripcion) VALUES('5','Asimilados a salarios, Miembros de las Sociedades Cooperativas de Producción');
INSERT INTO cat_RCT (clave,descripcion) VALUES('6','Asimilados a salarios, Integrantes de Sociedades y Asociaciones Civiles');
INSERT INTO cat_RCT (clave,descripcion) VALUES('7','Asimilados a salarios, Miembros de consejos directivos, de vigilancia, consultivos, honorarios a administradores, comisarios y gerentes generales.');
INSERT INTO cat_RCT (clave,descripcion) VALUES('8','Asimilados a salarios, Actividad empresarial (comisionistas)');
INSERT INTO cat_RCT (clave,descripcion) VALUES('9','Asimilados a salarios, Honorarios asimilados a salarios');
INSERT INTO cat_RCT (clave,descripcion) VALUES('10','Asimilados a salarios, Ingresos acciones o títulos valor');
CREATE TABLE IF NOT EXISTS cat_Bancos
(
	clave VARCHAR(5) PRIMARY KEY,
	nombreCorto VARCHAR(50) NOT NULL,
	razonSocial VARCHAR(300) NOT NULL,
	activo BOOL DEFAULT TRUE
);
/*Insertamos elementos del catálogo*/
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('002', 'BANAMEX', 'Banco Nacional de México, S.A., Institución de Banca Múltiple, Grupo Financiero Banamex');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('006', 'BANCOMEXT', 'Banco Nacional de Comercio Exterior, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('009', 'BANOBRAS', 'Banco Nacional de Obras y Servicios Públicos, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('012', 'BBVA BANCOMER', 'BBVA Bancomer, S.A., Institución de Banca Múltiple, Grupo Financiero BBVA Bancomer');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('014', 'SANTANDER', 'Banco Santander (México), S.A., Institución de Banca Múltiple, Grupo Financiero Santander');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('019', 'BANJERCITO', 'Banco Nacional del Ejército, Fuerza Aérea y Armada, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('021', 'HSBC', 'HSBC México, S.A., institución De Banca Múltiple, Grupo Financiero HSBC');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('030', 'BAJIO', 'Banco del Bajío, S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('032', 'IXE', 'IXE Banco, S.A., Institución de Banca Múltiple, IXE Grupo Financiero');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('036', 'INBURSA', 'Banco Inbursa, S.A., Institución de Banca Múltiple, Grupo Financiero Inbursa');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('037', 'INTERACCIONES', 'Banco Interacciones, S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('042', 'MIFEL', 'Banca Mifel, S.A., Institución de Banca Múltiple, Grupo Financiero Mifel');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('044', 'SCOTIABANK', 'Scotiabank Inverlat, S.A.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('058', 'BANREGIO', 'Banco Regional de Monterrey, S.A., Institución de Banca Múltiple, Banregio Grupo Financiero');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('059', 'INVEX', 'Banco Invex, S.A., Institución de Banca Múltiple, Invex Grupo Financiero');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('060', 'BANSI', 'Bansi, S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('062', 'AFIRME', 'Banca Afirme, S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('072', 'BANORTE', 'Banco Mercantil del Norte, S.A., Institución de Banca Múltiple, Grupo Financiero Banorte');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('102', 'THE ROYAL BANK', 'The Royal Bank of Scotland México, S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('103', 'AMERICAN EXPRESS', 'American Express Bank (México), S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('106', 'BAMSA', 'Bank of America México, S.A., Institución de Banca Múltiple, Grupo Financiero Bank of America');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('108', 'TOKYO', 'Bank of Tokyo-Mitsubishi UFJ (México), S.A.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('110', 'JP MORGAN', 'Banco J.P. Morgan, S.A., Institución de Banca Múltiple, J.P. Morgan Grupo Financiero');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('112', 'BMONEX', 'Banco Monex, S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('113', 'VE POR MAS', 'Banco Ve Por Mas, S.A. Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('116', 'ING', 'ING Bank (México), S.A., Institución de Banca Múltiple, ING Grupo Financiero');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('124', 'DEUTSCHE', 'Deutsche Bank México, S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('126', 'CREDIT SUISSE', 'Banco Credit Suisse (México), S.A. Institución de Banca Múltiple, Grupo Financiero Credit Suisse (México)');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('127', 'AZTECA', 'Banco Azteca, S.A. Institución de Banca Múltiple.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('128', 'AUTOFIN', 'Banco Autofin México, S.A. Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('129', 'BARCLAYS', 'Barclays Bank México, S.A., Institución de Banca Múltiple, Grupo Financiero Barclays México');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('130', 'COMPARTAMOS', 'Banco Compartamos, S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('131', 'BANCO FAMSA', 'Banco Ahorro Famsa, S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('132', 'BMULTIVA', 'Banco Multiva, S.A., Institución de Banca Múltiple, Multivalores Grupo Financiero');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('133', 'ACTINVER', 'Banco Actinver, S.A. Institución de Banca Múltiple, Grupo Financiero Actinver');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('134', 'WAL-MART', 'Banco Wal-Mart de México Adelante, S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('135', 'NAFIN', 'Nacional Financiera, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('136', 'INTERBANCO', 'Inter Banco, S.A. Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('137', 'BANCOPPEL', ' BanCoppel, S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('138', 'ABC CAPITAL', ' ABC Capital, S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('139', 'UBS BANK UBS', ' Bank México, S.A., Institución de Banca Múltiple, UBS Grupo Financiero');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('140', 'CONSUBANCO', ' Consubanco, S.A. Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('141', 'VOLKSWAGEN', ' Volkswagen Bank, S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('143', 'CIBANCO', ' CIBanco, S.A.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('145', 'BBASE', ' Banco Base, S.A., Institución de Banca Múltiple');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('166', 'BANSEFI', ' Banco del Ahorro Nacional y Servicios Financieros, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('168', 'HIPOTECARIA FEDERAL', ' Sociedad Hipotecaria Federal, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('600', 'MONEXCB', ' Monex Casa de Bolsa, S.A. de C.V. Monex Grupo Financiero');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('601', 'GBM', ' GBM Grupo Bursátil Mexicano, S.A. de C.V. Casa de Bolsa');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('602', 'MASARI', ' Masari Casa de Bolsa, S.A.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('605', 'VALUE', ' Value, S.A. de C.V. Casa de Bolsa');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('606', 'ESTRUCTURADORES', ' Estructuradores del Mercado de Valores Casa de Bolsa, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('607', 'TIBER', ' Casa de Cambio Tiber, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('608', 'VECTOR', ' Vector Casa de Bolsa, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('610', 'B&B', ' B y B, Casa de Cambio, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('614', 'ACCIVAL', ' Acciones y Valores Banamex, S.A. de C.V., Casa de Bolsa');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('615', 'MERRILL LYNCH', ' Merrill Lynch México, S.A. de C.V. Casa de Bolsa');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('616', 'FINAMEX', ' Casa de Bolsa Finamex, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('617', 'VALMEX', ' Valores Mexicanos Casa de Bolsa, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('618', 'UNICA', ' Unica Casa de Cambio, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('619', 'MAPFRE', ' MAPFRE Tepeyac, S.A.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('620', 'PROFUTURO', ' Profuturo G.N.P., S.A. de C.V., Afore');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('621', 'CB ACTINVER', ' Actinver Casa de Bolsa, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('622', 'OACTIN', ' OPERADORA ACTINVER, S.A. DE C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('623', 'SKANDIA', ' Skandia Vida, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('626', 'CBDEUTSCHE', ' Deutsche Securities, S.A. de C.V. CASA DE BOLSA');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('627', 'ZURICH', ' Zurich Compañía de Seguros, S.A.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('628', 'ZURICHVI', ' Zurich Vida, Compañía de Seguros, S.A.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('629', 'SU CASITA', ' Hipotecaria Su Casita, S.A. de C.V. SOFOM ENR');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('630', 'CB INTERCAM', 'Intercam Casa de Bolsa, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('631', 'CI BOLSA', 'CI Casa de Bolsa, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('632', 'BULLTICK CB', 'Bulltick Casa de Bolsa, S.A., de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('633', 'STERLING', 'Sterling Casa de Cambio, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('634', 'FINCOMUN', 'Fincomún, Servicios Financieros Comunitarios, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('636', 'HDI SEGUROS', 'HDI Seguros, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('637', 'ORDER', 'Order Express Casa de Cambio, S.A. de C.V');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('638', 'AKALA', 'Akala, S.A. de C.V., Sociedad Financiera Popular');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('640', 'CB JPMORGAN', 'J.P. Morgan Casa de Bolsa, S.A. de C.V. J.P. Morgan Grupo Financiero');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('642', 'REFORMA', 'Operadora de Recursos Reforma, S.A. de C.V., S.F.P.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('646', 'STP', 'Sistema de Transferencias y Pagos STP, S.A. de C.V.SOFOM ENR');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('647', 'TELECOMM', 'Telecomunicaciones de México');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('648', 'EVERCORE', 'Evercore Casa de Bolsa, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('649', 'SKANDIA', 'Skandia Operadora de Fondos, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('651', 'SEGMTY', 'Seguros Monterrey New York Life, S.A de C.V');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('652', 'ASEA', 'Solución Asea, S.A. de C.V., Sociedad Financiera Popular');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('653', 'KUSPIT', 'Kuspit Casa de Bolsa, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('655', 'SOFIEXPRESS', 'J.P. SOFIEXPRESS, S.A. de C.V., S.F.P.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('656', 'UNAGRA', 'UNAGRA, S.A. de C.V., S.F.P.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('659', 'OPCIONES EMPRESARIALES DEL NOROESTE', 'OPCIONES EMPRESARIALES DEL NORESTE, S.A. DE C.V., S.F.P.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('901', 'CLS', 'Cls Bank International');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('902', 'INDEVAL', 'SD. Indeval, S.A. de C.V.');
INSERT INTO cat_Bancos (clave, nombreCorto,razonSocial) VALUES ('670', 'LIBERTAD', 'Libertad Servicios Financieros, S.A. De C.V.');
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
CREATE TABLE IF NOT EXISTS sys_reciboNomina
(
);
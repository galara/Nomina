
/*
--------------------------------------------------------------------------
 -                  Datos para la tabla Tipos Contrato                   -
--------------------------------------------------------------------------
*/
call sp_ins_tipocontrato('01','Base');
call sp_ins_tipocontrato('02','Eventual');
call sp_ins_tipocontrato('03','Confianza');
call sp_ins_tipocontrato('04','Sindicalizado');
call sp_ins_tipocontrato('05','a prueba');




/*
--------------------------------------------------------------------------
 -                  Datos para la tabla Tipos Jornada                    -
--------------------------------------------------------------------------
*/
call sp_ins_tipojornada('01','Diurna');
call sp_ins_tipojornada('02','Nocturna');
call sp_ins_tipojornada('03','Mixta');
call sp_ins_tipojornada('04','Por hora');
call sp_ins_tipojornada('05','Reducida');
call sp_ins_tipojornada('06','Continuada');
call sp_ins_tipojornada('07','Partida');
call sp_ins_tipojornada('08','Por turnos');




/*
--------------------------------------------------------------------------
 -                  Datos para la tabla Periodicidad Pago                -
--------------------------------------------------------------------------
*/
call sp_ins_periodicidadpago('01','diario');
call sp_ins_periodicidadpago('02','semanal');
call sp_ins_periodicidadpago('03','quincenal');
call sp_ins_periodicidadpago('04','catorcenal');
call sp_ins_periodicidadpago('05','mensual');
call sp_ins_periodicidadpago('06','bimestral');
call sp_ins_periodicidadpago('07','unidad de obra');
call sp_ins_periodicidadpago('08','comicion');
call sp_ins_periodicidadpago('09','precio alcanzado');




/*
--------------------------------------------------------------------------
 -                          Datos para la tabla RCT                      -
--------------------------------------------------------------------------
*/
call sp_ins_rct('2','Sueldos y Salarios');
call sp_ins_rct('3','Jubilados');
call sp_ins_rct('4','Pensionados');
call sp_ins_rct('5','Asimilados a salarios, Miembros de las Sociedades Cooperativas de Producción');
call sp_ins_rct('6','Asimilados a salarios, Integrantes de Sociedades y Asociaciones Civiles');
call sp_ins_rct('7','Asimilados a salarios, Miembros de consejos directivos, de vigilancia, consultivos, honorarios a administradores, comisarios y gerentes generales.');
call sp_ins_rct('8','Asimilados a salarios, Actividad empresarial (comisionistas)');
call sp_ins_rct('9','Asimilados a salarios, Honorarios asimilados a salarios');
call sp_ins_rct('10','Asimilados a salarios, Ingresos acciones o títulos valor');




/*
--------------------------------------------------------------------------
 -                        Datos para la tabla Bancos                     -
--------------------------------------------------------------------------
*/
call sp_ins_bancos('002', 'BANAMEX', 'Banco Nacional de México, S.A., Institución de Banca Múltiple, Grupo Financiero Banamex');
call sp_ins_bancos('006', 'BANCOMEXT', 'Banco Nacional de Comercio Exterior, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
call sp_ins_bancos('009', 'BANOBRAS', 'Banco Nacional de Obras y Servicios Públicos, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
call sp_ins_bancos('012', 'BBVA BANCOMER', 'BBVA Bancomer, S.A., Institución de Banca Múltiple, Grupo Financiero BBVA Bancomer');
call sp_ins_bancos('014', 'SANTANDER', 'Banco Santander (México), S.A., Institución de Banca Múltiple, Grupo Financiero Santander');
call sp_ins_bancos('019', 'BANJERCITO', 'Banco Nacional del Ejército, Fuerza Aérea y Armada, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
call sp_ins_bancos('021', 'HSBC', 'HSBC México, S.A., institución De Banca Múltiple, Grupo Financiero HSBC');
call sp_ins_bancos('030', 'BAJIO', 'Banco del Bajío, S.A., Institución de Banca Múltiple');
call sp_ins_bancos('032', 'IXE', 'IXE Banco, S.A., Institución de Banca Múltiple, IXE Grupo Financiero');
call sp_ins_bancos('036', 'INBURSA', 'Banco Inbursa, S.A., Institución de Banca Múltiple, Grupo Financiero Inbursa');
call sp_ins_bancos('037', 'INTERACCIONES', 'Banco Interacciones, S.A., Institución de Banca Múltiple');
call sp_ins_bancos('042', 'MIFEL', 'Banca Mifel, S.A., Institución de Banca Múltiple, Grupo Financiero Mifel');
call sp_ins_bancos('044', 'SCOTIABANK', 'Scotiabank Inverlat, S.A.');
call sp_ins_bancos('058', 'BANREGIO', 'Banco Regional de Monterrey, S.A., Institución de Banca Múltiple, Banregio Grupo Financiero');
call sp_ins_bancos('059', 'INVEX', 'Banco Invex, S.A., Institución de Banca Múltiple, Invex Grupo Financiero');
call sp_ins_bancos('060', 'BANSI', 'Bansi, S.A., Institución de Banca Múltiple');
call sp_ins_bancos('062', 'AFIRME', 'Banca Afirme, S.A., Institución de Banca Múltiple');
call sp_ins_bancos('072', 'BANORTE', 'Banco Mercantil del Norte, S.A., Institución de Banca Múltiple, Grupo Financiero Banorte');
call sp_ins_bancos('102', 'THE ROYAL BANK', 'The Royal Bank of Scotland México, S.A., Institución de Banca Múltiple');
call sp_ins_bancos('103', 'AMERICAN EXPRESS', 'American Express Bank (México), S.A., Institución de Banca Múltiple');
call sp_ins_bancos('106', 'BAMSA', 'Bank of America México, S.A., Institución de Banca Múltiple, Grupo Financiero Bank of America');
call sp_ins_bancos('108', 'TOKYO', 'Bank of Tokyo-Mitsubishi UFJ (México), S.A.');
call sp_ins_bancos('110', 'JP MORGAN', 'Banco J.P. Morgan, S.A., Institución de Banca Múltiple, J.P. Morgan Grupo Financiero');
call sp_ins_bancos('112', 'BMONEX', 'Banco Monex, S.A., Institución de Banca Múltiple');
call sp_ins_bancos('113', 'VE POR MAS', 'Banco Ve Por Mas, S.A. Institución de Banca Múltiple');
call sp_ins_bancos('116', 'ING', 'ING Bank (México), S.A., Institución de Banca Múltiple, ING Grupo Financiero');
call sp_ins_bancos('124', 'DEUTSCHE', 'Deutsche Bank México, S.A., Institución de Banca Múltiple');
call sp_ins_bancos('126', 'CREDIT SUISSE', 'Banco Credit Suisse (México), S.A. Institución de Banca Múltiple, Grupo Financiero Credit Suisse (México)');
call sp_ins_bancos('127', 'AZTECA', 'Banco Azteca, S.A. Institución de Banca Múltiple.');
call sp_ins_bancos('128', 'AUTOFIN', 'Banco Autofin México, S.A. Institución de Banca Múltiple');
call sp_ins_bancos('129', 'BARCLAYS', 'Barclays Bank México, S.A., Institución de Banca Múltiple, Grupo Financiero Barclays México');
call sp_ins_bancos('130', 'COMPARTAMOS', 'Banco Compartamos, S.A., Institución de Banca Múltiple');
call sp_ins_bancos('131', 'BANCO FAMSA', 'Banco Ahorro Famsa, S.A., Institución de Banca Múltiple');
call sp_ins_bancos('132', 'BMULTIVA', 'Banco Multiva, S.A., Institución de Banca Múltiple, Multivalores Grupo Financiero');
call sp_ins_bancos('133', 'ACTINVER', 'Banco Actinver, S.A. Institución de Banca Múltiple, Grupo Financiero Actinver');
call sp_ins_bancos('134', 'WAL-MART', 'Banco Wal-Mart de México Adelante, S.A., Institución de Banca Múltiple');
call sp_ins_bancos('135', 'NAFIN', 'Nacional Financiera, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
call sp_ins_bancos('136', 'INTERBANCO', 'Inter Banco, S.A. Institución de Banca Múltiple');
call sp_ins_bancos('137', 'BANCOPPEL', ' BanCoppel, S.A., Institución de Banca Múltiple');
call sp_ins_bancos('138', 'ABC CAPITAL', ' ABC Capital, S.A., Institución de Banca Múltiple');
call sp_ins_bancos('139', 'UBS BANK UBS', ' Bank México, S.A., Institución de Banca Múltiple, UBS Grupo Financiero');
call sp_ins_bancos('140', 'CONSUBANCO', ' Consubanco, S.A. Institución de Banca Múltiple');
call sp_ins_bancos('141', 'VOLKSWAGEN', ' Volkswagen Bank, S.A., Institución de Banca Múltiple');
call sp_ins_bancos('143', 'CIBANCO', ' CIBanco, S.A.');
call sp_ins_bancos('145', 'BBASE', ' Banco Base, S.A., Institución de Banca Múltiple');
call sp_ins_bancos('166', 'BANSEFI', ' Banco del Ahorro Nacional y Servicios Financieros, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
call sp_ins_bancos('168', 'HIPOTECARIA FEDERAL', ' Sociedad Hipotecaria Federal, Sociedad Nacional de Crédito, Institución de Banca de Desarrollo');
call sp_ins_bancos('600', 'MONEXCB', ' Monex Casa de Bolsa, S.A. de C.V. Monex Grupo Financiero');
call sp_ins_bancos('601', 'GBM', ' GBM Grupo Bursátil Mexicano, S.A. de C.V. Casa de Bolsa');
call sp_ins_bancos('602', 'MASARI', ' Masari Casa de Bolsa, S.A.');
call sp_ins_bancos('605', 'VALUE', ' Value, S.A. de C.V. Casa de Bolsa');
call sp_ins_bancos('606', 'ESTRUCTURADORES', ' Estructuradores del Mercado de Valores Casa de Bolsa, S.A. de C.V.');
call sp_ins_bancos('607', 'TIBER', ' Casa de Cambio Tiber, S.A. de C.V.');
call sp_ins_bancos('608', 'VECTOR', ' Vector Casa de Bolsa, S.A. de C.V.');
call sp_ins_bancos('610', 'B&B', ' B y B, Casa de Cambio, S.A. de C.V.');
call sp_ins_bancos('614', 'ACCIVAL', ' Acciones y Valores Banamex, S.A. de C.V., Casa de Bolsa');
call sp_ins_bancos('615', 'MERRILL LYNCH', ' Merrill Lynch México, S.A. de C.V. Casa de Bolsa');
call sp_ins_bancos('616', 'FINAMEX', ' Casa de Bolsa Finamex, S.A. de C.V.');
call sp_ins_bancos('617', 'VALMEX', ' Valores Mexicanos Casa de Bolsa, S.A. de C.V.');
call sp_ins_bancos('618', 'UNICA', ' Unica Casa de Cambio, S.A. de C.V.');
call sp_ins_bancos('619', 'MAPFRE', ' MAPFRE Tepeyac, S.A.');
call sp_ins_bancos('620', 'PROFUTURO', ' Profuturo G.N.P., S.A. de C.V., Afore');
call sp_ins_bancos('621', 'CB ACTINVER', ' Actinver Casa de Bolsa, S.A. de C.V.');
call sp_ins_bancos('622', 'OACTIN', ' OPERADORA ACTINVER, S.A. DE C.V.');
call sp_ins_bancos('623', 'SKANDIA', ' Skandia Vida, S.A. de C.V.');
call sp_ins_bancos('626', 'CBDEUTSCHE', ' Deutsche Securities, S.A. de C.V. CASA DE BOLSA');
call sp_ins_bancos('627', 'ZURICH', ' Zurich Compañía de Seguros, S.A.');
call sp_ins_bancos('628', 'ZURICHVI', ' Zurich Vida, Compañía de Seguros, S.A.');
call sp_ins_bancos('629', 'SU CASITA', ' Hipotecaria Su Casita, S.A. de C.V. SOFOM ENR');
call sp_ins_bancos('630', 'CB INTERCAM', 'Intercam Casa de Bolsa, S.A. de C.V.');
call sp_ins_bancos('631', 'CI BOLSA', 'CI Casa de Bolsa, S.A. de C.V.');
call sp_ins_bancos('632', 'BULLTICK CB', 'Bulltick Casa de Bolsa, S.A., de C.V.');
call sp_ins_bancos('633', 'STERLING', 'Sterling Casa de Cambio, S.A. de C.V.');
call sp_ins_bancos('634', 'FINCOMUN', 'Fincomún, Servicios Financieros Comunitarios, S.A. de C.V.');
call sp_ins_bancos('636', 'HDI SEGUROS', 'HDI Seguros, S.A. de C.V.');
call sp_ins_bancos('637', 'ORDER', 'Order Express Casa de Cambio, S.A. de C.V');
call sp_ins_bancos('638', 'AKALA', 'Akala, S.A. de C.V., Sociedad Financiera Popular');
call sp_ins_bancos('640', 'CB JPMORGAN', 'J.P. Morgan Casa de Bolsa, S.A. de C.V. J.P. Morgan Grupo Financiero');
call sp_ins_bancos('642', 'REFORMA', 'Operadora de Recursos Reforma, S.A. de C.V., S.F.P.');
call sp_ins_bancos('646', 'STP', 'Sistema de Transferencias y Pagos STP, S.A. de C.V.SOFOM ENR');
call sp_ins_bancos('647', 'TELECOMM', 'Telecomunicaciones de México');
call sp_ins_bancos('648', 'EVERCORE', 'Evercore Casa de Bolsa, S.A. de C.V.');
call sp_ins_bancos('649', 'SKANDIA', 'Skandia Operadora de Fondos, S.A. de C.V.');
call sp_ins_bancos('651', 'SEGMTY', 'Seguros Monterrey New York Life, S.A de C.V');
call sp_ins_bancos('652', 'ASEA', 'Solución Asea, S.A. de C.V., Sociedad Financiera Popular');
call sp_ins_bancos('653', 'KUSPIT', 'Kuspit Casa de Bolsa, S.A. de C.V.');
call sp_ins_bancos('655', 'SOFIEXPRESS', 'J.P. SOFIEXPRESS, S.A. de C.V., S.F.P.');
call sp_ins_bancos('656', 'UNAGRA', 'UNAGRA, S.A. de C.V., S.F.P.');
call sp_ins_bancos('659', 'OPCIONES EMPRESARIALES DEL NOROESTE', 'OPCIONES EMPRESARIALES DEL NORESTE, S.A. DE C.V., S.F.P.');
call sp_ins_bancos('901', 'CLS', 'Cls Bank International');
call sp_ins_bancos('902', 'INDEVAL', 'SD. Indeval, S.A. de C.V.');
call sp_ins_bancos('670', 'LIBERTAD', 'Libertad Servicios Financieros, S.A. De C.V.');
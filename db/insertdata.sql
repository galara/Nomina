
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
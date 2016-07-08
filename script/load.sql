delete from permiso;
alter table permiso auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/1. permiso.csv'
INTO TABLE permiso
fields terminated BY ";"
lines terminated BY "\n"
ignore 1 rows
(perm_id,perm_desc,perm_esta,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);

delete from accion;
alter table accion auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/2. accion.csv'
INTO TABLE accion
fields terminated BY ";"
lines terminated BY "\n"
ignore 1 rows
(acci_id,acci_desc,acci_esta,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);


delete from accion;
alter table accion auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/2. accion.csv'
INTO TABLE accion
fields terminated BY ";"
lines terminated BY "\n"
ignore 1 rows
(acci_id,acci_desc,acci_esta,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);

delete from permiso_accion;
alter table permiso_accion auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/3. permiso_accion.csv'
INTO TABLE permiso_accion
fields terminated BY ";"
lines terminated BY "\n"
ignore 1 rows
(perm_acci_id,perm_id,acci_id,perm_acci_esta,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);


delete from cargo;
alter table cargo auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/4. cargo.csv'
INTO TABLE cargo
fields terminated BY ";"
lines terminated BY "\n"
ignore 1 rows
(carg_id,carg_nomb,carg_esta,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);


delete from cargo_permiso_accion;
alter table cargo_permiso_accion auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/5. cargo_permiso_accion.csv'
INTO TABLE cargo_permiso_accion
fields terminated BY ";"
lines terminated BY "\n"
ignore 1 rows
(carg_perm_acci_id,carg_id,perm_acci_id,carg_perm_acci_esta,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);

delete from personal;
alter table personal auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/6. personal.csv'
INTO TABLE personal
fields terminated BY ";"
lines terminated BY "\n"
ignore 1 rows
(pers_id,pers_dni,pers_nomb,pers_apel,pers_fnac,@pers_dire,pers_telf,pers_fing,@pers_emai,pers_esta,@audi_freg,@audi_fact,@user_id,carg_id)
set
pers_dire=REPLACE(@pers_dire,'NULL',null),
pers_emai=REPLACE(@pers_emai,'NULL',null),
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);


delete from usuario;
alter table usuario auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/7. usuario.csv'
INTO TABLE usuario
fields terminated BY ";"
lines terminated BY "\n"
ignore 1 rows
(user_id,user_user,user_pass,user_esta,@audi_freg,@audi_fact,@user_user_id,pers_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_user_id=REPLACE(@user_id,'NULL',null);

delete from tramo;
alter table tramo auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/8. tramo.csv'
INTO TABLE tramo
fields terminated BY ";"
lines terminated BY "\n"
ignore 1 rows
(tram_id,tram_nomb,tram_carr,tram_kini,tram_kfin,tram_ktot,tram_aper,tram_esta,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);

delete from sector;
alter table sector auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/9. sector.csv'
INTO TABLE sector
fields terminated BY ";"
lines terminated BY "\n"
ignore 1 rows
(sect_id,sect_nomb, sect_esta,@audi_freg,@audi_fact,@user_id,tram_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);


delete from elemento;
alter table elemento auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/10. elemento.csv'
INTO TABLE elemento
fields terminated BY ";"
lines terminated BY "\n"
ignore 1 rows
(elem_id,elem_desc,elem_esta,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);

delete from codigo_elemento;
alter table codigo_elemento auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/11. codigo_elemento.csv'
INTO TABLE codigo_elemento
fields terminated BY ";"
lines terminated BY "\n"
ignore 1 rows
(coel_id,coel_codi,coel_esta,@audi_freg,@audi_fact,@user_id,elem_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);

delete from tipo_actividad;
alter table tipo_actividad auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/12. tipo_actividad.csv'
INTO TABLE tipo_actividad
fields terminated BY ";"
lines terminated BY "\n"
ignore 1 rows
(tiac_id,tiac_desc,tiac_esta,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);

delete from actividad;
alter table actividad auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/13. actividad.csv'
INTO TABLE actividad
fields terminated BY ";"
optionally enclosed by '"'
lines terminated BY "\n"
ignore 1 rows
(acti_id,acti_item,acti_desc,acti_unim,acti_esta,@audi_freg,@audi_fact,@user_id,tiac_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);


delete from tramo_codigo_elemento;
alter table tramo_codigo_elemento auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/14. tramo_codigo_elemento.csv'
INTO TABLE tramo_codigo_elemento
fields terminated BY ";"
optionally enclosed by '"'
lines terminated BY "\n"
ignore 1 rows
(tram_coel_id,tram_id,elem_id,coel_id,tram_coel_kini,tram_coel_kfin,tram_coel_alto,tram_coel_lado,tram_coel_long,tram_coel_anch,tram_coel_cant,tram_coel_stot,tram_coel_obsv,tram_coel_esta,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);

delete from cliente_tipo;
alter table cliente_tipo auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/15. cliente_tipo.csv'
INTO TABLE cliente_tipo
fields terminated BY ";"
optionally enclosed by '"'
lines terminated BY "\n"
ignore 1 rows
(clti_id,clti_nomb,clti_esta,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);


delete from cliente;
alter table cliente auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/16. cliente.csv'
INTO TABLE cliente
fields terminated BY ";"
optionally enclosed by '"'
lines terminated BY "\n"
ignore 1 rows
(clie_id,clie_ruc,clie_rsoc,clie_dire,clie_telf,clie_esta,@audi_freg,@audi_fact,@user_id,clti_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);


delete from contrato;
alter table contrato auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/17. contrato.csv'
INTO TABLE contrato
fields terminated BY ";"
optionally enclosed by '"'
lines terminated BY "\n"
ignore 1 rows
(cont_id,cont_nomb,cont_proy,cont_fini,cont_ffin,cont_plaz,cont_mont,cont_espe,cont_esta,clie_id,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);


delete from contrato_tramo;
alter table contrato_tramo auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/18. contrato_tramo.csv'
INTO TABLE contrato_tramo
fields terminated BY ";"
optionally enclosed by '"'
lines terminated BY "\n"
ignore 1 rows
(cont_tram_id,cont_id,tram_id,cont_tram_esta,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);

delete from contrato_tramo_actividad;
alter table contrato_tramo_actividad auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/19. contrato_tramo_actividad.csv'
INTO TABLE contrato_tramo_actividad
fields terminated BY ";"
optionally enclosed by '"'
lines terminated BY "\n"
ignore 1 rows
(cont_tram_acti_id,cont_tram_id, acti_id,cont_tram_acti_esta,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);


delete from contrato_tramo_personal;
alter table contrato_tramo_personal auto_increment=1;
LOAD DATA infile 'C:/Users/Luis/Documents/UNJFSC/D.E/SGMV/csv/20. contrato_tramo_personal.csv'
INTO TABLE contrato_tramo_personal
fields terminated BY ";"
optionally enclosed by '"'
lines terminated BY "\n"
ignore 1 rows
(cont_tram_pers_id,cont_tram_id, pers_id,cont_tram_pers_esta,@audi_freg,@audi_fact,@user_id)
set
audi_freg=REPLACE(@audi_freg,'now()',now()),
audi_fact=REPLACE(@audi_fact,'now()',now()),
user_id=REPLACE(@user_id,'NULL',null);
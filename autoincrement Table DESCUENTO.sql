CREATE SEQUENCE "IDDESCUENTO_SEQ" START WITH 1;

--------------------------------------------------------
--  DDL for Trigger TRG_AUTOINCREMENT_IDTIENDA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MISOFERTAS"."TRG_AUTOINCREMENT_IDDESCUENTO" 
    before insert on DESCUENTO
    for each row
  begin
    select IDDESCUENTO_SEQ.nextval
      into :new.IDDESCUENTO
      from dual;
  end;
/
ALTER TRIGGER "MISOFERTAS"."TRG_AUTOINCREMENT_IDDESCUENTO" ENABLE;
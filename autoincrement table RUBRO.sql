CREATE SEQUENCE "IDRUBRO_SEQ" START WITH 1;

--------------------------------------------------------
--  DDL for Trigger TRG_AUTOINCREMENT_IDTIENDA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MISOFERTAS"."TRG_AUTOINCREMENT_IDRUBRO" 
    before insert on RUBRO
    for each row
  begin
    select IDRUBRO_SEQ.nextval
      into :new.IDRUBRO
      from dual;
  end;
/
ALTER TRIGGER "MISOFERTAS"."TRG_AUTOINCREMENT_IDRUBRO" ENABLE;

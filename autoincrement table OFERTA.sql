CREATE SEQUENCE "IDOFERTA_SEQ" START WITH 1;

--------------------------------------------------------
--  DDL for Trigger TRG_AUTOINCREMENT_IDTIENDA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MISOFERTAS"."TRG_AUTOINCREMENT_IDOFERTA" 
    before insert on OFERTA
    for each row
  begin
    select IDOFERTA_SEQ.nextval
      into :new.IDOFERTA
      from dual;
  end;
/
ALTER TRIGGER "MISOFERTAS"."TRG_AUTOINCREMENT_IDOFERTA" ENABLE;
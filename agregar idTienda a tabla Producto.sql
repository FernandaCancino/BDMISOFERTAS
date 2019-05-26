--AGREGAR ID TIENDA A PRODUCTO
ALTER TABLE PRODUCTO ADD IDTIENDA NUMBER(38,0);


--------------------------------------------------------
--  Ref Constraints for Table PRODUCTO - TIENDA
--------------------------------------------------------

ALTER TABLE "MISOFERTAS"."PRODUCTO" ADD CONSTRAINT "TIENDA_FK" FOREIGN KEY ("IDTIENDA")
REFERENCES "MISOFERTAS"."TIENDA" ("IDTIENDA") ENABLE;


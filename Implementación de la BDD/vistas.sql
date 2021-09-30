-- vistas para implementar la transparencia de consultas sobre la base de datos


CREATE VIEW productor_v as
SELECT * FROM productor;   


CREATE VIEW sucursal_pedido_sucursal_v as
SELECT * FROM sucursal_pedido_sucursal;  


CREATE VIEW empleado_v as 
SELECT * FROM juanal1.empleado
UNION
SELECT * FROM juanal2.empleado
UNION 
SELECT * FROM juanal3.empleado
UNION 
SELECT * FROM juanal4.empleado ;


CREATE VIEW sucursal_v as 
SELECT * FROM juanal1.sucursal
UNION
SELECT * FROM juanal2.sucursal
UNION 
SELECT * FROM juanal3.sucursal
UNION 
SELECT * FROM juanal4.sucursal ;


CREATE VIEW clientes_v as 
SELECT * FROM juanal1.clientes
UNION
SELECT * FROM juanal2.clientes
UNION 
SELECT * FROM juanal3.clientes
UNION 
SELECT * FROM juanal4.clientes ;


CREATE VIEW vinos_v as 
SELECT * FROM juanal1.vinos
UNION
SELECT * FROM juanal2.vinos
UNION 
SELECT * FROM juanal3.vinos
UNION 
SELECT * FROM juanal4.vinos ;


CREATE VIEW cliente_solicita_suministro_v as 
SELECT * FROM juanal1.cliente_solicita_suministro
UNION
SELECT * FROM juanal2.cliente_solicita_suministro
UNION 
SELECT * FROM juanal3.cliente_solicita_suministro
UNION 
SELECT * FROM juanal4.cliente_solicita_suministro ;


CREATE VIEW sucursal_distribuye_vino_v as 
SELECT * FROM juanal1.sucursal_distribuye_vino
UNION
SELECT * FROM juanal2.sucursal_distribuye_vino
UNION 
SELECT * FROM juanal3.sucursal_distribuye_vino
UNION 
SELECT * FROM juanal4.sucursal_distribuye_vino ;



CREATE VIEW empleado_trabaja_en_sucursal_v AS
SELECT * FROM juanal4.empleado_trabaja_en_sucursal;

CREATE VIEW productores_producen_vinos_v AS
SELECT * FROM juanal4.productores_producen_vinos_v;
commit;

COMMIT; 


/*

DROP VIEW empleado_v;
DROP VIEW sucursal_v;
DROP VIEW clientes_v;
DROP VIEW vinos_v;
DROP VIEW cliente_solicita_suministro_v;
DROP VIEW sucursal_distribuye_vino_v; 
DROP VIEW productor_v;
DROP VIEW sucursal_pedido_sucursal_v; 

*/ 


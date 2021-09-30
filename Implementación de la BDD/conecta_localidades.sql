-- conectar las localidades

 -- CUENTA 1
grant delete, insert, update, select on empleado to juanal2, juanal3, juanal4 ;
grant delete, insert, update, select on sucursal to juanal2, juanal3, juanal4 ;
grant delete, insert, update, select on clientes to juanal2, juanal3, juanal4 ;
grant delete, insert, update, select on vinos    to juanal2, juanal3, juanal4 ;
grant delete, insert, update, select on cliente_solicita_suministro to juanal2, juanal3, juanal4 ;
grant delete, insert, update, select on sucursal_distribuye_vino to juanal2, juanal3, juanal4 ;
grant delete, insert, update, select on productor to juanal2, juanal3, juanal4 ;
grant delete, insert, update, select on sucursal_pedido_sucursal to juanal2, juanal3, juanal4 ;
commit;



-- CUENTA 2
grant delete, insert, update, select on empleado to juanal1, juanal3, juanal4 ;
grant delete, insert, update, select on sucursal to juanal1, juanal3, juanal4 ;
grant delete, insert, update, select on clientes to juanal1, juanal3, juanal4 ;
grant delete, insert, update, select on vinos    to juanal1, juanal3, juanal4 ;
grant delete, insert, update, select on cliente_solicita_suministro to juanal1, juanal3, juanal4 ;
grant delete, insert, update, select on sucursal_distribuye_vino to juanal1, juanal3, juanal4 ;
grant delete, insert, update, select on productor to juanal1, juanal3, juanal4 ;
grant delete, insert, update, select on sucursal_pedido_sucursal to juanal1, juanal3, juanal4 ;
commit;

--- CUENTA 3
grant delete, insert, update, select on empleado to juanal2, juanal1, juanal4 ;
grant delete, insert, update, select on sucursal to juanal2, juanal1, juanal4 ;
grant delete, insert, update, select on clientes to juanal2, juanal1, juanal4 ;
grant delete, insert, update, select on vinos    to juanal2, juanal1, juanal4 ;
grant delete, insert, update, select on cliente_solicita_suministro to juanal2, juanal1, juanal4 ;
grant delete, insert, update, select on sucursal_distribuye_vino to juanal2, juanal1, juanal4 ;
grant delete, insert, update, select on productor to juanal2, juanal1, juanal4 ;
grant delete, insert, update, select on sucursal_pedido_sucursal to juanal2, juanal1, juanal4 ;
commit;


-- CUENTA 4
grant delete, insert, update, select on empleado to juanal2, juanal3, juanal1 ;
grant delete, insert, update, select on sucursal to juanal2, juanal3, juanal1 ;
grant delete, insert, update, select on clientes to juanal2, juanal3, juanal1 ;
grant delete, insert, update, select on vinos    to juanal2, juanal3, juanal1 ;
grant delete, insert, update, select on cliente_solicita_suministro to juanal2, juanal3, juanal1 ;
grant delete, insert, update, select on sucursal_distribuye_vino to juanal2, juanal3, juanal1 ;
grant delete, insert, update, select on productor to juanal2, juanal3, juanal1 ;
grant delete, insert, update, select on sucursal_pedido_sucursal to juanal2, juanal3, juanal1 ;
commit;





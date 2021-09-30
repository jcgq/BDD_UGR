--------------------------------------------------------------------------------
-- MODELO LÓGICO 
-- ALONSO B.H. , JUAN CARLOS G.Q.
--------------------------------------------------------------------------------


CREATE TABLE empleado (
    cod_empleado number(8) not null,
    dni varchar2(9) not null,
    nombre varchar2(40) not null, 
    fecha_contrato date not null,
    salario number(8,3) default 0 not null,
    direccion varchar2(100),
    cod_sucursal number(8) not null,  -- restricción 7
    primary key cod_empleado
    foreign key (cod_sucursal) references sucursal(cod_sucursal)
);


CREATE TABLE clientes (
    cod_cliente number(8) not null,
    nombre varchar2(40) not null,
    direccion varchar2(100) not null,
    tipo_cliente varchar2(2) ,
    comunidad_autonoma varchar2(40) not null, 
    primary key cod_cliente 
);


CREATE TABLE productor (
    cod_productor number(8) not null,
    dni varchar2(9) not null,
    nombre varchar2(40) not null,
    direccion varchar2(100) not null,
    tipo_productor number(3) ,
    primary key cod_productor 
);
    

CREATE TABLE vinos (
    cod_vino number(8) not null,
    comunidad_autonoma varchar2(40) not null,
    marca varchar2 (40) not null,
    anio number(4) not null,
    denominacion_origen varchar2(40) default null,
    graduacion number(8,2) default 0 not null,
    vinedo_procedencia varchar2(50) not null,
    cantidad_producida number(10) default 0 not null,
    cantidad_en_stock number(10) default 0 not null, 
    cod_productor number(8) not null,
    primary key cod_vino,
    foreign key (cod_productor) references productor(cod_productor),
);


CREATE TABLE sucursal (
    cod_sucursal number(8) not null,
    comunidad_autonoma varchar2(40) not null,
    director number(8) not null,
    nombre varchar2(50) not null,
    primary key cod_sucursal
    foreign key director references empleado(cod_empleado)   -- director es un empleado, pero sin ser empleado de la sucursal
);
    
    
CREATE TABLE sucursal_pedido_sucursal (
    cod_sucursal1 number(8) not null,
    cod_sucursal2 number(8) not null,
    cod_vino      number(8) not null,
    fecha         date not null,
    
    primary key cod_sucursal1,
    primary key cod_sucursal2,
    primary key cod_vino,
    primary key fecha,
    foreign key cod_sucursal1 references sucursal(cod_sucursal),
    foreign key cod_sucursal2 references sucursal(cod_sucursal),
    foreign key cod_vino references vino(cod_vino)
);


/* CREATE TABLE empleado_trabaja_en_sucursal (
    cod_empleado number(8) not null,
    cod_sucursal number(8) not null,
    
    primary key (cod_empleado ),
    foreign key cod_empleado references empleado(cod_empleado),
    --foreign key cod_sucursal references sucursal(cod_sucursal) 
);  */ 


CREATE TABLE cliente_solicita_suministro (
    cod_sucursal number(8) not null,
    cod_vino number(8) not null,
    cod_cliente number(8) not null,
    cantidad number(10) not null,
    
    primary key (cod_sucursal, cod_vino, cod_cliente),
    foreign key cod_sucursal references sucursal(cod_sucursal),
    foreign key cod_vino references vino(cod_vino),
    foreign key cod_cliente references cliente(cod_cliente) 
);

CREATE TABLE sucursal_distribuye_vino (
    cod_sucursal number(8) not null,
    cod_vino number(8) not null,
    
    primary key (cod_sucursal, cod_vino, fecha, tipo_vino ), 
    foreign key cod_sucursal references sucursal(cod_sucursal),  
    foreign key cod_vino references vino(cod_vino) 
);

CREATE TABLE productores_producen_vinos (
    cod_vino number(8) not null,
    cod_productor number(8) not null,
    cantidad number(10) not null, 
    
    primary key (cod_vino),
    foreign key cod_vino references vino(cod_vino) 
);

-- FIN DE CREACIÓN DE TABLAS

commit;


-- CÓDIGO PARA BORRAR ORDENADAMENTE LAS TABLAS 

drop table sucursal;
drop table productor;
drop table clientes;
drop table vinos;
drop table empleado; 
drop table sucursal_pedido_sucursal;
-- drop table empleado_trabaja_en_sucursal;
drop table cliente_solicita_suministro;
drop table sucursal_distribuye_vino;
drop table productores_producen_vinos; 

commit; 
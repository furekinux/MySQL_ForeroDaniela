-- #####################
-- ### EJERCICIO # 1 ###
-- #####################

-- Creación de la base de datos "tienda"

CREATE DATABASE tienda;

USE tienda;

-- ¡CRUD!

-- Crear tabla fabricante
create table fabricante(
id int auto_increment primary key,
nombre varchar(100)
);

-- Crear tabla "producto"
create table producto (
id int auto_increment primary key,
nombre varchar(100),
precio decimal(10,2),
id_fabricante int,
foreign key (id_fabricante) references fabricante(id)
);

-- Crear/Insertar información a fabricante
insert into fabricante values(1,"Asus");
insert into fabricante values(2,"Apple");
insert into fabricante values(3,"HP");
insert into fabricante values(4,"Sony");
insert into fabricante values(5,"Lenovo");
insert into fabricante values(6,"Crucial");
insert into fabricante values(7,"Toshiba");
insert into fabricante values(8,"Huawei");
insert into fabricante values(9,"Xiaomi");
insert into fabricante values(10,"Samsung");

-- Crear/Insertar productor a la tabla
insert into producto values(1,"Disco duro",86.99,10);
insert into producto values(2,"Laptop",100.45,9);
insert into producto values(3,"Pantalla",56.99,8);
insert into producto values(4,"Mouse",12.69,7);
insert into producto values(5,"Laptop",100.45,6);
insert into producto values(6,"PC",110.05,5);
insert into producto values(7,"Batería",70.68,4);
insert into producto values(8,"Lápiz",70.65,3);
insert into producto values(9,"Cable",65.75,2);
insert into producto values(10,"Cargador",24.50,1);

-- Mostrar tablas
show tables;

-- Leer/Revisar todos los datos creados de una tabla
SELECT * from fabricante;
SELECT * from producto;
-- Leer/Revisar todos los datos creados de una tabla con un dato en específico
SELECT * from fabricante where id=2;

-- Leer/Revisar datos de una columna de una tabla
SELECT nombre from producto;
-- Leer/Revisar más de un dato de una columna de una tabla
SELECT id, nombre from producto;

-- ACTUALIZAR TODOS los datos de una columna
UPDATE producto set nombre= "Campus";
SELECT * from producto;   -- Revisar resultado
-- Actualizar un dato de una columna
UPDATE producto set nombre= "Helloo" where id=10;
SELECT * from producto where id=10;   -- Revisar resultado

-- ELIMINAR todos los datos de una tabla
DELETE from producto;
TRUNCATE producto;
SELECT * from producto;  -- Revisar resultado
-- Eliminar un dato de una tabla
DELETE from producto where id=10;
SELECT * from producto;  -- Revisar resultado
-- Eliminar tabla
drop table producto;
show tables;

-- ########################### RESUMEN :D ###########################

-- CREAR (Tabla/Base de datos)-> CREATE
-- LEER (Tabla/Datos) -> SELECT
-- ACTUALIZAR (Datos especificos/Generales) -> UPDATE
-- ELIMINAR (Tablas/Datos especificos/Generales) -> DELETE/TRUNCATE

-- TO CREATE/CREAR -> CREATE
-- TO READ/LEER -> SELECT
-- TO UPDATE/ACTUALIZAR -> UPDATE
-- TO DELETE/ELIMINAR -> DELETE/TRUNCATE


-- Desarrollado por Daniela Forero Ballén / ID.1.142.714.225

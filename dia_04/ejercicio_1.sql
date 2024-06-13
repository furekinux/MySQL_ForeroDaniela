-- #############################################
-- ### DIA #4 - RELACIONAMIENTO DE CONSULTAS ###
-- #############################################

-- CREAR Y USAR BBDD
CREATE database dia_04;
USE dia_04;

-- CREAR TABLA PAIS
CREATE table pais(
id int primary key not null auto_increment,
nombre varchar(20),
continente varchar(50),
poblacion int
);

-- CREAR TABLA CIUDAD
CREATE table ciudad(
id int primary key not null auto_increment,
nombre varchar(20),
id_pais int,
foreign key(id_pais)references pais(id)
);

-- CREAR TABLA IDIOMA
CREATE table idioma(
id int primary key not null auto_increment,
idioma varchar(50)
);

-- CREAR TABLA IDIOMA_PAIS
CREATE table idioma_pais(
id_idioma int not null,
id_pais int not null,
primary key(id_idioma,id_pais),
foreign key(id_idioma) references idioma(id),
foreign key(id_pais) references pais(id),
es_oficial tinyint(1)
);

show tables;

-- ########### CONSULTAS ############

-- Todos los pares de nombres de paises y sus ciudades
-- correspondientes que están relacionadas
-- en la base de datos (INNER JOIN = COINCIDENCIA EN
-- AMBAS TABLAS, como la intersección de conjuntos).
SELECT pais.nombre as Pais,
ciudad.nombre as Ciudad
from pais -- Pais es un conjunto A
inner join ciudad -- Ciudad es un conjunto B
on pais.id = ciudad.id_pais; -- Interseccion de A y B

-- ######### INGRESO ADICIONAL #########
INSERT INTO ciudad VALUES
(7, 'Ciudad Unknow', Null);
INSERT INTO pais VALUES
(4, 'Italia','Europa', 10000022);

-- Listar todas las ciudades con el nombre de su pais
-- si alguna ciudad no tiene pais asignado, aun aparecera
-- en la lista con null (LEFT JOIN)
SELECT pais.nombre as Pais,
ciudad.nombre as Ciudad
from pais -- Pais es un conjunto A
left join ciudad -- Ciudad es un conjunto B
on pais.id = ciudad.id_pais; -- Interseccion de A y B

-- Mostrar todos los paises y si tienen ciudades asociadas,
-- se muestran junto al nombre del pais. Si no hay ciudades
-- asociadas a un pais, el nombre de la ciudad aparecera
-- como null (RIGHT JOIN)
SELECT pais.nombre as Pais,
ciudad.nombre as Ciudad
from pais -- Pais es un conjunto A
right join ciudad -- Ciudad es un conjunto B
on pais.id = ciudad.id_pais; -- Interseccion de A y B

-- Desarrollado por Daniela Forero / ID.1.142.714.225

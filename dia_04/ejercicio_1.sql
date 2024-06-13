-- #####################
-- ### EJERCICIO # 1 ###
-- #####################

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

-- Desarrollado por Daniela Forero / ID.1.142.714.225

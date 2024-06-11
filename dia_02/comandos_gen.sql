-- ###################################
-- ### DIA #2 - Comandos generales ###
-- ###################################

-- Comando general para revisión de bases de datos creadas
show databases;

-- Crear base de datos
create database dia02;

-- Utilizar BBDD dia02;
use dia02;

-- Crear tabla de departamentos (Actividad)
create table departamento (
	id int auto_increment primary key,
    nombre varchar(50) not null
);

create table persona (
	id int auto_increment primary key,
    nif varchar(9),
    nombre varchar(25) not null,
    apellido1 varchar(50) not null,
    apellido2 varchar(50),
    ciudad varchar(25) not null,
    direccion varchar(50) not null,
    telefono varchar(9),
    fecha_nacimiento DATE not null,
    sexo enum('H','M') not null,
    tipo enum("profesor","alumno") not null
);

create table profesor(
	id_profesor int auto_increment primary key,
    id_departamento int not null,
    foreign key(id_profesor) references persona(id),
    foreign key(id_departamento) references departamento(id)
);

create table grado(
	id int auto_increment primary key,
    nombre varchar(100)
);

create table curso_escolar(
	id int auto_increment primary key,
    anyo_inicio year(4),
    anyo_fin year(4)
);

-- Desarrollado por Daniela Forero / ID.1.142.714.225 :D

-- ###################################
-- ### DIA #2 - Comandos generales ###
-- ###################################

-- Comando general para revisión de bases de datos creadas
show databases;

-- Crear base de datos
create database dia02;

-- Utilizar BBDD dia02;
use dia02;


-- Crear tabla de departamentos (Actividad) :D
create table departamento (
    id int auto_increment primary key,
    nombre varchar(50) not null
);

-- Crear tabla de persona :D
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

-- Crear tabla de profesor :D
create table profesor(
    id_profesor int primary key,
    id_departamento int not null,
    foreign key(id_profesor) references persona(id),
    foreign key(id_departamento) references departamento(id)
);

-- Crear tabla de grado :D
create table grado(
    id int auto_increment primary key,
    nombre varchar(100)
);

-- Crear tabla de curso escolar :D
create table curso_escolar(
    id int auto_increment primary key,
    anyo_inicio YEAR(4),
    anyo_fin YEAR(4)
);

--Crear tabla de asignatura
create table asignatura(
    id int auto_increment primary key,
    nombre varchar(100) not null,
    creditos FLOAT not null,
    tipo enum('A','B') not null,
    curso TINYINT(3) not null,
    cuatrimestre TINYINT() not null,
    id_profesor int,
    foreign key(id_profesor) references profesor(id_profesor),
    id_grado int not null,
    foreign key(id_profesor) references grado(id)
);


-- Crear tabla de alumno se matricula
create table alumno_se_matricula_asignatura(
    id_alumno int primary key,
    foreign key(id_alumno) references persona(id),
    id_asignatura int not null,
    foreign key(id_asignatura) references asignatura(id),
    id_curso_escolar int not null,
    foreign key(id_curso) references curso_escolar(id)
);

-- Desarrollado por Daniela Forero / ID.1.142.714.225 :D

create database DB_sistemaNota
go
use DB_sistemaNota

create table tbl_estudiante(
PKId varchar (10) primary key,
Nombre varchar (10) not null,
Apellido varchar (10) not null,
FK_tblnotas varchar (10) not null,
FK_tblasignatura varchar (10) not null
)

create table tbl_asignatura(
PKCodigo varchar (10) primary key,
Curso varchar (10) not null
)

create table tbl_notas(
PKCodigo varchar (10) primary key,
Nota1 float,
Nota2 float,
Nota3 float,
Nota4 float,
NotaFinal float
)

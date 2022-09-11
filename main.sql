create database cadastro;
use cadastro;
create table materias (
nome varchar(50) NOT NULL,
RM tinyint NOT NULL AUTO_INCREMENT,
PRIMARY key (RM)
);
create table alunos (
nome varchar(50) NOT NULL,
RA tinyint NOT NULL AUTO_INCREMENT,
materia tinyint,
foreign key (materia) references materias(RM),
PRIMARY key (RA)
);
create table professores (
nome varchar(50) NOT NULL,
RP tinyint NOT NULL AUTO_INCREMENT,
materia tinyint,
foreign key (materia) references materias(RM),
PRIMARY key (RP)
);
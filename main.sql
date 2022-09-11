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

Insert into materias (nome) Values ('Desenvolvimento WEB'), ('Organização de Sistemas');

Insert into alunos (nome, materia) Values ('Alexander Wood', '1'), ('Alan Taylor', '2'), ('James Johnson', '2'), ('Brenda Armstrong', '2'), ('Andrew Johnson', '1'), ('Tyler Rush', '1');

Insert into professores (nome, materia) Values ('Joana Pereira', '2'), ('Kevin Ribeiro', '1');

select alunos.nome, alunos.RA, materias.nome, materias.RM, professores.nome, professores.RP from alunos join materias on alunos.materia = materias.RM join professores on professores.materia = materias.RM order by materias.RM
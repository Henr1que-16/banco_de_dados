CREATE DATABASE hospital;
USE hospital;


create table pacientes(
id_pac VARCHAR(8) NOT NULL primary key,
nome_pac VARCHAR(100) NOT NULL,
cpf_pac VARCHAR(11) NOT NULL,
endereco_pac VARCHAR(100) NOT NULL,
idade_pac int not null,
dataNasc_pac date not null,
contato_pac varchar(100) not null
);


create table ENFERMERIOS(
ID_ENFERM varchar(8) not null primary key,
nome_enferm varchar(100) not null,
cpf_enferm varchar(11) not null,
cpf_pac_fk varchar(11) not null,
constraint ENFERMERIOS_pac_fk foreign key (cpf_pac_fk)
references pacientes(id_pac)
);


create table Medicos(
ID_MED varchar(8) not null primary key,
NOME_MED VARCHAR(100) not null,
CPF_MED VARCHAR(11) not null,
ESPECIALIZACAO_MED VARCHAR(50) not null,
id_pac_fk VARCHAR(8),
constraint Medicos_pacientes_fk 	foreign key (id_pac_fk)
references pacientes(id_pac) 
);


create table remedio(
ID_REMEDIO VARCHAR(8) not null primary key,
NOME_REMEDIO VARCHAR(100) not null,
QNTD_REMEDIO DECIMAL(4,2) not null,
DTV_REMEDIO DATE not null,
HORARIO_REMEDIO TIME not null,
cpf_pac_fk varchar(11) not null,
constraint remedio_pacientes_fk foreign key (cpf_pac_fk)
references pacientes(id_pac)
);

create table FARMACEUTICOS(
ID_FARM VARCHAR(8) not null primary key,
NOME_FARM VARCHAR(100) not null,
CPF_FARM VARCHAR(11) not null,
CPF_ENFERM VARCHAR(11) not null,
NOME_REMEDIO VARCHAR(11) not null,
constraint FARMACEUTICOS_ENFERMERIOS_fk foreign key (CPF_ENFERM_fk)
references ENFERMERIOS(id_enter)
);

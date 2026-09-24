CREATE DATABASE transilvania_hotel;
use transilvania_hotel;

CREATE TABLE proprietario(
proprietario_id VARCHAR(255) primary key,
nome VARCHAR(255),
cpf_cnpj VARCHAR(20),
contato VARCHAR(255)
);

CREATE TABLE cliente(
cliente_id VARCHAR(255) primary key,
nome VARCHAR(255),
cpf VARCHAR(14),
contato VARCHAR(255)
);

create table enderecos(
endereco_id varchar(255) primary key,
rua varchar(255),
numero int,
bairro varchar(255),
cidade varchar(255),
estado varchar(2),
cep varchar(10)
);

create table hospedagens(
hospedagem_id varchar(255) primary key,
tipo varchar (50),
endereco_id varchar (255),
proprietario_id varchar(255),
ativo bool,
foreign key (endereco_id) references enderecos(endereco_id),
foreign key (proprietario_id) references proprietario(proprietario_id)
);

create table alugueis(
aluguel_id varchar(255) primary key,
cliente_id varchar(255),
hospedagem_id varchar(255),
data_inicio date,
data_fim date,
preco_total decimal(10,2),
foreign key (cliente_id) references cliente(cliente_id),
foreign key (hospedagem_id) references hospedagens(hospedagem_id)
);

create table avaliacao(
avaliacao_id varchar(255) primary key,
cliente_id varchar(255),
hsopedagem_id varchar(255),
nota int,
comentario text,
foreign key (cliente_id) references cliente(cliente_id),
foreign key (hospedagem_id) references hospedagens(hospedagem_id)
);

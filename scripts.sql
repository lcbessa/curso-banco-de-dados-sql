/* Modelagem Básica */

CLIENTE 

NOME - CARACTER(30)
CPF - NUMERICO(11)
EMAIL - CARACTER(30)
TELEFONE - CARACTER(30)
ENDERECO - CARACTER(100)
SEXO - CARACTER(1)

/* PROCESSOS DE MODELAGEM */

/* FASE 01 E FASE 02 - AD ADM DE DADOS*/

MODELAGEM CONCEITUAL - RASCUNHO
MODELAGEM LÓGICA - QUALQUER PROGRAMA DE MODELAGEM

/* FASE 03 - DBA/ AD */

MODELAGEM FÍSICA -SCRIPTS DE BANCO 

/* INICIANDO A MODELAGEM FÍSICA */

/* CRIANDO O BANCO DE DADOS*/

CREATE DATABASE PROJETO;

/*CONECTANDO-SE AO BANCO */

USE PROJETO;

/* CRIANDO A TABELA DE CLIENTES */

CREATE TABLE CLIENTE(
    NOME VARCHAR(30),
    SEXO CHAR(1),
    EMAIL VARCHAR(30),
    CPF INT(11),
    TELEFONE VARCHAR(30),
    ENDERECO VARCHAR(100)
    
);

/* DESCOBRINDO COMO É A ESTRUTURA DE UMA TABELA*/

DESC CLIENTE;

/* VERIFICANDO AS TABELAS DO BANCO */

SHOW TABLES;

/* SINTAXE BASICA DE INSERÇÃO - INSERT INTO NOME_TABELA... */

/* FORMA 01 - OMITINDO AS COLUNAS */

INSERT INTO CLIENTE VALUES('JOAO', 'M', 'JOAO@GMAIL.COM', 988638273, '22923110', 'MARIA LACERDA - CENTRO - RIO DE JANEIRO - RJ');
INSERT INTO CLIENTE VALUES('CELIA','F', 'CELIA@GMAIL.COM',541521456,'25078869','RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');
INSERT INTO CLIENTE VALUES('JORGE', 'M', NULL, 885755896, '58748895', 'OSCAR CURY - BOM RETIRO PATOS DE MINAS - MG');

/* FORMA 02 - COLOCANDO AS COLUNAS */

INSERT INTO CLIENTE(NOME, SEXO, ENDERECO, TELEFONE, CPF) VALUES('LILIAN', 'F', 'SENADOR SOARES - TIJUCA  RIO DE JANEIRO - RJ', '947785696', 887774856);

/* FORMA 03  - INSERT COMPACTO - SOMENTE MYSQL */

INSERT INTO CLIENTE VALUES('ANA', 'F', 'ANA@GLOBO.COM', 85548962, '548556985', 'PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'), ('CARLA', 'F', 'CARLA@TERATI.COM.BR', 7745828, '66587458', 'SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');

/* O COMANDO SELECT SELECAO PROJECAO E JUNCAO */

SELECT NOW() AS DATA_HORA;
SELECT 'BANCO DE DADOS';

/* ALIAS DE COLUNAS */

SELECT NOME, SEXO, EMAIL  FROM CLIENTE;
SELECT NOME, SEXO, EMAIL,  ENDERECO FROM CLIENTE;

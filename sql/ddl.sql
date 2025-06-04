------------------------------ DDL ------------------------------
CREATE TABLE funcionarios (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	cargo VARCHAR(100)
);

CREATE TABLE tecnicos (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	idade INTEGER,
	especialidade VARCHAR(100),
	crtr INTEGER
);

CREATE TABLE medicos (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	idade INTEGER,
	especialidade VARCHAR(100),
	crm INTEGER
);

CREATE TABLE enfermeiros (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	idade INTEGER,
	coren INTEGER
);

CREATE TABLE consulta (
	doenca VARCHAR(100),
	sintomas VARCHAR(100)
);

CREATE TABLE encaminhameto (
	id SERIAL PRIMARY KEY,
	data DATE,
	destino VARCHAR(100)
);

CREATE TABLE exames (
	id SERIAL PRIMARY KEY,
	tipo VARCHAR(100),
	resultado VARCAHR(100),
	data DATE
);

CREATE TABLE medicamentos (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	posologia VARCHAR(100)
);

CREATE TABLE pacientes (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	idade INTEGER,
	sexo CHAR(1)
);

CREATE TABLE endereço (
	id SERIAL,
	email VARCHAR(100)
);

CREATE TABLE telefone (
	id SERIAL,
	ddd
	numero
);
------------------------------ DDL ------------------------------
CREATE TABLE funcionarios (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	cargo VARCHAR(100)
);

CREATE TABLE tecnicos (
	id SERIAL PRIMARY KEY,
	id_funcionario INTEGER,
	idade INTEGER,
	especialidade VARCHAR(100),
	crtr INTEGER,
	FOREIGN KEY(id_funcionario) REFERENCES funcionarios(id) ON DELETE CASCADE
);

CREATE TABLE medicos (
	id SERIAL PRIMARY KEY,
	id_funcionario INTEGER,
	idade INTEGER,
	especialidade VARCHAR(100),
	crm INTEGER,
	FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id) ON DELETE CASCADE
);

CREATE TABLE enfermeiros (
	id SERIAL PRIMARY KEY,
	id_funcionario INTEGER,
	idade INTEGER,
	coren INTEGER,
	FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id) ON DELETE CASCADE
);

CREATE TABLE encaminhamento (
	id SERIAL PRIMARY KEY,
	data DATE,
	destino VARCHAR(100)
);

CREATE TABLE exames (
	id SERIAL PRIMARY KEY,
	tipo VARCHAR(100),
	resultado VARCHAR(100),
	data DATE
);

CREATE TABLE medicamentos (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	posologia VARCHAR(100)
);



CREATE TABLE endereco (
	id SERIAL PRIMARY KEY,
	cep VARCHAR(9),
	logradouro VARCHAR(100),
	cidade VARCHAR(100),
	bairro VARCHAR(100),
	estado VARCHAR(100),
    numero INTEGER
);

CREATE TABLE telefone (
	id SERIAL PRIMARY KEY,
	ddd VARCHAR(3),
	numero VARCHAR(9)
);

CREATE TABLE pacientes (
	id SERIAL PRIMARY KEY,
	id_endereco INTEGER,
	id_telefone INTEGER,
	nome VARCHAR(100),
	idade INTEGER,
	sexo CHAR(1) CHECK (sexo IN('M', 'F')),
	FOREIGN KEY (id_endereco) REFERENCES endereco(id) ON DELETE CASCADE,
	FOREIGN KEY (id_telefone) REFERENCES telefone(id) ON DELETE CASCADE
);

CREATE TABLE consulta (
	id SERIAL PRIMARY KEY,
	id_funcionario INTEGER,
	id_encaminhamento INTEGER,
	id_exames INTEGER,
	id_medicamentos INTEGER,
	id_paciente INTEGER,
	doenca VARCHAR(100),
	sintomas VARCHAR(100),
	FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id) ON DELETE CASCADE,
	FOREIGN KEY (id_encaminhamento) REFERENCES encaminhamento(id) ON DELETE CASCADE,
	FOREIGN KEY (id_exames) REFERENCES exames(id) ON DELETE CASCADE,
	FOREIGN KEY (id_medicamentos) REFERENCES medicamentos(id) ON DELETE CASCADE,
	FOREIGN KEY (id_paciente) REFERENCES pacientes(id) ON DELETE CASCADE
);
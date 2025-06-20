-- Início
BEGIN;

-- Inserir um novo funcionário
INSERT INTO funcionarios (nome, cargo) VALUES ('Dra. Ana Silva', 'Médica');

-- Inserir dados na tabela medicos
INSERT INTO medicos (id_funcionario, idade, especialidade, crm)
VALUES (1, 45, 'Pediatria', 123456);

-- Inserir endereço e telefone de paciente
INSERT INTO endereco (cep, logradouro, cidade, bairro, estado, numero)
VALUES ('12345-678', 'Rua das Flores', 'São Paulo', 'Centro', 'SP', 101);

INSERT INTO telefone (ddd, numero)
VALUES ('11', '987654321');

-- Inserir paciente
INSERT INTO pacientes (id_endereco, id_telefone, nome, idade, sexo)
VALUES (1, 1, 'João da Silva', 10, 'M');

-- Inserir consulta
INSERT INTO consulta (
	id_funcionario, id_encaminhamento, id_exames, id_medicamentos, id_paciente, doenca, sintomas
) VALUES (
	1, NULL, NULL, NULL, 1, 'Gripe', 'Febre e dor no corpo'
);

-- Commit da transação, se tudo correu bem
COMMIT;

ROLLBACK;

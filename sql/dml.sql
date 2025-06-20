-- ------------------------------ DML ------------------------------
INSERT INTO funcionarios (nome, cargo) VALUES 
('Paula Menezes', 'Médico'),
('Rafael Torres', 'Técnico de Enfermagem'),
('Larissa Almeida', 'Enfermeiro'),
('José Eduardo', 'Médico'),
('Fernando Sousa', 'Técnico de Laboratório'),
('Tobias Perassi', 'Enfermeiro'),
('Giovani Miomoto', 'Médico'),
('Luiciano Menezes', 'Técnico de Laboratório'),
('Gustavo Silveira', 'Enfermeiro'),
('Kelvin Lucas', 'Médico'),
('Patricia Silva', 'Enfermeiro'),
('Marina Souza', 'Médico'),
('Beatriz Oliveira', NULL),
('Rafaela Lima', 'Enfermeiro'),
('Rafael Pecoraci', 'Médico'),
('Paola Gomes', 'Enfermeiro'),
('Katarina Almeida', 'Técnico de Laboratório'),
('Diego Ferraz', 'Médico');

INSERT INTO medicos (id_funcionario, nome, idade, especialidade, crm) VALUES
(1, 'Paula Menezes', 38, 'Pediatria', 123401),
(4, 'José Eduardo', 45, 'Clínico Geral', 123402),
(7, 'Giovani Miomoto', 50, 'Neurologia', 123403),
(10, 'Kelvin Lucas', 34, 'Cardiologia', 123404),
(12, 'Marina Souza', 40, 'Ortopedia', 123405),
(15, 'Rafael Pecoraci', 37, 'Dermatologia', 123406),
(18, 'Diego Ferraz', 42, 'Infectologia', 123407);

INSERT INTO enfermeiros (id_funcionario, nome, idade, coren) VALUES
(3, 'Larissa Almeida', 30, 201001),
(6, 'Tobias Perassi', 28, 201002),
(9, 'Gustavo Silveira', 35, 201003),
(11, 'Patricia Silva', 29, 201004),
(14, 'Rafaela Lima', 32, 201005),
(16, 'Paola Gomes', 33, 201006);

INSERT INTO tecnicos (id_funcionario, nome, idade, especialidade, crtr) VALUES
(2, 'Rafael Torres', 31, 'Análises Clínicas', 301001),
(5, 'Fernando Sousa', 29, 'Bioquímica', 301002),
(8, 'Luiciano Menezes', 36, 'Radiologia', 301003),
(17, 'Katarina Almeida', 33, 'Patologia', 301004);

INSERT INTO endereco (cep, logradouro, cidade, bairro, estado, numero) VALUES 
('18035-230', 'Rua das Flores', 'Sorocaba', 'Jardim Brasilândia', 'SP', 101),
('02045-100', 'Avenida Paulista', 'São Paulo', 'Bela Vista', 'SP', 1500),
('04567-000', 'Rua das Acácias', 'São Paulo', 'Moema', 'SP', 432),
('13050-420', 'Rua João Jorge', 'Campinas', 'Centro', 'SP', 78);

INSERT INTO telefone (ddd, numero) VALUES 
('15', '987654321'),
('11', '976543210'),
('11', '965432109'),
('15', '954321098');

INSERT INTO pacientes (id_endereco, id_telefone, nome, idade, sexo) VALUES
(1, 1, 'Lucas Santos', 27, 'M'),
(2, 2, 'Joana Lima', 52, 'F'),
(3, 3, 'Mário Oliveira', 65, 'M'),
(4, 4, 'Renata Pires', 40, 'F'),
(1, 1, 'Gabriel Ribeiro', 16, 'M');

INSERT INTO encaminhamento (data, destino) VALUES
('2025-06-04', 'Cardiologia'),
('2025-06-03', 'Dermatologia'),
('2025-06-02', 'Infectologia'),
('2025-06-01', 'Neurologia');

INSERT INTO exames (tipo, resultado, data) VALUES
('Hemograma', 'Alterações leves', '2025-06-01'),
('Raio-X', 'Sem alterações', '2025-06-02'),
('Eletrocardiograma', 'Arritmia moderada', '2025-06-03'),
('Tomografia', 'Lesão detectada', '2025-06-04');

INSERT INTO medicamentos (nome, posologia) VALUES
('Losartana', '50mg 1x ao dia'),
('Cetoconazol', '200mg por 7 dias'),    
('Azitromicina', '500mg por 3 dias'),
('Paracetamol', '750mg a cada 6h');

INSERT INTO consulta (id_funcionario, id_paciente, id_encaminhamento, id_exames, id_medicamentos, doenca, sintomas) VALUES
(1, 1, 1, 1, 1, 'Hipertensão', 'Tontura, dor de cabeça'),
(4, 2, 2, 2, 2, 'Micose de pele', 'Coceira, vermelhidão'),
(7, 3, 3, 3, 3, 'Infecção respiratória', 'Tosse, febre'),
(10, 4, 4, 4, 4, 'Traumatismo craniano leve', 'Confusão, dor de cabeça');
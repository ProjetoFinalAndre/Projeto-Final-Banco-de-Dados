INSERT INTO funcionarios (nome, cargo) VALUES 
('Paula Menezes', 'Médico'),
('Rafael Torres', 'Técnico de Enfermagem'),
('Larissa Almeida', 'Enfermeiro'),
('José Eduardo', 'Médico'),
('Fernando Sousa', 'Técnico de Laboratório'),
('Tobias Perassi', 'Enfermeiro'),
('Giovani Miomoto', 'Médico'),
('Luiciano Menezes','Técnico de Laboratório'),
('Gustavo Silveira', 'Enfermeiro'),
('Kelvin Lucas', 'Médico'),
('Patricia Silva', 'Enfermeiro'),
('Marina Souza', 'Médico'),
('Beatriz Oliveira', 'Administrativo'),
('Rafaela Lima', 'Enfermeiro'),
('Rafael Pecoraci', 'Médico'),
('Paola Gomes', 'Enfermeiro'),
('Katarina Almeida', 'Técnico de Laboratório'),
('Diego Ferraz', 'Médico'),
('Amanda Castro', 'Médico'),
('Bruno Rezende', 'Enfermeiro'),
('Carla Nunes', 'Técnico de Laboratório'),
('Daniela Freitas', 'Médico'),
('Eduardo Martins', 'Técnico de Enfermagem'),
('Fábio Lopes', 'Médico'),
('Gabriela Costa', 'Enfermeiro'),
('Henrique Lima', 'Médico'),
('Isabela Rocha', 'Técnico de Laboratório'),
('João Pedro', 'Médico');


INSERT INTO medicos (id_funcionario, nome, idade, especialidade, crm) VALUES
(1, 'Paula Menezes', 38, 'Pediatria', 123401),
(4, 'José Eduardo', 45, 'Clínico Geral', 123402),
(7, 'Giovani Miomoto', 50, 'Neurologia', 123403),
(10, 'Kelvin Lucas', 34, 'Cardiologia', 123404),
(12, 'Marina Souza', 40, 'Ortopedia', 123405),
(15, 'Rafael Pecoraci', 37, 'Dermatologia', 123406),
(18, 'Diego Ferraz', 42, 'Infectologia', 123407),
(19, 'Amanda Castro', 36, 'Neurologia', 123410),
(22, 'Daniela Freitas', 41, 'Clínico Geral', 123411),
(24, 'Fábio Lopes', 48, 'Cardiologia', 123412),
(26, 'Henrique Lima', 44, 'Neurologia', 123413),
(28, 'João Pedro', 39, 'Ortopedia', 123414);


INSERT INTO enfermeiros (id_funcionario, nome, idade, coren) VALUES
(3, 'Larissa Almeida', 30, 201001),
(6, 'Tobias Perassi', 28, 201002),
(9, 'Gustavo Silveira', 35, 201003),
(11, 'Patricia Silva', 29, 201004),
(14, 'Rafaela Lima', 32, 201005),
(16, 'Paola Gomes', 33, 201006),
(20, 'Bruno Rezende', 34, 201008),
(25, 'Gabriela Costa', 29, 201009);


INSERT INTO tecnicos (id_funcionario, nome, idade, especialidade, crtr) VALUES
(2, 'Rafael Torres', 31, 'Análises Clínicas', 301001),
(5, 'Fernando Sousa', 29, 'Bioquímica', 301002),
(8, 'Luiciano Menezes', 36, 'Radiologia', 301003),
(17, 'Katarina Almeida', 33, 'Patologia', 301004),
(21, 'Carla Nunes', 31, 'Histopatologia', 301007),
(27, 'Isabela Rocha', 27, 'Laboratório Clínico', 301008),
(23, 'Eduardo Martins', 38, 'Coleta', 301009);


INSERT INTO endereco (logradouro, numero, bairro, cidade, estado, cep) VALUES 
('Rua das Flores', 123, 'Centro', 'São Paulo', 'SP', '01001-000'),
('Avenida Brasil', 456, 'Jardim América', 'Rio de Janeiro', 'RJ', '20040-001'),
('Rua do Comércio', 789, 'Centro', 'Belo Horizonte', 'MG', '30110-015'),
('Travessa das Palmeiras', 321, 'Boa Vista', 'Curitiba', 'PR', '80010-150'),
('Rua Sete de Setembro', 654, 'Centro', 'Salvador', 'BA', '40060-001'),
('Avenida Independência', 987, 'Moinhos de Vento', 'Porto Alegre', 'RS', '90560-000'),
('Rua XV de Novembro', 111, 'Centro', 'Florianópolis', 'SC', '88010-000'),
('Rua Antônio Carlos', 222, 'Centro', 'Recife', 'PE', '50010-030');


INSERT INTO telefone (ddd, numero) VALUES 
('15', '987654321'),
('12', '976543210'),
('11', '965432109'),
('14', '954321098'),
('31', '989876543'),
('21', '978654321'),
('41', '967543210'),
('71', '976432109');


INSERT INTO pacientes (id_endereco, id_telefone, nome, idade, sexo) VALUES
(1, 1, 'Lucas Santos', 27, 'M'),
(2, 2, 'Joana Lima', 52, 'F'),
(3, 3, 'Mário Oliveira', 65, 'M'),
(4, 4, 'Renata Pires', 40, 'F'),
(5, 5, 'André Moraes', 50, 'M'),
(6, 6, 'Luciana Ribeiro', 43, 'F'),
(7, 7, 'Marcelo Teixeira', 38, 'M'),
(8, 8, 'Fernanda Dias', 29, 'F');


INSERT INTO encaminhamento (data, destino) VALUES
('2025-06-04', 'Cardiologia'),
('2025-06-03', 'Dermatologia'),
('2025-06-02', 'Infectologia'),
('2025-06-01', 'Neurologia'),
('2025-06-07', 'Neurologia'),
('2025-06-08', 'Clínico Geral'),
('2025-06-09', 'Ortopedia'),
('2025-06-10', 'Cardiologia');


INSERT INTO exames (tipo, resultado, data) VALUES
('Hemograma', 'Alterações leves', '2025-06-01'),
('Raio-X', 'Sem alterações', '2025-06-02'),
('Eletrocardiograma', 'Arritmia moderada', '2025-06-03'),
('Tomografia', 'Lesão detectada', '2025-06-04'),
('EEG', 'Alterações nos lobos temporais', '2025-06-07'),
('Exame de sangue', 'Colesterol elevado', '2025-06-08'),
('Ressonância magnética', 'Hérnia de disco', '2025-06-09'),
('ECG', 'Taquicardia', '2025-06-10');


INSERT INTO medicamentos (nome, posologia) VALUES
('Losartana', '50mg 1x ao dia'),
('Cetoconazol', '200mg por 7 dias'),    
('Azitromicina', '500mg por 3 dias'),
('Paracetamol', '750mg a cada 6h'),
('Clonazepam', '0,5mg à noite'),
('Sinvastatina', '20mg à noite'),
('Ibuprofeno', '600mg a cada 8h'),
('Atenolol', '50mg ao dia');


INSERT INTO consulta (id_funcionario, id_encaminhamento, id_exames, id_medicamentos, doenca, sintomas) VALUES
(1, 1, 1, 1, 'Hipertensão', 'Tontura, dor de cabeça'),
(4, 2, 2, 2, 'Micose de pele', 'Coceira, vermelhidão'),
(7, 3, 3, 3, 'Infecção respiratória', 'Tosse, febre'),
(10, 4, 4, 4, 'Traumatismo craniano leve', 'Confusão, dor de cabeça'),
(19, 5, 5, 5, 'Crise convulsiva', 'Desmaios, confusão mental'),
(22, 6, 6, 6, 'Dislipidemia', 'Fadiga, dor torácica'),
(28, 7, 7, 7, 'Hérnia lombar', 'Dor na coluna, dormência'),
(24, 8, 8, 8, 'Arritmia', 'Palpitações, tontura');





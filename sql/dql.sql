------------------------------------------CONSULTAS SIMPLES-------------------------------------------------------------------
-- Selecionar tudo da tabela médico
SELECT * FROM medicos;

-- Selecionar o nome dos pacientes e suas idades
SELECT nome, idade FROM pacientes;

-- Seleciona todos os nomes de medicamentos usados a noite
SELECT * FROM medicamentos WHERE posologia LIKE '%noite%';

-- Retorna todas as consultas de acordo com a patologia especifica
SELECT * FROM consulta WHERE doenca = 'Arritmia';


-----------------------------------------JOIN---------------------------------------------------------------------------------
-- Listar as consultas por nome do médico e puxando o nome  do paciente
SELECT
    c.id,
    f.nome AS nome_medico,
    p.nome AS nome_paciente,
    c.doenca,
    c.sintomas
FROM consulta c
JOIN funcionarios f ON c.id_funcionario = f.id
JOIN pacientes p ON c.id_paciente = p.id;

-- Consulta com exame, medicamento e encaminhamento
SELECT
    c.id,
    f.nome AS funcionario,
    e.tipo AS exame,
    m.nome AS medicamento,
    en.destino AS encaminhamento,
    c.doenca
FROM consulta c
JOIN funcionarios f ON c.id_funcionario = f.id
JOIN exames e ON c.id_exames = e.id
JOIN medicamentos m ON c.id_medicamentos = m.id
JOIN encaminhamento en ON c.id_encaminhamento = en.id;

----------------------------------------------------GROUP BY & COUNT-----------------------------------------------------------------
-- Contagem de quantas consultas foram feitas por especialidade e se houve encaminhamento
SELECT en.destino AS especialidade, COUNT(*) AS total_consultas
FROM consulta c
JOIN encaminhamento en ON c.id_encaminhamento = en.id
GROUP BY en.destino;

-- Número de pacientes de acordo com o gênero. 
SELECT sexo, COUNT(*) AS total
FROM pacientes
GROUP BY sexo;
--------------------------------------------------ORDER BY--------------------------------------------------------------------

-- Lista os pacientes por idade, do mais velho ao mais novo
SELECT nome, idade FROM pacientes ORDER BY idade DESC;

-- Listar medicamentos ordenando por ordem alfabética 
SELECT nome FROM medicamentos ORDER BY nome;

-- Resultados de exames ordenados de madeira decrescente, do mais recente ao mais antigo
SELECT tipo, resultado, data FROM exames ORDER BY data DESC;
--------------------------------------------------VIEWS-----------------------------------------------------------------------
-- Criação da VIEW com resumo da consulta para gerar prontuário
CREATE VIEW vw_consultas_resumo AS
SELECT
    c.id AS id_consulta,
    f.nome AS nome_medico,
    p.nome AS nome_paciente,
    c.doenca,
    c.sintomas,
    e.tipo AS exame,
    m.nome AS medicamento,
    en.destino AS encaminhamento
FROM consulta c
JOIN funcionarios f ON c.id_funcionario = f.id
JOIN pacientes p ON c.id_paciente = p.id
JOIN exames e ON c.id_exames = e.id
JOIN medicamentos m ON c.id_medicamentos = m.id
JOIN encaminhamento en ON c.id_encaminhamento = en.id;

-- chamada da view
SELECT * FROM vw_consultas_resumo WHERE doenca ILIKE '%arr%';



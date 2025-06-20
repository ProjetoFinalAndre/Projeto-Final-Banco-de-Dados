
CREATE USER usuario_clinica WITH PASSWORD 'senha_123';

-- Conceder permissões ao usuário
GRANT SELECT, INSERT ON funcionarios TO usuario_clinica;
GRANT SELECT ON consulta TO usuario_clinica;
GRANT SELECT, INSERT ON pacientes TO usuario_clinica;

-- Revogar alguma permissão
REVOKE INSERT ON funcionarios FROM usuario_clinica;

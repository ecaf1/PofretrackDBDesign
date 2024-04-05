-- Inserção de dados para a tabela `usuarios`
INSERT INTO usuarios (nome, senha, email) VALUES
    ('Edeilson', '1234', 'edeilson@gmail.com'),
    ('Felipe', '1234', 'felipe@gmail.com'),
    ('Ana Paula', 'senha789', 'ana.paula@example.com'),
    ('Carlos Eduardo', 'senha456', 'carlos.eduardo@example.com');

-- Inserção de dados para a tabela `usuario_tipo`
INSERT INTO usuario_tipo VALUES 
    (1, 'professor'),
    (1, 'coordenador'),
    (2, 'professor'),
    (3, 'professor'),
    (4, 'coordenador'),
    (3, 'coordenador'),
    (4, 'professor');

-- Inserção de dados para a tabela `disciplinas`
INSERT INTO disciplinas (nome, descricao, turno, ano_letivo, serie) VALUES 
    ('Matemática', 'Disciplina focada no estudo de números e formas', 'Matutino', 2024, '1 EM'),
    ('Português', 'Disciplina dedicada ao estudo da língua portuguesa', 'Vespertino', 2024, '1 EM'),
    ('Geografia', 'Disciplina que explora aspectos físicos e políticos da terra', 'Vespertino', 2024, '1 EM'),
    ('História', 'Estudo dos eventos históricos mundiais', 'Matutino', 2024, '2 EM'),
    ('Física', 'Introdução aos conceitos físicos fundamentais', 'Vespertino', 2024, '2 EM');

-- Inserção de dados para a tabela `usuario_disciplina`
INSERT INTO usuario_diciplina (usuario_id, disciplina_id) VALUES 
    (1,1),(1,2),(1,3),(2,1),(2,2),
    (3, 4),
    (4, 5),
    (2, 4),
    (1, 5);

-- Inserção de dados para a tabela `planejamentos`
INSERT INTO planejamentos (disciplina_id, atividades_casa, metodologia_aplica, numero_modulo, numero_aula, conteudo, data, meta_aula, atividades_sala) VALUES 
    (1, 'Resolver exercícios do livro página 32', 'Metodologia de Matemática', 'Módulo 1', 'Aula 5', 'Introdução à álgebra', '2024-03-25', 'Introduzir conceitos básicos de álgebra', 'Discussão em grupo sobre problemas de álgebra'),
    (2, 'Leitura do capítulo 3 do livro de Português', 'Metodologia de Português', 'Módulo 2', 'Aula 3', 'Análise de textos', '2024-03-26', 'Desenvolver habilidades de análise textual', 'Análise coletiva de um poema'),
    (3, 'Pesquisar sobre os continentes para apresentação', 'Metodologia de Geografia', 'Módulo 1', 'Aula 4', 'Os continentes e suas características', '2024-03-27', 'Apresentar os continentes e suas principais características', 'Criação de mapas mentais em grupo');

-- Inserção de dados para a tabela `comentario`
INSERT INTO comentario (planejamento_id, texto, data) VALUES 
    (1, 'Comentário 1', '2024-03-25 10:00:00'),
    (2, 'Comentário 2', '2024-03-26 11:00:00'),
    (3, 'Comentário 3', '2024-03-27 09:30:00');

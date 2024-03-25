INSERT INTO usuarios (nome, senha, email) VALUES
    ('Edeilson', '1234', 'edeilson@gmail.com'),
    ('Felipe', '1234', 'felipe@gamil.com')
;

INSERT INTO usuario_tipo VALUES (1, 'professor'),
    (1, 'coordenador'),
    (2, 'professor')
;

INSERT INTO disciplinas (nome, turno, ano_letivo, serie) VALUES ('matematica', 'matutino', 2024, '1 EM'),
    ('portugues', 'vespertino', 2024, '1 EM'),
    ('geografia','vespertino', 2024, '1 EM')
;

INSERT INTO planejamentos  (disciplina_id, metodologia_aplica) VALUES (1, 'metodologia de matematica'), 
    (2, 'metodologia de portugues'), 
    (3, 'metodologia de geografia')
;

INSERT INTO comentario (texto,planejamento_id) VALUES ('comentario 1',1),
    ('comentario 2',2),
    ('comentario 3',3)

INSERT INTO usuario_planejamento (usuario_id, planejamento_id) VALUES (1,1),(2,1);


CREATE TABLE IF NOT EXISTS usuarios(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255)  NOT NULL,
    senha VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL 
);

CREATE TABLE IF NOT EXISTS usuario_tipo(
    usuario_id INT,
    tipo varchar(20) CHECK (tipo IN ('professor', 'coordenador')),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE IF NOT EXISTS disciplinas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    turno VARCHAR(50) NOT NULL,
    ano_letivo YEAR NOT NULL,
    serie VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS planejamentos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    disciplina_id INT,
    atividades_casa VARCHAR(255) ,
    metodologia_aplica TEXT,
    numero_modulo VARCHAR(255),
    numero_aula VARCHAR(255),
    conteudo TEXT,
    data DATE,
    meta_aula TEXT,
    atividades_sala VARCHAR(255), 
    FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id)
);



CREATE TABLE IF NOT EXISTS comentario(
    planejamento_id INT,
    texto TEXT,
    data DATETIME,
    FOREIGN KEY (planejamento_id) REFERENCES planejamentos(id)
);


CREATE TABLE IF NOT EXISTS usuario_diciplina(
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    disciplina_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id)
);
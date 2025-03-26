CREATE TABLE Aluno (
    id_aluno INTEGER PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE Curso (
    id_curso INTEGER PRIMARY KEY,
    nome_curso VARCHAR(50) NOT NULL
);

CREATE TABLE frequenta (
    id_aluno INTEGER,
    id_curso INTEGER,
    PRIMARY KEY (id_aluno, id_curso),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

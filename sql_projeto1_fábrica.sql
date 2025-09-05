CREATE TABLE Professor (
    CPF VARCHAR(14) PRIMARY KEY,
    Nome VARCHAR(255),
    Titulacao VARCHAR(255)
);

CREATE TABLE Turma (
    Curso VARCHAR(255) PRIMARY KEY,
    Turno VARCHAR(255),
    Periodo VARCHAR(255)
);

CREATE TABLE Aluno (
    Matricula VARCHAR(255) PRIMARY KEY,
    Nome VARCHAR(255)
);

CREATE TABLE Ministra (
    CPF_Professor VARCHAR(14),
    Curso_Turma VARCHAR(255),
    FOREIGN KEY (CPF_Professor) REFERENCES Professor(CPF),
    FOREIGN KEY (Curso_Turma) REFERENCES Turma(Curso),
    PRIMARY KEY (CPF_Professor, Curso_Turma)
);

CREATE TABLE Participa (
    Curso_Turma VARCHAR(255),
    Matricula_Aluno VARCHAR(255),
    FOREIGN KEY (Curso_Turma) REFERENCES Turma(Curso),
    FOREIGN KEY (Matricula_Aluno) REFERENCES Aluno(Matricula),
    PRIMARY KEY (Curso_Turma, Matricula_Aluno)
);
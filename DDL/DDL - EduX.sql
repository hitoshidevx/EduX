CREATE DATABASE edux;
GO

USE edux;
GO

/*DDL - EduX*/

CREATE TABLE TipoUsuario(
	IdTipoUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Tipo VARCHAR(50)
);

CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome  VARCHAR(50),
	Email VARCHAR(80),
	Senha VARCHAR(150),

	-- FK - TipoUSuario
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);

CREATE TABLE Post(
	IdPost INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR(50),
	Texto  VARCHAR(50),
	Imagem VARCHAR(250),
	Curtida INT DEFAULT 0,

	-- FK - Usuario 
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE Curso(
	IdCurso INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(50)
);

CREATE TABLE Turma(
	IdTurma INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(50),

	-- FK - Curso
	IdCurso INT FOREIGN KEY REFERENCES Curso (IdCurso)
);

CREATE TABLE AlunoTurma(
	IdAlunoTurma INT PRIMARY KEY IDENTITY NOT NULL,

	-- FKs - Turma e Usuario
	IdTurma   INT FOREIGN KEY REFERENCES Turma (IdTurma),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario) 
);

CREATE TABLE ProfTurma(
	IdProfTurma INT PRIMARY KEY IDENTITY NOT NULL,

	-- FKs - Turma e Usuario
	IdTurma   INT FOREIGN KEY REFERENCES Turma (IdTurma),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario) 
);

CREATE TABLE Categoria(
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(50)
);

CREATE TABLE Objetivo(
	IdObjetivo INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(50),

	-- FK - Categoria
	IdCategoria INT FOREIGN KEY REFERENCES Categoria (IdCategoria)
);

CREATE TABLE ObjetivoAluno(
	IdObjetivoAluno INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(50),
	Nota INT DEFAULT NULL,
	DataEntrega DATETIME,

	-- FKs - Objetivo e AlunoTurma
	IdObjetivo   INT FOREIGN KEY REFERENCES Objetivo (IdObjetivo),
	IdAlunoTurma INT FOREIGN KEY REFERENCES AlunoTurma (IdAlunoTurma)
);

CREATE TABLE Tema(
	IdTema INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(50)
);

CREATE TABLE Dica(
	IdDica INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo    VARCHAR(50),
	Descricao VARCHAR(50),

	-- FKs - Usuario e Tema
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
	IdTema    INT FOREIGN KEY REFERENCES Tema (IdTema)
);
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
	Senha VARCHAR(80),

	-- FK - TipoUSuario
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);

CREATE TABLE Post(
	IdPost INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR(50),
	Texto  VARCHAR(50),
	Imagem VARCHAR(50),

	-- FK - Usuario 
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);
USE edux;
GO

INSERT INTO TipoUsuario(Tipo)
VALUES ('Aluno');

INSERT INTO Tema(Descricao)
VALUES ('Banco de dados');

INSERT INTO Categoria(Descricao)
VALUES ('Backend');

INSERT INTO Curso(Descricao)
VALUES ('Dev');

INSERT INTO Usuario(Nome, Email, Senha, IdTipoUsuario)
VALUES ('Tiago', 'tiago@idk.com', '1234', 2);

INSERT INTO Objetivo(Descricao, IdCategoria)
VALUES ('Construa a DDL do projeto solicitado', 1);

INSERT INTO Turma(Descricao, IdCurso)
VALUES ('2DM', 1);

INSERT INTO Post(Titulo, Texto, Imagem, Curtida, IdUsuario)
VALUES ('Alguem me ajuda pfv :(',
		'Estou com dificuldade no sql',
		'sql_print.jpeg', 
		2,
		1);

SELECT * FROM Post;

SELECT * FROM Turma;

SELECT * FROM Objetivo;

SELECT * FROM Usuario;

SELECT * FROM Curso;

SELECT * FROM Categoria;

SELECT * FROM Tema;

SELECT * FROM TipoUsuario;
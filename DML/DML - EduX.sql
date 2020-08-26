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
VALUES ('Paulo', 'paulo@idk.com', '1234', 1);

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

INSERT INTO Dica (Titulo, Descricao, IdUsuario, IdTema)
VALUES ('Dica da DML', 'Esqueceu ";" na linha 13', 1, 1);

INSERT INTO AlunoTurma (IdUsuario, IdTurma)
VALUES (1, 1);

INSERT INTO ProfTurma(IdUsuario, IdTurma)
VALUES (2, 1);

INSERT INTO ObjetivoAluno (Descricao, Nota, DataEntrega, IdObjetivo, IdAlunoTurma)
VALUES ('', 90, '2020-08-26T00:00:00', 1, 2);

SELECT * FROM ObjetivoAluno;

SELECT * FROM ProfTurma;

SELECT * FROM AlunoTurma;

SELECT * FROM Dica;

SELECT * FROM Post;

SELECT * FROM Turma;

SELECT * FROM Objetivo;

SELECT * FROM Usuario;

SELECT * FROM Curso;

SELECT * FROM Categoria;

SELECT * FROM Tema;

SELECT * FROM TipoUsuario;
/*DQL - EduX*/

USE edux;
GO 

/*WHERE - "Onde"*/
SELECT * FROM Usuario WHERE IdTipoUsuario = 2;

SELECT * FROM Usuario WHERE Nome LIKE '%o';

/*INNER JOIN - Alternativa para consulta envolvendo tabelas entrelaçadas*/
SELECT
	TipoUsuario.Tipo,
	Usuario.Nome
FROM Usuario
	INNER JOIN TipoUsuario ON Usuario.IdTipoUsuario = TipoUsuario.IdTipoUsuario;

/*CREATE PROCEDURE - Cria um stored procedure*/
CREATE PROCEDURE Busca
@CampoBusca VARCHAR(20)
AS
SELECT IdUsuario, Nome
FROM Usuario
WHERE Nome = @CampoBusca;	

--Executa o stored procedure criado
EXECUTE Busca 'Ryan';
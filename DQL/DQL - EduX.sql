USE edux;
GO 

SELECT * FROM Usuario WHERE IdTipoUsuario = 2;

SELECT * FROM Usuario WHERE Nome LIKE '%o';

SELECT
	TipoUsuario.Tipo,
	Usuario.Nome
FROM Usuario
	INNER JOIN TipoUsuario ON Usuario.IdTipoUsuario = TipoUsuario.IdTipoUsuario;

CREATE PROCEDURE Busca
@CampoBusca VARCHAR(20)
AS
SELECT IdUsuario, Nome
FROM Usuario
WHERE Nome = @CampoBusca;	

EXECUTE Busca 'Ryan';

SELECT * FROM Usuario;
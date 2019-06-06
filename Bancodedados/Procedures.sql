CREATE PROCEDURE CriaNovaImagem @IDUsuario INT, @Link INT, @IDImagem INT
AS
DECLARE IDImagem_Inserida INT;
INSERT INTO Imagens (IDUsuario, Link, IDImagem_Origem) VALUES (@IDUsuario,@Link,@IDImagem);
SELECT ID  INTO IDImagem_Inserida FROM INSERTED;
UPDATE Imagens SET IDImagem_Destino = IDImagem_Inserida WHERE ID = @IDImagem;
GO;
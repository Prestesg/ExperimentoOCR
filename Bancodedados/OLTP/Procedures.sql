DELIMITER $$
CREATE PROCEDURE CriaNovaImagem (INOUT IDUsuario INT, INOUT Link INT, INOUT IDImagem INT)
BEGIN
DECLARE IDImagem_Inserida INT DEFAULT 0;
INSERT INTO Imagens (IDUsuario, Link, IDImagem_Origem) VALUES (IDUsuario,Link,IDImagem);
SELECT ID  INTO IDImagem_Inserida FROM INSERTED;
UPDATE Imagens SET IDImagem_Destino = IDImagem_Inserida WHERE ID = @IDImagem;
END $$;
DELIMITER ;
CREATE TRIGGER NovaAvaliacaoTexto 
ON Avaliacao_Texto
AFTER INSERT
BEGIN
    DECLARE
    @NOTA  INT,
    @ID   INT
    SELECT @DATA = Nota, @ID = ID FROM INSERTED
    INSERT INTO BaseOLAPExperimentoOCR.Imagem_Notas (IDAvaliacao,Nota_Texto)VALUES (@ID,@NOTA)  
END
GO
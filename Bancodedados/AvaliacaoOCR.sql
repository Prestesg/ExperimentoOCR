CREATE DATABASE AvaliacaoOCR;
USE AvaliacaoOCR;

CREATE TABLE Usuario (
    ID INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Senha VARCHAR(255) NOT NULL
);

CREATE TABLE Imagens (
    ID INT PRIMARY KEY NOT NULL,
    IDUsuario INT NOT NULL,
    Link VARCHAR(255) NOT NULL,
    IDImagem_Origem INT,
    IDImagem_Destino INT,
    FOREIGN KEY (IDUsuario) REFERENCES Usuario(ID)
);

CREATE TABLE Imagens_Texto (
    ID INT PRIMARY KEY NOT NULL,
    IDImagem INT NOT NULL,
    Texto VARCHAR(255) NOT NULL,
    Parte_texto INT NOT NULL,
    FOREIGN KEY (IDImagem) REFERENCES Imagens(ID)
);

CREATE TABLE Avaliacao_Texto (
    ID INT PRIMARY KEY NOT NULL,
    IDImagem INT NOT NULL,
    IDUsuario INT NOT NULL,
    Nota INT NOT NULL,
    FOREIGN KEY (IDImagem) REFERENCES Imagens(ID),
    FOREIGN KEY (IDUsuario) REFERENCES Usuario(ID)
);

CREATE TABLE Emocoes_Texto (
    ID INT PRIMARY KEY NOT NULL,
    IDTexto_imagem INT NOT NULL,
    Emocao VARCHAR(255) NOT NULL,
    FOREIGN KEY (IDTexto_imagem) REFERENCES Imagens_Texto(ID)
);

CREATE TABLE Avaliacao_Emocao (
    ID INT PRIMARY KEY NOT NULL,
    IDTexto_emocao INT NOT NULL,
    IDUsuario INT NOT NULL,
    Nota INT NOT NULL,
    FOREIGN KEY (IDTexto_emocao) REFERENCES Emocoes_Texto(ID),
    FOREIGN KEY (IDUsuario) REFERENCES Usuario(ID)
);

#QUERY PARA EXIBIÇÃO DE IMAGENS 
SELECT 
i.*,
it.Texto,
et.Emocao
FROM Imagens AS i 
WHERE IDUsuario = :id_usuario
INNER JOIN Imagens_Texto as it ON it.IDImagem = i.ID
INNER JOIN Emocoes_Texto as et ON et.IDTexto_imagem = it.ID
ORDER BY it.Texto;

#QUERY DAS MELHORES CLASSFICAÇÕES DE EMOÇÕES EM TEXTOS
SELECT DISTINCT
*,
it.Texto,
et.Emocao,
ae.Nota
FROM Imagens AS i
INNER JOIN Imagens_Texto as it ON it.IDImagem = i.ID
INNER JOIN Emocoes_Texto as et ON et.IDTexto_imagem = it.ID
INNER JOIN Avaliacao_Emocao as ae ON ae.IDTexto_imagem = et.ID
ORDER BY ae.Nota DESC
LIMIT 10; 

CREATE PROCEDURE CriaNovaImagem @IDUsuario INT, @Link INT, @IDImagem INT
AS
DECLARE IDImagem_Inserida INT;
INSERT INTO Imagens (IDUsuario, Link, IDImagem_Origem) VALUES (@IDUsuario,@Link,@IDImagem);
SELECT ID  INTO IDImagem_Inserida FROM INSERTED;
UPDATE Imagens SET IDImagem_Destino = IDImagem_Inserida WHERE ID = @IDImagem;
GO;

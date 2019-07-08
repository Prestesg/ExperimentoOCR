CREATE TABLE Usuarios (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Senha VARCHAR(255) NOT NULL,
    Imagem VARCHAR(255)
);

CREATE TABLE Imagens (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IDUsuario INT NOT NULL,
    Link VARCHAR(255) NOT NULL,
    IDImagem_Origem INT,
    IDImagem_Destino INT,
    FOREIGN KEY (IDUsuario) REFERENCES Usuarios(Id)
);

CREATE TABLE Imagens_Texto (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IDImagem INT NOT NULL,
    Texto VARCHAR(255) NOT NULL,
    Parte_texto INT NOT NULL,
    FOREIGN KEY (IDImagem) REFERENCES Imagens(Id)
);

CREATE TABLE Avaliacao_Texto (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IDImagem_texto INT NOT NULL,
    IDUsuario INT NOT NULL,
    Nota INT NOT NULL,
    FOREIGN KEY (IDImagem_texto) REFERENCES Imagens_Texto(Id),
    FOREIGN KEY (IDUsuario) REFERENCES Usuarios(Id)
);

CREATE TABLE Emocoes (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL
);

CREATE TABLE Emocoes_Texto (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IDImagem_texto INT NOT NULL,
    IDEmocao INT NOT NULL,
    FOREIGN KEY (IDImagem_texto) REFERENCES Imagens_Texto(Id),
    FOREIGN KEY (IDEmocao) REFERENCES Emocoes(Id)
);

CREATE TABLE Avaliacao_Emocao (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IDTexto_emocao INT NOT NULL,
    IDUsuario INT NOT NULL,
    Nota INT NOT NULL,
    FOREIGN KEY (IDTexto_emocao) REFERENCES Emocoes_Texto(Id),
    FOREIGN KEY (IDUsuario) REFERENCES Usuarios(Id)
);

CREATE TABLE Edicao_classificacao(
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IDClassificacao_texto INT NOT NULL ,
    Texto_edit VARCHAR(255),
    FOREIGN KEY (IDClassificacao_texto) REFERENCES Avaliacao_Texto(Id)
);
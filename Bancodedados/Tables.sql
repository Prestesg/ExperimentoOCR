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

CREATE TABLE Emocoes (
    ID INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(255) NOT NULL,
);

CREATE TABLE Emocoes_Texto (
    ID INT PRIMARY KEY NOT NULL,
    IDTexto_imagem INT NOT NULL,
    IDEmocao VARCHAR(255) NOT NULL,
    FOREIGN KEY (IDTexto_imagem) REFERENCES Imagens_Texto(ID)
    FOREIGN KEY (IDEmocao) REFERENCES Emocoes(ID)
);

CREATE TABLE Avaliacao_Emocao (
    ID INT PRIMARY KEY NOT NULL,
    IDTexto_emocao INT NOT NULL,
    IDUsuario INT NOT NULL,
    Nota INT NOT NULL,
    FOREIGN KEY (IDTexto_emocao) REFERENCES Emocoes_Texto(ID),
    FOREIGN KEY (IDUsuario) REFERENCES Usuario(ID)
);
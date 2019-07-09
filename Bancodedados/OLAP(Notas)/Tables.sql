CREATE TABLE usuario (
    Id INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL
);

CREATE TABLE imagens (
    Id INT PRIMARY KEY NOT NULL,
    Link VARCHAR(255) NOT NULL
);

CREATE TABLE texto (
    Id INT PRIMARY KEY NOT NULL,
    Texto VARCHAR(255) NOT NULL
);

CREATE TABLE emocoes (
    Id INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(255) NOT NULL
);

CREATE TABLE avaliacoes (
    IDUsuario INT NOT NULL,
    IDImagem INT NOT NULL,
    IDTexto_imagem INT NOT NULL,
    IDEmocao INT NOT NULL,
    Nota_texto INT NOT NULL,
    Nota_emocao INT NOT NULL,
    FOREIGN KEY (IDImagem) REFERENCES imagens(Id),
    FOREIGN KEY (IDEmocao) REFERENCES emocoes(Id),
    FOREIGN KEY (IDTexto_imagem) REFERENCES texto(Id),
    FOREIGN KEY (IDUsuario) REFERENCES usuario(Id)
);
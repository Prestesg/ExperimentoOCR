CREATE TABLE usuarios (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Senha VARCHAR(255) NOT NULL,
    Imagem VARCHAR(255)
);

CREATE TABLE imagens (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IDUsuario INT NOT NULL,
    Link VARCHAR(255) NOT NULL,
    IDImagem_Origem INT,
    IDImagem_Destino INT,
    FOREIGN KEY (IDUsuario) REFERENCES usuarios(Id)
);

CREATE TABLE imagens_texto (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IDImagem INT NOT NULL,
    Texto VARCHAR(255) NOT NULL,
    Parte_texto INT NOT NULL,
    FOREIGN KEY (IDImagem) REFERENCES imagens(Id)
);

CREATE TABLE avaliacao_texto (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IDImagem_texto INT NOT NULL,
    IDUsuario INT NOT NULL,
    Nota INT NOT NULL,
    FOREIGN KEY (IDImagem_texto) REFERENCES imagens_texto(Id),
    FOREIGN KEY (IDUsuario) REFERENCES usuarios(Id)
);

CREATE TABLE emocoes (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL
);

CREATE TABLE emocoes_texto (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IDImagem_texto INT NOT NULL,
    IDEmocao INT NOT NULL,
    FOREIGN KEY (IDImagem_texto) REFERENCES imagens_texto(Id),
    FOREIGN KEY (IDEmocao) REFERENCES emocoes(Id)
);

CREATE TABLE avaliacao_emocao (
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IDTexto_emocao INT NOT NULL,
    IDUsuario INT NOT NULL,
    Nota INT NOT NULL,
    FOREIGN KEY (IDTexto_emocao) REFERENCES emocoes_texto(Id),
    FOREIGN KEY (IDUsuario) REFERENCES usuarios(Id)
);

CREATE TABLE edicao_classificacao(
    Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    IDClassificacao_texto INT NOT NULL ,
    Texto_edit VARCHAR(255),
    FOREIGN KEY (IDClassificacao_texto) REFERENCES avaliacao_texto(Id)
);
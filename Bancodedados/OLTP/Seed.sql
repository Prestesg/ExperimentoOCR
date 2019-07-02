INSERT INTO emocoes(Nome) VALUES ('Tristeza'),('Alegria'),('Raiva'),('Angústia'),('Nojo'),('Medo');

INSERT INTO usuario(Nome,Email,Senha,Imagem) VALUES ('GABRIEL PRESTES','gabiprestess@hotmail.com','teste123','165149481.jpg');
INSERT INTO imagens(IDUsuario,Link) VALUES (1,'651651691586.jpg');
INSERT INTO imagens_texto(IDImagem,Texto,parte_texto) VALUES (1,'Ontem de manhã foi uma tarde muito gostosa para soltar pipa',0);
INSERT INTO avaliacao_texto(IDImagem_texto,IDUsuario,Nota) VALUES (1,1,8);
INSERT INTO emocoes_texto(IDImagem_texto,IDEmocao) VALUES (1,2);
INSERT INTO avaliacao_emocao(IDTexto_emocao,IDUsuario,Nota) VALUES (1,1,10);

INSERT INTO usuario(Nome,Email,Senha,Imagem) VALUES ('GABRIEL TESTE','gabiteste@hotmail.com','teste123','621698146.jpg');
INSERT INTO imagens(IDUsuario,Link) VALUES (2,'651651651321.jpg');
INSERT INTO imagens_texto(IDImagem,Texto,parte_texto) VALUES (2,'Saiba aquele dia você foi tudo bom demais pra mim',0);
INSERT INTO avaliacao_texto(IDImagem_texto,IDUsuario,Nota) VALUES (2,2,10);
INSERT INTO emocoes_texto(IDImagem_texto,IDEmocao) VALUES (2,2);
INSERT INTO avaliacao_emocao(IDTexto_emocao,IDUsuario,Nota) VALUES (2,2,10);

INSERT INTO usuario(Nome,Email,Senha,Imagem) VALUES ('TÚLIO DO TEMPO','tuliao@hotmail.com','teste123','651651464568.jpg');
INSERT INTO imagens(IDUsuario,Link) VALUES (3,'6351651465146.jpg');
INSERT INTO imagens_texto(IDImagem,Texto,parte_texto) VALUES (3,'Quando tiver saudade de mim, quando tua garganta apertar, basta dar um suspiro que eu vou te consolar',0);
INSERT INTO avaliacao_texto(IDImagem_texto,IDUsuario,Nota) VALUES (3,3,5);
INSERT INTO emocoes_texto(IDImagem_texto,IDEmocao) VALUES (3,1);
INSERT INTO avaliacao_emocao(IDTexto_emocao,IDUsuario,Nota) VALUES (3,3,10);

##USUARIOS QUE INTERAGIRAM NO SISTEMA
INSERT INTO usuario(Nome,Email,Senha,Imagem) VALUES ('Ariela Victória ','aridocinho@hotmail.com','4598','65412364.jpg');
INSERT INTO imagens(IDUsuario,Link) VALUES (4,'98465.jpg');
INSERT INTO imagens_texto(IDImagem,Texto,parte_texto) VALUES (4,'Quando blalbalba, a dasoijfdnasf praorws ',0);
INSERT INTO avaliacao_texto(IDImagem_texto,IDUsuario,Nota) VALUES (4,4,1);
INSERT INTO emocoes_texto(IDImagem_texto,IDEmocao) VALUES (4,2);
INSERT INTO avaliacao_emocao(IDTexto_emocao,IDUsuario,Nota) VALUES (4,4,3);

INSERT INTO avaliacao_texto(IDImagem_texto,IDUsuario,Nota) VALUES (3,4,6);
INSERT INTO avaliacao_emocao(IDTexto_emocao,IDUsuario,Nota) VALUES (3,4,10);
INSERT INTO edicao_classificacao(IDClassificacao_emocao, IDClassificacao_texto,Texto_edit,IDEmocao_edit) VALUES(4,4,'Quanto blablalba,a cachorra faz',3);


INSERT INTO usuario(Nome,Email,Senha,Imagem) VALUES ('Sheila ','sheila@hotmail.com','sheila','sheila.jpg');
INSERT INTO imagens(IDUsuario,Link) VALUES (5,'65419.jpg');
INSERT INTO imagens_texto(IDImagem,Texto,parte_texto) VALUES (5,'Quando blalbalba, a dasoijfdnasf praorws ',0);
INSERT INTO avaliacao_texto(IDImagem_texto,IDUsuario,Nota) VALUES (5,5,10);
INSERT INTO emocoes_texto(IDImagem_texto,IDEmocao) VALUES (5,2);
INSERT INTO avaliacao_emocao(IDTexto_emocao,IDUsuario,Nota) VALUES (5,5,5);

INSERT INTO avaliacao_texto(IDImagem_texto,IDUsuario,Nota) VALUES (4,5,10);
INSERT INTO avaliacao_emocao(IDTexto_emocao,IDUsuario,Nota) VALUES (4,5,10);

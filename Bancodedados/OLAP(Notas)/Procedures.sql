DELIMITER $$
CREATE PROCEDURE PopulaDimencoes (IN qtd INT)
BEGIN
INSERT INTO baseolapexperimentoocrnotas.imagens (ID, Link) SELECT ID, Link FROM baseoltpexperimentoocr.Imagens;
INSERT INTO baseolapexperimentoocrnotas.usuario (ID, Nome, Email) SELECT ID, Nome, Email FROM baseoltpexperimentoocr.Usuario;
INSERT INTO baseolapexperimentoocrnotas.texto (ID, Texto) SELECT ID, Texto FROM baseoltpexperimentoocr.Imagens_Texto;
INSERT INTO baseolapexperimentoocrnotas.emocoes (ID, Nome) SELECT ID, Nome FROM baseoltpexperimentoocr.Emocao;
END $$;
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE PopulaFato (IN qtd INT)
BEGIN
INSERT INTO baseolapexperimentoocrnotas.Extracoes (IDUsuario, IDImagem,IDTexto_Imagem,IDEmocao,Nota_texto,Nota_emocao);
SELECT 
OLTPu.ID, 
OLTPit.IDImagem,
OLTPit.ID,
OLTPe.ID,
OLTPat.Nota,
OLTPae.Nota_emocao 
FROM baseoltpexperimentoocr.Imagens_Texto          AS OLTPit
INNER JOIN baseoltpexperimentoocr.Imagens          AS OLTPi  ON OLTPi.ID              = OLTPit.IDImagem
INNER JOIN baseoltpexperimentoocr.Emocoes_Texto    AS OLTPet ON OLTPet.IDTexto_imagem = OLTPit.ID
INNER JOIN baseoltpexperimentoocr.Emocao           AS OLTPe  ON OLTPe.ID              = OLTPet.IDEmocao
INNER JOIN baseoltpexperimentoocr.Usuario          AS OLTPu  ON OLTPu.ID              = OLTPi.IDUsuario
INNER JOIN baseoltpexperimentoocr.Avaliacao_Texto  AS OLTPat ON OLTPat.IDImagem_texto = OLTPit.ID AND OLTPat.IDUsuario = OLTPi.IDUsuario
INNER JOIN baseoltpexperimentoocr.Avaliacao_Emocao AS OLTPae ON OLTPae.IDTexto_emocao = OLTPet.ID AND OLTPat.IDUsuario = OLTPi.IDUsuario;
END $$;
DELIMITER ;
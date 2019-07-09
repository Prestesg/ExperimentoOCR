DELIMITER $$
CREATE PROCEDURE PopulaDimencoes ()
BEGIN
INSERT INTO baseolapexperimentoocrnotas.imagens (ID, Link) SELECT ID, Link FROM baseoltpexperimentoocr.imagens;
INSERT INTO baseolapexperimentoocrnotas.usuario (ID, Nome, Email) SELECT ID, Nome, Email FROM baseoltpexperimentoocr.usuarios;
INSERT INTO baseolapexperimentoocrnotas.texto (ID, Texto) SELECT ID, Texto FROM baseoltpexperimentoocr.imagens_texto;
INSERT INTO baseolapexperimentoocrnotas.emocoes (ID, Nome) SELECT ID, Nome FROM baseoltpexperimentoocr.emocoes;
END $$;
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE PopulaFato ()
BEGIN
INSERT INTO baseolapexperimentoocrnotas.avaliacoes (IDUsuario, IDImagem,IDTexto_Imagem,IDEmocao,Nota_texto,Nota_emocao)
SELECT 
OLTPu.Id, 
OLTPit.IDImagem,
OLTPit.Id,
OLTPe.Id,
OLTPat.Nota as Nota_Texto,
OLTPae.Nota as Nota_Emocao 
FROM baseoltpexperimentoocr.imagens_texto          AS OLTPit
INNER JOIN baseoltpexperimentoocr.imagens          AS OLTPi  ON OLTPi.Id              = OLTPit.IDImagem
INNER JOIN baseoltpexperimentoocr.emocoes_texto    AS OLTPet ON OLTPet.IDImagem_texto = OLTPit.Id
INNER JOIN baseoltpexperimentoocr.emocoes          AS OLTPe  ON OLTPe.Id              = OLTPet.IDEmocao
INNER JOIN baseoltpexperimentoocr.usuarios         AS OLTPu  ON OLTPu.Id              = OLTPi.IDUsuario
INNER JOIN baseoltpexperimentoocr.avaliacao_texto  AS OLTPat ON OLTPat.IDImagem_texto = OLTPit.Id AND OLTPat.IDUsuario = OLTPi.IDUsuario
INNER JOIN baseoltpexperimentoocr.avaliacao_emocao AS OLTPae ON OLTPae.IDTexto_emocao = OLTPet.Id AND OLTPat.IDUsuario = OLTPi.IDUsuario;
END $$;
DELIMITER ;
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
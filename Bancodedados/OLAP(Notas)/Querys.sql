#QUERY DAS TOP 10 IMAGENS COM MELHORES AVALIAÇÕES DE TEXTO 
SELECT 
emo.Nome,
t.Texto,
i.Link,
a.Nota_emocao,
a.Nota_texto,
u.Nome,
u.Email,
Count(a.IDImagem) as QtdAvaliacoes
FROM baseolapexperimentoocrnotas.avaliacoes AS a
INNER JOIN baseolapexperimentoocrnotas.emocoes AS emo ON emo.ID = a.IDEmocao
INNER JOIN baseolapexperimentoocrnotas.imagens AS i ON i.ID = a.IDImagem
INNER JOIN baseolapexperimentoocrnotas.texto   AS t ON t.ID = a.IDTexto_imagem
INNER JOIN baseolapexperimentoocrnotas.usuario AS u ON u.ID = a.IDUsuario
GROUP BY a.IDImagem
ORDER BY a.Nota_texto DESC

#QUERY DAS TOP 10 IMAGENS COM MELHORES AVALIAÇÕES DE CLASSIFIÇÃO DE EMOÇÃO 
SELECT 
emo.Nome,
t.Texto,
i.Link,
a.Nota_emocao,
a.Nota_texto,
u.Nome,
u.Email,
Count(a.IDImagem) as QtdAvaliacoes
FROM baseolapexperimentoocrnotas.avaliacoes AS a
INNER JOIN baseolapexperimentoocrnotas.emocoes AS emo ON emo.ID = a.IDEmocao
INNER JOIN baseolapexperimentoocrnotas.imagens AS i ON i.ID = a.IDImagem
INNER JOIN baseolapexperimentoocrnotas.texto   AS t ON t.ID = a.IDTexto_imagem
INNER JOIN baseolapexperimentoocrnotas.usuario AS u ON u.ID = a.IDUsuario
GROUP BY a.IDImagem
ORDER BY a.Nota_emocao DESC
LIMIT 10 ;

#QUERY DA MÉDIA DE NOTAS DE CADA IMAGEM 
SELECT 
i.ID,
i.Link,
AVG(Nota_emocao) AS Nota_media_emocao,
AVG(Nota_texto)  AS Nota_media_texto,
t.Texto
FROM baseolapexperimentoocrnotas.avaliacoes AS a
INNER JOIN baseolapexperimentoocrnotas.imagens AS i ON i.ID = a.IDImagem
INNER JOIN baseolapexperimentoocrnotas.texto   AS t ON t.ID = a.IDTexto_imagem
GROUP BY a.IDImagem;

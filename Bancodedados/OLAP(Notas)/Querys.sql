#QUERY DAS TOP 10 IMAGENS COM MELHORES AVALIAÇÕES DE TEXTO 
SELECT 
emo.Nome,
t.Texto,
i.Link,
e.Nota_emocao,
e.Nota_texto,
u.Nome,
u.Email
FROM baseolapexperimentoocrnotas.Extracoes AS e
INNER JOIN baseolapexperimentoocrnotas.Emocoes AS emo ON emo.ID = e.IDEmocao
INNER JOIN baseolapexperimentoocrnotas.Imagens AS i ON i.ID = e.IDImagem
INNER JOIN baseolapexperimentoocrnotas.Texto   AS t ON t.ID = e.IDTexto_imagem
INNER JOIN baseolapexperimentoocrnotas.Usuario AS u ON u.ID = e.IDUsuario
ORDER BY e.Nota_texto DESC
LIMIT 10;

#QUERY DAS TOP 10 IMAGENS COM MELHORES AVALIAÇÕES DE CLASSIFIÇÃO DE EMOÇÃO 
SELECT 
emo.Nome,
t.Texto,
i.Link,
e.Nota_emocao,
e.Nota_texto,
u.Nome,
u.Email
FROM baseolapexperimentoocrnotas.Extracoes AS e
INNER JOIN baseolapexperimentoocrnotas.Emocoes AS emo ON emo.ID = e.IDEmocao
INNER JOIN baseolapexperimentoocrnotas.Imagens AS i ON i.ID = e.IDImagem
INNER JOIN baseolapexperimentoocrnotas.Texto   AS t ON t.ID = e.IDTexto_imagem
INNER JOIN baseolapexperimentoocrnotas.Usuario AS u ON u.ID = e.IDUsuario
ORDER BY e.Nota_emocao DESC
LIMIT 10 ;
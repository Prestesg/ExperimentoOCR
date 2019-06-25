#QUERY DAS TOP 10 IMAGENS COM MELHORES AVALIAÇÕES DE TEXTO 
SELECT 
emo.Nome,
t.Texto,
i.Link,
a.Nota_emocao,
a.Nota_texto,
u.Nome,
u.Email
FROM baseolapexperimentoocrnotas.Avaliacoes AS a
INNER JOIN baseolapexperimentoocrnotas.Emocoes AS emo ON emo.ID = a.IDEmocao
INNER JOIN baseolapexperimentoocrnotas.Imagens AS i ON i.ID = a.IDImagem
INNER JOIN baseolapexperimentoocrnotas.Texto   AS t ON t.ID = a.IDTexto_imagem
INNER JOIN baseolapexperimentoocrnotas.Usuario AS u ON u.ID = a.IDUsuario
ORDER BY a.Nota_texto DESC
LIMIT 10;

#QUERY DAS TOP 10 IMAGENS COM MELHORES AVALIAÇÕES DE CLASSIFIÇÃO DE EMOÇÃO 
SELECT 
emo.Nome,
t.Texto,
i.Link,
a.Nota_emocao,
a.Nota_texto,
u.Nome,
u.Email
FROM baseolapexperimentoocrnotas.Avaliacoes AS a
INNER JOIN baseolapexperimentoocrnotas.Emocoes AS emo ON emo.ID = a.IDEmocao
INNER JOIN baseolapexperimentoocrnotas.Imagens AS i ON i.ID = a.IDImagem
INNER JOIN baseolapexperimentoocrnotas.Texto   AS t ON t.ID = a.IDTexto_imagem
INNER JOIN baseolapexperimentoocrnotas.Usuario AS u ON u.ID = a.IDUsuario
ORDER BY a.Nota_emocao DESC
LIMIT 10 ;

#QUERY DA MÉDIA DE NOTAS DE CADA IMAGEM 
SELECT 
i.IDImagem,
i.Link,
AVG(Nota_emocao) AS Nota_media_emocao,
AVG(Nota_texto)  AS Nota_media_texto,
t.Texto
FROM baseolapexperimentoocrnotas.Avaliacoes AS a
INNER JOIN baseolapexperimentoocrnotas.Imagens AS i ON i.ID = a.IDImagem
INNER JOIN baseolapexperimentoocrnotas.Texto   AS t ON t.ID = a.IDTexto_imagem
GROUP BY i.IDImagem;

#QUERY DA MÉDIA DE NOTAS DE CADA IMAGEM 
SELECT 
i.IDImagem,
i.Link,
AVG(Nota_emocao) AS Nota_media_emocao,
AVG(Nota_texto)  AS Nota_media_texto,
t.Texto
FROM baseolapexperimentoocrnotas.Avaliacoes AS a
INNER JOIN baseolapexperimentoocrnotas.Imagens AS i ON i.ID = a.IDImagem
INNER JOIN baseolapexperimentoocrnotas.Texto   AS t ON t.ID = a.IDTexto_imagem
GROUP BY i.IDImagem;

#QUERY DAS MENORES MÉDIAS DE NOTAS DE CADA IMAGEM 
SELECT 
IDImagem,
Link,
Nota_media_emocao,
Nota_media_texto,
Texto
FROM (SELECT 
        i.IDImagem,
        i.Link,
        AVG(Nota_emocao) AS Nota_media_emocao,
        AVG(Nota_texto)  AS Nota_media_texto,
        t.Texto
        FROM baseolapexperimentoocrnotas.Avaliacoes AS a
        INNER JOIN baseolapexperimentoocrnotas.Imagens AS i ON i.ID = a.IDImagem
        INNER JOIN baseolapexperimentoocrnotas.Texto   AS t ON t.ID = a.IDTexto_imagem
        GROUP BY i.IDImagem)
ORDER BY Nota_media_emocao ASC
LIMIT 10;

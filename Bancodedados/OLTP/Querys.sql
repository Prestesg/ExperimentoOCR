#QUERY PARA EXIBIÇÃO DE IMAGENS DE DETERMINADO USUÁRIO
SELECT 
i.Link,
it.Texto,
e.Nome
FROM imagens AS i 
INNER JOIN imagens_texto as it ON it.IDImagem = i.Id
INNER JOIN emocoes_texto as et ON et.IDImagem_texto = it.IDImagem
INNER JOIN emocoes       as e  ON e.Id = et.IDEmocao
WHERE IDUsuario = 
ORDER BY it.Texto;

#QUERY PARA EXBIÇÃO DAS MELHORES EXTRAÇÕES NA HOME PAGE
SELECT 
i.Link,
it.Texto,
e.Nome,
ae.Nota as Nota_Emocao,
at.Nota as Nota_Texto
FROM imagens AS i 
INNER JOIN imagens_texto    as it ON it.IDImagem = i.Id
INNER JOIN emocoes_texto    as et ON et.IDImagem_texto = it.IDImagem
INNER JOIN emocoes          as e  ON e.Id = et.IDEmocao
INNER JOIN avaliacao_emocao as ae ON ae.IDTexto_emocao = et.Id
INNER JOIN avaliacao_texto  as at ON at.IDImagem_texto = it.Id
GROUP BY it.Texto
ORDER BY at.Nota DESC
LIMIT 10;

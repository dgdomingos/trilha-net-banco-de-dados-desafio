--1
SELECT NOME, ANO FROM Filmes

--2
SELECT NOME, ANO FROM Filmes ORDER BY ano ASC

--3
SELECT NOME, ANO, DURACAO FROM Filmes WHERE NOME = 'de volta para o futuro'

--4
SELECT * FROM Filmes WHERE Ano = 1997

--5
SELECT * FROM Filmes WHERE Ano > 2000

--6
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

--7
SELECT ANO, count(*) QUANTIDADE FROM Filmes
GROUP BY Ano
ORDER BY QUANTIDADE DESC

--8
SELECT PRIMEIRONOME, UltimoNome FROM Atores WHERE Genero = 'M'

--9
SELECT PRIMEIRONOME, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--10
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero H
ON F.Id = H.IdFilme
INNER JOIN Generos G
ON G.Id = H.IdGenero

--11
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero H
ON F.Id = H.IdFilme
INNER JOIN Generos G
ON G.Id = H.IdGenero
WHERE G.Genero = 'Mistério'

--12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel FROM Filmes F
INNER JOIN ElencoFilme E
ON F.Id = E.IdFilme
INNER JOIN Atores A
ON A.Id = E.IdAtor

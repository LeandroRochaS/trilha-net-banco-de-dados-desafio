-- Exercício 1: Buscar o nome e ano dos filmes
SELECT Nome, Ano
FROM Filmes;

-- Exercício 2: Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano;

-- Exercício 3: Buscar pelo filme de "De Volta para o Futuro", trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- Exercício 4: Buscar os filmes lançados em 1997
SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;

-- Exercício 5: Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;

-- Exercício 6: Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

-- Exercício 7: Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade_Filmes
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade_Filmes DESC;

-- Exercício 8: Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Masculino';

-- Exercício 9: Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Feminino'
ORDER BY PrimeiroNome;

-- Exercício 10: Buscar o nome do filme e o gênero
SELECT f.Nome AS Nome_Filme, g.Nome AS Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.FilmeId
INNER JOIN Generos g ON fg.GeneroId = g.Id;

-- Exercício 11: Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome AS Nome_Filme, g.Nome AS Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.FilmeId
INNER JOIN Generos g ON fg.GeneroId = g.Id
WHERE g.Nome = 'Mistério';

-- Exercício 12: Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome AS Nome_Filme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.FilmeId
INNER JOIN Atores a ON ef.AtorId = a.Id;

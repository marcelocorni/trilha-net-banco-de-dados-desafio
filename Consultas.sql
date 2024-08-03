-- Consulta 1
SELECT Nome,Ano FROM Filmes

-- Consulta 2
SELECT Nome,Ano,Duracao FROM Filmes

-- Consulta 3
SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- Consulta 4
SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano = 1997

-- Consulta 5
SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano >= 2001

-- Consulta 6
SELECT Nome,Ano,Duracao FROM Filmes WHERE Duracao > 100  ORDER BY Duracao

-- Consulta 7
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- Consulta 8
SELECT * FROM Atores WHERE Genero = 'M'

-- Consulta 9
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- Consulta 10
SELECT F.Nome,G.Genero FROM FilmesGenero FG, Generos G, Filmes F 
    WHERE FG.IdFilme = F.Id AND FG.IdGenero = G.Id 
    ORDER BY G.Genero


-- Consulta 11
SELECT F.Nome,G.Genero FROM FilmesGenero FG, Generos G, Filmes F 
    WHERE
        FG.IdFilme = F.Id 
        AND FG.IdGenero = G.Id
        AND G.Genero = 'Mistério'

-- Consulta 12
SELECT F.Nome, A.PrimeiroNome,A.UltimoNome,EF.Papel
    FROM ElencoFilme EF, Filmes F, Atores A
    WHERE
        EF.IdFilme = F.Id
        AND EF.IdAtor = A.Id
        
    
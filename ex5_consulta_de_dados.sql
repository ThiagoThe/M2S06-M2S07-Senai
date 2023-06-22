-- Criação da tabela Cidade
CREATE TABLE Cidade (
    id_cidade SERIAL PRIMARY KEY,
    nome_cidade VARCHAR(255),
    id_estado INTEGER,
    capital BOOLEAN,
    qtd_populacao INTEGER,
    FOREIGN KEY (id_estado) REFERENCES Estado (id_estado)
);

-- Criação da tabela Estado
CREATE TABLE Estado (
    id_estado SERIAL PRIMARY KEY,
    id_pais INTEGER,
    nome_estado VARCHAR(255),
    FOREIGN KEY (id_pais) REFERENCES Pais (id_pais)
);

-- Criação da tabela Pais
CREATE TABLE Pais (
    id_pais SERIAL PRIMARY KEY,
    nome_pais VARCHAR(255),
    continente VARCHAR(255)
);

-- Inserção de dados na tabela Pais
INSERT INTO Pais (nome_pais, continente)
VALUES
    ('Brasil', 'América do Sul'),
    ('Estados Unidos', 'América do Norte'),
    ('Argentina', 'América do Sul'),
    ('México', 'América do Norte'),
    ('Canadá', 'América do Norte');

-- Inserção de dados na tabela Estado
INSERT INTO Estado (id_pais, nome_estado)
VALUES
    (1, 'São Paulo'),
    (1, 'Sergipe'),
    (2, 'Texas'),
    (2, 'Califórnia'),
    (3, 'Buenos Aires'),
    (3, 'San Juan'),
    (4, 'Mexico City'),
    (4, 'Yucatán'),
    (5, 'Ontário'),
    (5, 'Quebec');

-- Inserção de dados na tabela Cidade
INSERT INTO Cidade (nome_cidade, id_estado, capital, qtd_populacao)
VALUES
    ('São Paulo', 1, TRUE, 12038175),
    ('Aracaju', 2, TRUE, 664908),
    ('Houston', 3, TRUE, 2312717),
    ('Los Angeles', 4, TRUE, 3999759),
    ('Buenos Aires', 5, TRUE, 2890151),
    ('San Juan', 6, TRUE, 1127781),
    ('Cidade do México', 7, TRUE, 8918653),
    ('Mérida', 8, TRUE, 892363),
    ('Toronto', 9, TRUE, 2930000),
    ('Quebec City', 10, TRUE, 531902);
    
-- Consulta informando nome do país, nome do estado e nome da cidade das capitais com mais de 500 mil habitantes 
   SELECT
    p.nome_pais,
    e.nome_estado,
    c.nome_cidade
FROM
    Cidade c
    JOIN Estado e ON c.id_estado = e.id_estado
    JOIN Pais p ON e.id_pais = p.id_pais
WHERE
    c.capital = 'True'
    AND c.qtd_populacao > 500000
    AND (
        e.nome_estado LIKE 'São%'
        OR e.nome_estado LIKE 'Santo%'
        OR e.nome_estado LIKE 'San%'
        OR e.nome_estado LIKE 'Saint%'
    )
    AND p.continente IN ('América do Norte', 'América Central', 'América do Sul')
ORDER BY
    p.nome_pais, e.nome_estado, c.nome_cidade;

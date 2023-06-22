 -- Criação da tabela Usuario
CREATE TABLE Usuario (
    id_usuario SERIAL PRIMARY KEY,
    nome_usuario VARCHAR(255)
);

-- Criação da tabela Produto
CREATE TABLE Produto (
    id_produto SERIAL PRIMARY KEY,
    nome_produto VARCHAR(255)
);

-- Criação da tabela Venda
CREATE TABLE Venda (
    id_usuario INTEGER,
    id_produto INTEGER,
    valor_produto NUMERIC(10, 2),
    quantidade_produto INTEGER,
    dt_compra DATE,
    FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario),
    FOREIGN KEY (id_produto) REFERENCES Produto (id_produto)
);

-- Inserção de dados de exemplo na tabela Usuario
INSERT INTO Usuario (nome_usuario)
VALUES
    ('João'),
    ('Maria'),
    ('Pedro'),
    ('Ana'),
    ('Lucas');

-- Inserção de dados de exemplo na tabela Produto
INSERT INTO Produto (nome_produto)
VALUES
    ('Camiseta'),
    ('Calça'),
    ('Tênis'),
    ('Bolsa'),
    ('Boné');

-- Inserção de dados de exemplo na tabela Venda
INSERT INTO Venda (id_usuario, id_produto, valor_produto, quantidade_produto, dt_compra)
VALUES
    (1, 1, 50.00, 2, '2023-11-25'),
    (2, 3, 150.00, 1, '2023-11-26'),
    (3, 2, 80.00, 3, '2023-11-27'),
    (4, 4, 200.00, 2, '2023-11-28'),
    (5, 1, 50.00, 1, '2023-11-29'),
    (1, 2, 100.00, 2, '2023-11-30'),
    (2, 4, 180.00, 1, '2023-12-01'),
    (3, 3, 90.00, 3, '2023-12-02'),
    (4, 1, 50.00, 2, '2023-12-03'),
    (5, 2, 80.00, 1, '2023-12-04');

select * from usuario;

-- Script que ordena usuários que mais gastaram na black friday
SELECT
    u.nome_usuario,
    SUM(v.valor_produto * v.quantidade_produto) AS valor_total_gasto
FROM
    Usuario u
    JOIN Venda v ON u.id_usuario = v.id_usuario
WHERE
    EXTRACT(MONTH FROM v.dt_compra) = 11
GROUP BY
    u.nome_usuario
ORDER BY
    valor_total_gasto DESC;

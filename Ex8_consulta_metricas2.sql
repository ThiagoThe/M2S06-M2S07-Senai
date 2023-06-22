-- Criação da tabela Usuario
CREATE TABLE Usuario (
    id_usuario SERIAL PRIMARY KEY,
    nome_usuario VARCHAR(255)
);

-- Criação da tabela Viagem
CREATE TABLE Viagem (
    id_viagem SERIAL PRIMARY KEY,
    destino VARCHAR(255),
    data_viagem DATE,
    valor_passagem NUMERIC(10, 2)
);

-- Criação da tabela Reserva
CREATE TABLE Reserva (
    id_usuario INTEGER,
    id_viagem INTEGER,
    data_reserva DATE,
    FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario),
    FOREIGN KEY (id_viagem) REFERENCES Viagem (id_viagem)
);

-- Inserção de dados de exemplo na tabela Usuario
INSERT INTO Usuario (nome_usuario)
VALUES
    ('João'),
    ('Maria'),
    ('Pedro'),
    ('Ana'),
    ('Lucas');

-- Inserção de dados de exemplo na tabela Viagem
INSERT INTO Viagem (destino, data_viagem, valor_passagem)
VALUES
    ('Rio de Janeiro', '2023-07-10', 500.00),
    ('São Paulo', '2023-07-15', 350.00),
    ('Florianópolis', '2023-07-20', 400.00),
    ('Salvador', '2023-07-25', 450.00),
    ('Porto Alegre', '2023-07-30', 300.00);

-- Inserção de dados de exemplo na tabela Reserva
INSERT INTO Reserva (id_usuario, id_viagem, data_reserva)
VALUES
    (1, 1, '2023-07-05'),
    (2, 2, '2023-07-10'),
    (3, 3, '2023-07-15'),
    (4, 4, '2023-07-20'),
    (5, 5, '2023-07-25'),
    (1, 2, '2023-07-30'),
    (2, 3, '2023-07-31'),
    (3, 4, '2023-08-05'),
    (4, 5, '2023-08-10'),
    (5, 1, '2023-08-15');

-- consulta e ordena os usuários pelo valor total gasto em viagens no mês de julho de 2023
   SELECT
    u.nome_usuario,
    SUM(v.valor_passagem) AS valor_total_gasto
FROM
    Usuario u
    JOIN Reserva r ON u.id_usuario = r.id_usuario
    JOIN Viagem v ON r.id_viagem = v.id_viagem
WHERE
    EXTRACT(MONTH FROM v.data_viagem) = 7
GROUP BY
    u.nome_usuario
ORDER BY
    valor_total_gasto DESC;

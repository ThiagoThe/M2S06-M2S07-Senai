-- criação de tabelas

create table Ator (
id serial primary key,
nome varchar(100) not null,
dt_nasc date not null,
altura decimal(5,2),
peso decimal(5,2)
);

create table Filme(
id serial primary key,
nome_filme varchar(100) not null,
duracao_filme_minutos int not null
);

create table Genero_Filme(
id_filme int,
foreign key (id_filme) references Filme(id),
id_genero int,
foreign key (id_genero) references Genero(id)
);

create table Genero(
id serial primary key,
nome_genero varchar(50)
);

-- Inserção de exemplos de dados nas tabelas "Ator", "Filme", "Genero" e "Genero_Filme"
insert into Ator (nome, dt_nasc, altura, peso)
values ('Ator 1', '1990-01-01', 180, 70),
       ('Ator 2', '1985-05-15', 175, 65),
       ('Ator 3', '1995-12-31', 190, 80);

insert into Filme (nome_filme, duracao_filme_minutos)
values ('Filme A', 120),
       ('Filme B', 90),
       ('Filme C Ação', 150),
       ('Filme D Ação', 180);

insert into Genero (nome_genero)
values ('Ação'),
       ('Comédia'),
       ('Drama');

insert into Genero_Filme (id_filme, id_genero)
values (1, 3),
       (2, 2),
       (3, 1),
       (4, 1);


-- Consulta
select nome_filme, duracao_filme_minutos
from Filme
where nome_filme like '%Ação'
order by duracao_filme_minutos;
      
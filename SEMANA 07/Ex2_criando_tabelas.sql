create table usuario (
id serial primary key,
nome varchar(150) not null,
login varchar(50) not null,
senha varchar(24) not null,
email varchar(100) not null,
dt_nasc date not null,
cpf varchar(14) not null,
rg varchar(20) not null
);

create table jogo (
id serial primary key,
usuario_id int,
constraint fk_usuario foreign key (usuario_id)references usuario(id),
nome varchar(100) not null,
dt_lancamento date not null,
plataforma_id int,
constraint fk_plataforma foreign key (plataforma_id) references plataforma(id),
genero varchar(50) not null,
fotos_url varchar(200),
videos_url varchar(200)
);

create table plataforma(
id serial primary key,
tipo varchar(100),
check (tipo in('PS1','PS2','PS3','PS4','PS5','XBOX SERIES S', 'XBOX SERIES X', 'PC'))
);


-- Inserir o jogo "The Sims"
insert into jogo (usuario_id, nome, dt_lancamento, plataforma_id, genero, fotos_url, videos_url)
select 1, 'The Sims 4 Base', '2020-03-12', id,'Simulador', 'www.fotosgame.com', 'www.videosgame.com'
from plataforma 
where tipo in ('PS4', 'PS5','PC');


insert into Usuario (nome, login, senha, email, dt_nasc, cpf, rg)
values ('Derpson da Silva', 'derpinho', 'derpinho91', 'derpinho91@hotmail.com', '1991-01-01', '123.123.123-12', '4.123.123');

select * from plataforma ;

select * from jogo;

insert into plataforma (tipo)
values ('PS1'),
       ('PS2'),
       ('PS3'),
       ('PS4'),
       ('PS5'),
       ('XBOX SERIES S'),
       ('XBOX SERIES X'),
       ('PC');
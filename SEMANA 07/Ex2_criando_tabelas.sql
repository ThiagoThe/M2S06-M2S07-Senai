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
nome varchar(100) not null,
dt_lancamento date not null
);

create table genero (
id serial primary key,
nome varchar(50) not null
);

create table plataforma (
id serial primary key,
nome varchar(50) not null
);

create table jogo_genero (
jogo_id int references jogo(id),
genero_id int references genero(id),
primary key(jogo_id, genero_id)

);

create table jogo_plataforma (
jogo_id int references jogo(id),
plataforma_id int references plataforma(id),
primary key(jogo_id, plataforma_id)
);

create table foto (
id serial primary key,
jogo_id int references jogo(id),
url varchar(200) not null
);

create table video (
id serial primary key,
jogo_id int references jogo(id),
url varchar(200) not null
);
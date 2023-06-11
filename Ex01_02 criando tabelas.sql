create table projetos(
id serial primary key,
nome varchar(100),
descricao varchar(200),
data_inicio date,
data_prazo date
);

create table tarefas(
id serial primary key,
nome varchar(100),
descricao varchar(200),
data_inicio date,
data_prazo date,
concluida boolean
);
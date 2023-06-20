--criado tabela projetos
create table projetos(
id serial primary key,
nome varchar(100),
descricao varchar(200),
data_inicio date,
data_prazo date
);

--criado tabela tarefas
create table tarefas(
id serial primary key,
nome varchar(100),
descricao varchar(200),
data_inicio date,
data_prazo date,
concluida boolean
);

-- criado tabela categoria de tarefas
create table categoria(
id serial primary key,
nome varchar(100),
descricao varchar(200)
);

--add nova coluna categoria_id a tabela de tarefas
alter table tarefas
add categoria_id int;

--add nova coluna projeto_id a tabela de tarefas
alter table tarefas
add projeto_id int;

--estabelecendo relação entre coluna categ_id e PK categoria
alter table tarefas 
add constraint fk_categoria
foreign key (categoria_id) references categoria(id);

--estabelecendo relação entre coluna projeto_id e PK categoria
alter table tarefas 
add constraint fk_projeto
foreign key (projeto_id) references projetos(id);

--alterando o tipo de dados da tabela categoria 
alter table categoria
alter column nome type categoria_enum
using nome::categoria_enum;

--criando o tipo enum
create type categoria_enum as enum ('Pessoal', 'Profissional', 'Acadêmica');

--inserindo dados na tabela projetos
insert into projetos (nome, descricao, data_inicio, data_prazo, concluida)
values ('Projeto A', 'Descrição do Projeto A', '2023-01-01', '2023-02-28'),
('Projeto B', 'Descrição do Projeto B', '2023-03-01', '2023-04-30'),
('Projeto C', 'Descrição do Projeto C', '2023-05-01', '2023-06-30');

--inserindo dados tabela tarefas
insert into tarefas (nome, descricao, projeto_id, categoria_id, data_inicio, data_prazo, concluida)
values ('Tarefa 1', 'Descrição da Tarefa 1', 1, 1, '2023-01-05', '2023-01-15', true),
('Tarefa 2', 'Descrição da Tarefa 2', 1, 2, '2023-01-10', '2023-01-20', false),
('Tarefa 3', 'Descrição da Tarefa 3', 2, 3, '2023-03-05', '2023-03-15', false),
('Tarefa 4', 'Descrição da Tarefa 4', 2, 1, '2023-03-10', '2023-03-20', false),
('Tarefa 5', 'Descrição da Tarefa 5', 3, 2, '2023-05-05', '2023-05-15', false);

--inserindo dados tabela categoria
INSERT INTO categoria (nome, descricao) VALUES
    ('Pessoal', 'Tarefas relacionadas a assuntos pessoais'),
    ('Profissional', 'Tarefas relacionadas ao trabalho'),
    ('Acadêmica', 'Tarefas relacionadas a estudos');


   
 -- consulta de quais tarefas já foram concluidas
select  id, nome, descricao
from tarefas where concluida = true;

-- consulta de quais tarefas estão atrasadas
select id, nome , descricao
from tarefas where data_prazo < current_date and concluida = false;

-- contagem de tarefas por projetos
select p.id, p.nome as nome_projeto, count(t.id) as quantidade_tarefas
from projetos p
left join tarefas t on p.id = t.projeto_id
group by p.id, p.nome;
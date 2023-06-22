# Exercícios PostgreSQL

Resolução dos exercícios do curso Senai

## Semana 06

- Exercício Proposto:
  Entidades a serem modeladas: Projetos e Tarefas

Projetos deve conter pelo menos os seguintes atributos:

id, nome, descrição, data_inicio , data_prazo

Tarefas deve conter pelo menos os seguintes atributos:

id, nome, descricao , data_inicio , data_prazo, concluida

## Semana 07

- Exercício Proposto:
- Ex 2 e 3

  Uma Startup revolucionária no mundo de jogos, CloudGames. É uma empresa que promete ter uma biblioteca de jogos independente de plataforma em que possibilitará que usuários joguem seus jogos sem necessitarem de um computador. Qualquer SmartTV que tenha o aplicativo será capaz de jogar o jogo com qualquer controle (ou até mesmo teclado e mouse).

  E você foi contratado para modelar a biblioteca de jogos da CloudGames, incluindo os usuários com a seguinte descrição:

  Um usuário terá que criar um login, que deve ser único, uma senha. Essa plataforma a princípio será apenas brasileira, e nós manteremos informações de CPF e RG do usuário, bem como seu nome completo. Apenas usuários maiores de 18 anos poderão comprar os jogos, portanto armazenaremos a data de nascimento do usuário.

  Com relação aos jogos, armazenaremos o nome do jogo, a data de lançamento, a quais plataformas esse jogo pertence, bem como os gêneros desse jogo. Nós consideramos que o jogo pertencerá a apenas um gênero, independente de como a concorrência classifica.

  A princípio, as plataformas que precisaremos lidar serão: PS1, PS2, PS3, PS4, PS5, Xbox Series S, Xbox Series X e PC. Mas provavelmente teremos mais plataformas futuramente.

  Também adicionaremos fotos e vídeos do jogo para deixar os nossos usuários empolgados para jogar.

  Criar um modelo conceitual com base no enunciado acima. Informe quais são as tabelas, colunas e seus respectivos tipos de dados dessa modelagem.

- Ex 4
  Considere um banco de dados de filmes com as seguintes tabelas:
  "Ator", contendo as colunas "Id do ator", "Nome do ator", "Data de nascimento", "Altura" e "Peso";
  "Filme", contendo as colunas "Id do filme", "Nome do filme" e "Duração do filme em minutos";
  "Genero_Filme", contendo as colunas "Id do filme" e "Id do gênero";
  e
  "Genero", contendo as colunas "Id do gênero" e "Nome do gênero".

  Escreva uma consulta SQL para selecionar o nome do filme e sua duração, ordenados pela duração do filme, de todos os filmes cujo título termina com a palavra "Ação".

- Ex 5
  Crie um script em SQL, informando nome do país, nome do estado e nome da cidade, de todas as capitais que possuam população acima de 500 mil habitantes, cujos estados tenham nome de santo (ou seja, iniciem com São, Santo, San ou Saint) em países da América (América do Norte, América Central e América do Sul). Os resultados devem ser ordenados por nome do país, nome do estado e nome da cidade.

- Ex 6
  Considerando o script do exercício anterior Ex 5, crie um script que busque, ao invés dos 10 países que tenham mais habitantes, os países que contenham população maior que a população total da Espanha (calculada como a soma da população de todas as cidades).

- Ex 7
  Crie um script que ordene os usuários que mais gastaram no mês da Black Friday, independente do ano. Esse script deve conter o nome do usuário e o valor total gasto no mês da black friday

# Tecnologias

- PostgreSQL
- DBeaver Community

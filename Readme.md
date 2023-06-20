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

Uma Startup revolucionária no mundo de jogos, CloudGames. É uma empresa que promete ter uma biblioteca de jogos independente de plataforma em que possibilitará que usuários joguem seus jogos sem necessitarem de um computador. Qualquer SmartTV que tenha o aplicativo será capaz de jogar o jogo com qualquer controle (ou até mesmo teclado e mouse).

E você foi contratado para modelar a biblioteca de jogos da CloudGames, incluindo os usuários com a seguinte descrição:

Um usuário terá que criar um login, que deve ser único, uma senha. Essa plataforma a princípio será apenas brasileira, e nós manteremos informações de CPF e RG do usuário, bem como seu nome completo. Apenas usuários maiores de 18 anos poderão comprar os jogos, portanto armazenaremos a data de nascimento do usuário.

Com relação aos jogos, armazenaremos o nome do jogo, a data de lançamento, a quais plataformas esse jogo pertence, bem como os gêneros desse jogo. Nós consideramos que o jogo pertencerá a apenas um gênero, independente de como a concorrência classifica.

A princípio, as plataformas que precisaremos lidar serão: PS1, PS2, PS3, PS4, PS5, Xbox Series S, Xbox Series X e PC. Mas provavelmente teremos mais plataformas futuramente.

Também adicionaremos fotos e vídeos do jogo para deixar os nossos usuários empolgados para jogar.

Criar um modelo conceitual com base no enunciado acima. Informe quais são as tabelas, colunas e seus respectivos tipos de dados dessa modelagem.

# Tecnologias

- PostgreSQL
- DBeaver Community

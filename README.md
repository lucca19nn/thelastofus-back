# The Last of Us - Backend API

Bem-vindo ao repositório do backend do projeto The Last of Us. Esta API foi desenvolvida para servir como uma fonte de dados sobre o universo dos jogos **The Last of Us Part I** e **Part II**, fornecendo informações detalhadas sobre personagens, infectados e locais icônicos da franquia.

## 📜 Sobre o Projeto

Este projeto consiste em uma API RESTful que cataloga elementos cruciais do mundo de The Last of Us. O objetivo é fornecer uma base de dados organizada e acessível para aplicações front-end, como sites informativos, wikis ou qualquer projeto que deseje consumir dados sobre a série.

O banco de dados inclui:
- **Personagens Principais:** Protagonistas e figuras centrais que movem a narrativa.
- **Personagens Secundários:** Personagens de apoio que têm um impacto significativo na história.
- **Infectados:** Os diferentes estágios da infecção do Cordyceps que os jogadores enfrentam.
- **Locais:** Os cenários memoráveis por onde os personagens passam em suas jornadas.

---

## 🛠️ Tecnologias Utilizadas

- **Backend:** [Node.js](https://nodejs.org/)
- **Frontend (Exemplo de consumo):** [React](https://reactjs.org/)
- **Banco de Dados:** [PostgreSQL](https://www.postgresql.org/)

---

## 🚀 Começando

Para rodar este projeto localmente, você precisará ter algumas ferramentas instaladas e seguir os passos abaixo.

### Pré-requisitos

Antes de começar, certifique-se de que você tem os seguintes softwares instalados em sua máquina:
- [Node.js](https://nodejs.org/en/download/) (que inclui o npm)
- [Git](https://git-scm.com/downloads)
- [SQL Shell (psql)](https://www.postgresql.org/download/) - O cliente de linha de comando do PostgreSQL.

### Instalação

Siga os passos abaixo para configurar o ambiente de desenvolvimento.

1.  **Clone o repositório:**
    ```sh
    git clone <URL_DO_SEU_REPOSITORIO>
    ```

2.  **Acesse o diretório do projeto:**
    ```sh
    cd <NOME_DO_DIRETORIO>
    ```

3.  **Instale as dependências do Node.js:**
    ```sh
    npm i
    ```

### Configuração do Banco de Dados

Antes de iniciar o servidor, é crucial configurar o banco de dados PostgreSQL.

1.  **Abra o SQL Shell (psql) e conecte-se ao seu servidor PostgreSQL.**

2.  **Crie o banco de dados do projeto:**
    ```sql
    CREATE DATABASE thelastofus;
    ```

3.  **Conecte-se ao banco de dados recém-criado:**
    ```sh
    \c thelastofus
    ```

4.  **Crie as tabelas necessárias.** Copie e cole os seguintes comandos no seu terminal `psql`:

    **Tabela de Personagens Principais:**
    ```sql
    CREATE TABLE principal (
        id SERIAL PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        papel VARCHAR(50) NOT NULL,
        status VARCHAR(50) NOT NULL,
        origem VARCHAR(150),
        imagem VARCHAR(400),
        descricao TEXT
    );
    ```

    **Tabela de Personagens Secundários:**
    ```sql
    CREATE TABLE secundario (
        id SERIAL PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        papel VARCHAR(50) NOT NULL,
        status VARCHAR(50) NOT NULL,
        origem VARCHAR(150),
        imagem VARCHAR(400),
        descricao TEXT
    );
    ```

    **Tabela de Infectados:**
    ```sql
    CREATE TABLE infectados (
        id SERIAL PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        descricao TEXT,
        origem VARCHAR(150),
        imagem VARCHAR(400),
        comportamento_tipico TEXT
    );
    ```

    **Tabela de Locais:**
    ```sql
    CREATE TABLE locais (
        id SERIAL PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        descricao TEXT,
        imagem VARCHAR(400)
    );
    ```

5.  **Insira os dados iniciais nas tabelas.** Copie e cole os seguintes comandos `INSERT` para popular o banco de dados:

    **Dados dos Personagens Principais:**
    ```sql
    INSERT INTO principal (nome, papel, status, origem, descricao, imagem) VALUES
    ('Ellie Williams', 'Protagonista', 'Viva', 'Zona de Quarentena de Boston', 'Jovem imune que se torna uma sobrevivente implacavel em busca de vinganca', 'ellie.png'),
    ('Joel Miller', 'Protagonista', 'Morto', 'Austin, Texas', 'Sobrevivente que encontrou um proposito ao proteger Ellie, cujo passado o alcancou em Jackson', 'joel.png'),
    ('Abby Anderson', 'Protagonista', 'Viva', 'Salt Lake City (ex-Vagalume)', 'Soldado da WLF em busca de vinganca que encontra um caminho para a redencao', 'abby.png'),
    ('Tess', 'Aliada', 'Morta', 'Zona de Quarentena de Boston', 'Parceira de contrabando de Joel, sacrificou-se para que a missao com Ellie continuasse', 'tess.png'),
    ('Marlene', 'Lider dos Vagalumes', 'Morta', 'Zona de Quarentena de Boston', 'Lider dos Vagalumes que iniciou e concluiu a jornada de Ellie em busca da cura', 'marlene.png'),
    ('Tommy Miller', 'Aliado', 'Vivo', 'Jackson, Wyoming', 'Irmao de Joel e fundador de Jackson, que tambem busca vinganca de forma implacavel', 'tommy.png'),
    ('Dina', 'Aliada', 'Viva', 'Jackson, Wyoming', 'Parceira de Ellie em sua jornada por Seattle, representando um futuro de paz e familia', 'dina.png'),
    ('Jesse', 'Aliado', 'Morto', 'Jackson, Wyoming', 'Amigo leal de Ellie e Dina e eximio lider de patrulha em Jackson', 'jesse.png'),
    ('Lev', 'Aliado', 'Vivo', 'Ilha dos Serafitas', 'Jovem serafita que abandona seu culto e se torna um companheiro inseparavel de Abby', 'lev.png'),
    ('Bill', 'Aliado', 'Vivo', 'Lincoln, Massachusetts', 'Sobrevivente habilidoso e paranoico que ajudou Joel e Ellie no inicio da jornada', 'bill.png'),
    ('Henry', 'Aliado', 'Morto', 'Hartford, Connecticut', 'Homem que fez de tudo para proteger seu irmao mais novo, Sam, durante a jornada', 'henry.png'),
    ('David', 'Antagonista', 'Morto', 'Silver Lake, Colorado', 'Lider carismatico de um grupo de canibais que se torna uma grande ameaca para Ellie', 'david.png'),
    ('JJ', 'Filho de Dina e Jesse', 'Vivo', 'Jackson, Wyoming', 'Filho de Dina e Jesse e figura central na vida de Ellie, representando a esperanca e a vida normal que ela luta para manter', 'jj.png');
    ```

    **Dados dos Personagens Secundários:**
    ```sql
    INSERT INTO secundario (nome, papel, status, origem, descricao, imagem) VALUES
    ('Sam', 'Aliado', 'Morto', 'Hartford, Connecticut', 'Irmao mais novo de Henry, surdo, cuja morte tragica impacta profundamente os protagonistas', 'sam.png'),
    ('Maria Miller', 'Lider de Comunidade', 'Viva', 'Jackson, Wyoming', 'Esposa de Tommy e uma das lideres do conselho que governa a comunidade de Jackson', 'maria.png'),
    ('Owen Moore', 'Membro da WLF', 'Morto', 'Salt Lake City (ex-Vagalume)', 'Soldado idealista e ex-namorado de Abby, parte central de seu grupo de amigos', 'owen.png'),
    ('Mel', 'Membro da WLF', 'Morta', 'Salt Lake City (ex-Vagalume)', 'Medica da WLF e parceira de Owen, estava gravida durante os eventos em Seattle', 'mel.png'),
    ('Manny Alvarez', 'Membro da WLF', 'Morto', 'Salt Lake City (ex-Vagalume)', 'Soldado leal e melhor amigo de Abby, servindo como seu braco direito na WLF', 'manny.png'),
    ('Yara', 'Aliada', 'Morta', 'Ilha dos Serafitas', 'Irma mais velha de Lev, uma serafita exilada que se alia a Abby para proteger seu irmao', 'yara.png'),
    ('Isaac Dixon', 'Lider da WLF', 'Morto', 'Seattle, Washington', 'Lider implacavel da Frente de Libertacao de Washington (WLF) em guerra com os Serafitas', 'isaac.png'),
    ('Frank', 'Parceiro de Bill', 'Morto', 'Lincoln, Massachusetts', 'Parceiro de Bill por muitos anos, cuja nota de suicidio revela a profundidade de sua relacao', 'frank.png'),
    ('Riley Abel', 'Amiga de Ellie', 'Morta', 'Zona de Quarentena de Boston', 'Melhor amiga de Ellie e seu primeiro interesse amoroso, cuja morte revela a imunidade de Ellie (DLC Left Behind)', 'riley.png'),
    ('Sarah Miller', 'Filha de Joel', 'Morta', 'Austin, Texas', 'Filha de Joel, cuja morte no inicio do surto moldou profundamente sua personalidade', 'sarah.png'),
    ('Nora Harris', 'Membro da WLF', 'Morta', 'Salt Lake City (ex-Vagalume)', 'Medica e amiga de Abby, interrogada por Ellie em um momento crucial da busca por vinganca', 'nora.png'),
    ('Jerry Anderson', 'Cirurgiao dos Vagalumes', 'Morto', 'Salt Lake City, Utah', 'Pai de Abby e o cirurgiao chefe dos Vagalumes que foi morto por Joel ao tentar criar uma cura a partir da imunidade de Ellie', 'jerry.png');
    ```

    **Dados dos Infectados:**
    ```sql
    INSERT INTO infectados (nome, descricao, origem, comportamento_tipico, imagem) VALUES
    ('Runner', 'Estagio inicial: mais humano, rapido e agressivo', 'Areas urbanas abandonadas', 'Persegue alvos por visao e som, age em pequenos grupos', 'runner.png'),
    ('Stalker', 'Estagio intermediario: parcialmente deformado, ainda enxerga', 'Locais umidos e escuros', 'Se esconde, embosca alvos, comportamento furtivo', 'stalker.png'),
    ('Clicker', 'Estagio avancado: face destruida por fungos, cego', 'Ambientes escuros e fechados', 'Usa ecolocalizacao, ataques letais de curta distancia', 'clicker.png'),
    ('Bloater', 'Estagio extremo: corpo coberto por crescimento fungico pesado', 'Instalacoes e areas com infestacao antiga', 'Muito resistente, ataques lentos e poderosos', 'bloater.png'),
    ('Shambler', 'Variacao do Bloater: corpo inchado e inflamavel', 'Regioes umidas e altamente infestadas', 'Expele nuvens de acido, ataque de area, lento mas perigoso', 'shambler.png'),
    ('Rat King', 'Mutacao rara: fusao de multiplos infectados em um so corpo', 'Hospitais abandonados com infestacao prolongada', 'Extremamente resistente, multiplos padroes de ataque, comportamento imprevisivel', 'rat-king.png');
    ```

    **Dados dos Locais:**
    ```sql
    INSERT INTO locais (nome, descricao, imagem) VALUES
    ('Zona de Quarentena de Boston', 'Area fortificada onde Joel e Tess vivem no inicio do surto, cheia de patrulhas militares e regras rigidas.', 'zona-de-quarentena.png'),
    ('Capitolio de Boston', 'Edificio iconico e ponto de encontro com Marlene, onde os Vagalumes tinham uma base. O local esta em ruinas e infestado.', 'capitolio.png'),
    ('Lincoln, Massachusetts', 'Cidade onde Bill vive sozinho, repleta de armadilhas engenhosas e defesas improvisadas contra infectados e saqueadores.', 'lincoln.png'),
    ('Pittsburgh, Pensilvania', 'Cidade dominada por cacadores hostis apos a queda da autoridade militar. E um cenario de emboscadas e perigos constantes.', 'pittsburgh.png'),
    ('Represa Hidreletrica de Tommy', 'Localizacao no Condado de Jackson onde Tommy e sua comunidade se estabeleceram, gerando energia e vivendo em seguranca.', 'represa.png'),
    ('Universidade do Leste do Colorado', 'Campus abandonado onde Joel e Ellie procuram os Vagalumes. O local se tornou um ninho de infectados e palco de um confronto brutal.', 'universidade-colorado.png'),
    ('Lakeside Resort (Silver Lake)', 'Comunidade liderada pelo canibal David. Um resort de inverno que esconde uma sociedade sombria e perigosa.', 'lakeside-resort.png'),
    ('Salt Lake City, Utah', 'Base final dos Vagalumes, onde se encontra o Hospital Saint Mary. E o climax da jornada de Joel e Ellie no primeiro jogo.', 'salt-lake-city.png'),
    ('Liberty Gardens Mall (Left Behind)', 'Shopping abandonado em Boston explorado por Ellie e Riley na DLC "Left Behind", cheio de memorias e perigos.', 'liberty-gardens-mall.png'),
    ('Jackson, Wyoming', 'Comunidade prospera e fortificada liderada por Tommy e Maria, oferecendo um refugio seguro em meio a um mundo pos-apocaliptico.', 'jackson.png'),
    ('Seattle, Washington - Centro', 'Vasta area devastada pela guerra entre a WLF (Frente de Libertacao de Washington) e os Serafitas (Scars), cheia de ruinas e perigos.', 'seattle-centro.png'),
    ('Bairro Hillcrest, Seattle', 'Area residencial suburbana em Seattle, com casas, lojas e uma forte presenca de infectados e patrulhas da WLF.', 'hillcrest.png'),
    ('Hospital de Seattle', 'Base principal da WLF, fortemente fortificada. E um ponto crucial na busca de Abby e na jornada de Ellie por vinganca.', 'hospital-de-seattle.png'),
    ('Ilha dos Serafitas', 'Local remoto na costa de Seattle onde os Serafitas vivem, caracterizado por uma sociedade religiosa primitiva e terrenos acidentados.', 'ilha-dos-serafitas.png'),
    ('Aquario de Seattle', 'Antigo ponto turistico que se torna um refugio e base para Owen, Mel e, temporariamente, Abby.', 'aquario.png'),
    ('Santa Barbara, California', 'Cidade costeira controlada pelos Rattlers (Cascaveis), um grupo brutal de escravagistas. E o cenario do confronto final de Ellie.', 'santa-barbara.png'),
    ('A Fazenda', 'Lar pacifico de Ellie e Dina, onde tentam construir uma vida normal antes que o passado de Ellie a assombre novamente.', 'fazenda.png');
    ```

### Rodando o Servidor

Após configurar o banco de dados e instalar as dependências, você pode iniciar o servidor de backend.

Execute o seguinte comando no terminal:
```sh
npm run dev

---

## 📄 Endpoints da API

A API fornece os seguintes endpoints para acessar os dados do universo de The Last of Us.

| Método | Endpoint                  | Descrição                                                 |
| :----- | :------------------------ | :-------------------------------------------------------- |
| `GET`  | `/api/principais`         | Retorna uma lista de todos os personagens principais.       |
| `GET`  | `/api/principais/:id`     | Retorna um personagem principal específico pelo seu ID.     |
| `GET`  | `/api/secundarios`        | Retorna uma lista de todos os personagens secundários.      |
| `GET`  | `/api/secundarios/:id`    | Retorna um personagem secundário específico pelo seu ID.    |
| `GET`  | `/api/infectados`         | Retorna uma lista de todos os tipos de infectados.          |
| `GET`  | `/api/infectados/:id`     | Retorna um tipo de infectado específico pelo seu ID.        |
| `GET`  | `/api/locais`             | Retorna uma lista de todos os locais do jogo.               |
| `GET`  | `/api/locais/:id`         | Retorna um local específico pelo seu ID.                    |

---

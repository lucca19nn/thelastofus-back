CREATE DATABASE thelastofus;

CREATE TABLE principal (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    papel VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    origem VARCHAR(150),
    imagem VARCHAR(400),
    descricao TEXT
);

CREATE TABLE secundario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    papel VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    origem VARCHAR(150),
    imagem VARCHAR(400),
    descricao TEXT
);

CREATE TABLE infectados (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    origem VARCHAR(150),
    imagem VARCHAR(400),
    comportamento_tipico TEXT
);

CREATE TABLE locais (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    imagem VARCHAR(400)
);

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


INSERT INTO secundario (nome, papel, status, origem, descricao, imagem) VALUES
('Sam', 'Aliado', 'Morto', 'Hartford, Connecticut', 'Irmao mais novo de Henry, surdo, cuja morte tragica impacta profundamente os protagonistas', 'sam.png'),
('Maria Miller', 'Lider de Comunidade', 'Viva', 'Jackson, Wyoming', 'Esposa de Tommy e uma das lideres do conselho que governa a comunidade de Jackson', 'maria.png'),
('Owen Moore', 'Membro da WLF', 'Morto', 'Salt Lake City (ex-Vagalume)', 'Soldado idealista e ex-namorado de Abby, parte central de seu grupo de amigos', 'owen.png'),
('Mel', 'Membro da WLF', 'Morta', 'Salt Lake City (ex-Vagalume)', 'Medica da WLF e parceira de Owen, estava gravida durante os eventos em Seattle', 'mel.png'),
('Manny Alvarez', 'Membro da WLF', 'Morto', 'Salt Lake City (ex-Vagalume)', 'Soldado leal e melhor amigo de Abby, servindo como seu braco direito na WLF', 'manny.png'),
('Jordan', 'Antagonista', 'Morto', 'Seattle (WLF)', 'Membro da WLF e amigo de Abby, que participou na morte de Joel. Torna-se um dos alvos da vingança de Ellie, sendo o primeiro do grupo a ser morto por ela.','jordan.png'),
('Yara', 'Aliada', 'Morta', 'Ilha dos Serafitas', 'Irma mais velha de Lev, uma serafita exilada que se alia a Abby para proteger seu irmao', 'yara.png'),
('Isaac Dixon', 'Lider da WLF', 'Morto', 'Seattle, Washington', 'Lider implacavel da Frente de Libertacao de Washington (WLF) em guerra com os Serafitas', 'isaac.png'),
('Frank', 'Parceiro de Bill', 'Morto', 'Lincoln, Massachusetts', 'Parceiro de Bill por muitos anos, cuja nota de suicidio revela a profundidade de sua relacao', 'frank.png'),
('Riley Abel', 'Amiga de Ellie', 'Morta', 'Zona de Quarentena de Boston', 'Melhor amiga de Ellie e seu primeiro interesse amoroso, cuja morte revela a imunidade de Ellie (DLC Left Behind)', 'riley.png'),
('Sarah Miller', 'Filha de Joel', 'Morta', 'Austin, Texas', 'Filha de Joel, cuja morte no inicio do surto moldou profundamente sua personalidade', 'sarah.png'),
('Nora Harris', 'Membro da WLF', 'Morta', 'Salt Lake City (ex-Vagalume)', 'Medica e amiga de Abby, interrogada por Ellie em um momento crucial da busca por vinganca', 'nora.png'),
('Jerry Anderson', 'Cirurgiao dos Vagalumes', 'Morto', 'Salt Lake City, Utah', 'Pai de Abby e o cirurgiao chefe dos Vagalumes que foi morto por Joel ao tentar criar uma cura a partir da imunidade de Ellie', 'jerry.png');

INSERT INTO infectados (nome, descricao, origem, comportamento_tipico, imagem) VALUES
('Runner', 'Estagio inicial: mais humano, rapido e agressivo', 'Areas urbanas abandonadas', 'Persegue alvos por visao e som, age em pequenos grupos', 'runner.png'),
('Stalker', 'Estagio intermediario: parcialmente deformado, ainda enxerga', 'Locais umidos e escuros', 'Se esconde, embosca alvos, comportamento furtivo', 'stalker.png'),
('Clicker', 'Estagio avancado: face destruida por fungos, cego', 'Ambientes escuros e fechados', 'Usa ecolocalizacao, ataques letais de curta distancia', 'clicker.png'),
('Bloater', 'Estagio extremo: corpo coberto por crescimento fungico pesado', 'Instalacoes e areas com infestacao antiga', 'Muito resistente, ataques lentos e poderosos', 'bloater.png'),
('Shambler', 'Variacao do Bloater: corpo inchado e inflamavel', 'Regioes umidas e altamente infestadas', 'Expele nuvens de acido, ataque de area, lento mas perigoso', 'shambler.png'),
('Rat King', 'Mutacao rara: fusao de multiplos infectados em um so corpo', 'Hospitais abandonados com infestacao prolongada', 'Extremamente resistente, multiplos padroes de ataque, comportamento imprevisivel', 'rat-king.png');

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
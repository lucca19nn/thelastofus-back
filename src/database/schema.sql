CREATE DATABASE thelastofus;

CREATE TABLE principal (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    papel VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    origem VARCHAR(150),
    imagem TEXT,
    descricao TEXT
);

CREATE TABLE secundario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    papel VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    origem VARCHAR(150),
    imagem TEXT,
    descricao TEXT
);

CREATE TABLE infectados (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    origem VARCHAR(150),
    imagem TEXT,
    comportamento_tipico TEXT
);

INSERT INTO principal (nome, papel, status, origem, descricao, imagem) VALUES
('Ellie Williams', 'Protagonista', 'Viva', 'Zona de Quarentena de Boston', 'Jovem imune que se torna uma sobrevivente implacável em busca de vingança', 'https://static.wikia.nocookie.net/thelastofus/images/3/34/Part_II_Ellie_infobox.png/revision/latest?cb=20250711183842'),
('Joel Miller', 'Protagonista', 'Morto', 'Austin, Texas', 'Sobrevivente que encontrou um propósito ao proteger Ellie, cujo passado o alcançou em Jackson', 'https://static.wikia.nocookie.net/thelastofus/images/a/af/Part_II_Joel_infobox.png/revision/latest?cb=20230215221156'),
('Abby Anderson', 'Protagonista', 'Viva', 'Salt Lake City (ex-Vagalume)', 'Soldado da WLF em busca de vingança que encontra um caminho para a redenção', 'https://static.wikia.nocookie.net/thelastofus/images/8/8b/Abby_TLOU2_remaster.PNG/revision/latest?cb=20240701200745'),
('Tess', 'Aliada', 'Morta', 'Zona de Quarentena de Boston', 'Parceira de contrabando de Joel, sacrificou-se para que a missão com Ellie continuasse', 'https://static.wikia.nocookie.net/thelastofus/images/d/d5/Part_I_Tess_infobox.png/revision/latest?cb=20230215183628'),
('Marlene', 'Líder dos Vagalumes', 'Morta', 'Zona de Quarentena de Boston', 'Líder dos Vagalumes que iniciou e concluiu a jornada de Ellie em busca da cura', 'https://static.wikia.nocookie.net/thelastofus/images/d/d4/Part_I_Marlene_infobox.png/revision/latest?cb=20230222213251'),
('Tommy Miller', 'Aliado', 'Vivo', 'Jackson, Wyoming', 'Irmão de Joel e fundador de Jackson, que também busca vingança de forma implacável', 'https://static.wikia.nocookie.net/thelastofus/images/f/f0/Part_II_Tommy_infobox.png/revision/latest?cb=20230216035810'),
('Dina', 'Aliada', 'Viva', 'Jackson, Wyoming', 'Parceira de Ellie em sua jornada por Seattle, representando um futuro de paz e família', 'https://static.wikia.nocookie.net/thelastofus/images/f/f4/Part_II_Dina_infobox.png/revision/latest?cb=20230215214241'),
('Jesse', 'Aliado', 'Morto', 'Jackson, Wyoming', 'Amigo leal de Ellie e Dina e exímio líder de patrulha em Jackson', 'https://static.wikia.nocookie.net/thelastofus/images/9/92/Part_II_Jesse_infobox.png/revision/latest?cb=20230215214214'),
('Lev', 'Aliado', 'Vivo', 'Ilha dos Serafitas', 'Jovem serafita que abandona seu culto e se torna um companheiro inseparável de Abby', 'https://static.wikia.nocookie.net/thelastofus/images/a/a3/Part_II_Lev_infobox.png/revision/latest?cb=20230215214140'),
('Bill', 'Aliado', 'Vivo', 'Lincoln, Massachusetts', 'Sobrevivente habilidoso e paranoico que ajudou Joel e Ellie no início da jornada', 'https://static.wikia.nocookie.net/thelastofus/images/2/2f/Part_I_Bill_infobox.png/revision/latest?cb=20230215182523'),
('Henry', 'Aliado', 'Morto', 'Hartford, Connecticut', 'Homem que fez de tudo para proteger seu irmão mais novo, Sam, durante a jornada', 'https://static.wikia.nocookie.net/thelastofus/images/b/b3/Part_I_Henry_infobox.png/revision/latest?cb=20230216023402'),
('David', 'Antagonista', 'Morto', 'Silver Lake, Colorado', 'Líder carismático de um grupo de canibais que se torna uma grande ameaça para Ellie', 'https://static.wikia.nocookie.net/thelastofus/images/3/3c/Part_I_David_infobox.png/revision/latest?cb=20230222041515'),
('JJ', 'Filho de Dina e Jesse', 'Vivo', 'Jackson, Wyoming', 'Filho de Dina e Jesse e figura central na vida de Ellie, representando a esperança e a vida normal que ela luta para manter', 'https://static.wikia.nocookie.net/thelastofus/images/f/fc/Part_II_JJ_infobox.png/revision/latest?cb=20230215213731');


INSERT INTO secundario (nome, papel, status, origem, descricao, imagem) VALUES
('Sam', 'Aliado', 'Morto', 'Hartford, Connecticut', 'Irmão mais novo de Henry, surdo, cuja morte trágica impacta profundamente os protagonistas', 'https://static.wikia.nocookie.net/thelastofus/images/f/f8/Part_I_Sam_infobox.png/revision/latest?cb=20230216023425'),
('Maria Miller', 'Líder de Comunidade', 'Viva', 'Jackson, Wyoming', 'Esposa de Tommy e uma das líderes do conselho que governa a comunidade de Jackson', 'https://static.wikia.nocookie.net/thelastofus/images/5/51/Part_II_Maria_infobox.png/revision/latest?cb=20230215213745'),
('Owen Moore', 'Membro da WLF', 'Morto', 'Salt Lake City (ex-Vagalume)', 'Soldado idealista e ex-namorado de Abby, parte central de seu grupo de amigos', 'https://static.wikia.nocookie.net/thelastofus/images/6/67/Part_II_Owen_infobox.png/revision/latest?cb=20230215214107'),
('Mel', 'Membro da WLF', 'Morta', 'Salt Lake City (ex-Vagalume)', 'Médica da WLF e parceira de Owen, estava grávida durante os eventos em Seattle', 'https://static.wikia.nocookie.net/thelastofus/images/0/02/Part_II_Mel_infobox.png/revision/latest?cb=20230215214032'),
('Manny Alvarez', 'Membro da WLF', 'Morto', 'Salt Lake City (ex-Vagalume)', 'Soldado leal e melhor amigo de Abby, servindo como seu braço direito na WLF', 'https://static.wikia.nocookie.net/thelastofus/images/1/10/Part_II_Manny_infobox.png/revision/latest?cb=20230215214121'),
('Yara', 'Aliada', 'Morta', 'Ilha dos Serafitas', 'Irmã mais velha de Lev, uma serafita exilada que se alia a Abby para proteger seu irmão', 'https://static.wikia.nocookie.net/thelastofus/images/b/b0/Part_II_Yara_infobox.png/revision/latest?cb=20230215214047'),
('Isaac Dixon', 'Líder da WLF', 'Morto', 'Seattle, Washington', 'Líder implacável da Frente de Libertação de Washington (WLF) em guerra com os Serafitas', 'https://static.wikia.nocookie.net/thelastofus/images/2/21/Part_II_Isaac_infobox.png/revision/latest?cb=20230215213903'),
('Frank', 'Parceiro de Bill', 'Morto', 'Lincoln, Massachusetts', 'Parceiro de Bill por muitos anos, cuja nota de suicídio revela a profundidade de sua relação', 'https://static.wikia.nocookie.net/thelastofus/images/9/92/Frank%27s_corpse.jpeg/revision/latest?cb=20160517002804'),
('Riley Abel', 'Amiga de Ellie', 'Morta', 'Zona de Quarentena de Boston', 'Melhor amiga de Ellie e seu primeiro interesse amoroso, cuja morte revela a imunidade de Ellie (DLC Left Behind)', 'https://static.wikia.nocookie.net/thelastofus/images/c/c8/Part_I_Riley_infobox.png/revision/latest?cb=20230222234744'),
('Sarah Miller', 'Filha de Joel', 'Morta', 'Austin, Texas', 'Filha de Joel, cuja morte no início do surto moldou profundamente sua personalidade', 'https://static.wikia.nocookie.net/thelastofus/images/0/0b/Sarah_Part_I_infobox.png/revision/latest?cb=20230815204341'),
('Nora Harris', 'Membro da WLF', 'Morta', 'Salt Lake City (ex-Vagalume)', 'Médica e amiga de Abby, interrogada por Ellie em um momento crucial da busca por vingança', 'https://static.wikia.nocookie.net/thelastofus/images/d/d9/Part_II_Nora_infobox.png/revision/latest?cb=20230215214017'),
('Jerry Anderson', 'Cirurgião dos Vagalumes', 'Morto', 'Salt Lake City, Utah', 'Pai de Abby e o cirurgião chefe dos Vagalumes que foi morto por Joel ao tentar criar uma cura a partir da imunidade de Ellie', 'https://static.wikia.nocookie.net/thelastofus/images/1/1f/Part_II_Jerry_infobox.png/revision/latest?cb=20230215213838');

INSERT INTO infectados (nome, descricao, origem, comportamento_tipico, imagem) VALUES
('Runner', 'Estágio inicial: mais humano, rápido e agressivo', 'Áreas urbanas abandonadas', 'Persegue alvos por visão e som, age em pequenos grupos', 'https://static.wikia.nocookie.net/thelastofus/images/7/72/Runner_models.png/revision/latest?cb=20200711175107' ),
('Stalker', 'Estágio intermediário: parcialmente deformado, ainda enxerga', 'Locais úmidos e escuros', 'Se esconde, embosca alvos, comportamento furtivo', 'https://static.wikia.nocookie.net/thelastofus/images/b/b1/Stalker_models.png/revision/latest?cb=20200711175035'),
('Clicker', 'Estágio avançado: face destruída por fungos, cego', 'Ambientes escuros e fechados', 'Usa ecolocalização, ataques letais de curta distância', 'https://static.wikia.nocookie.net/thelastofus/images/5/54/Clicker_model_Part_II.png/revision/latest?cb=20200713122641'),
('Bloater', 'Estágio extremo: corpo coberto por crescimento fúngico pesado', 'Instalações e áreas com infestação antiga', 'Muito resistente, ataques lentos e poderosos', 'https://static.wikia.nocookie.net/thelastofus/images/2/24/Bloater_Part_II_model.png/revision/latest?cb=20200713122711'),
('Shambler', 'Variação do Bloater: corpo inchado e inflamável', 'Regiões úmidas e altamente infestadas', 'Expele nuvens de ácido, ataque de área, lento mas perigoso', 'https://static.wikia.nocookie.net/thelastofus/images/9/90/Shambler_Part_II_model.png/revision/latest?cb=20200713122614'),
('Rat King', 'Mutação rara: fusão de múltiplos infectados em um só corpo', 'Hospitais abandonados com infestação prolongada', 'Extremamente resistente, múltiplos padrões de ataque, comportamento imprevisível', 'https://static.wikia.nocookie.net/thelastofus/images/d/dc/Rat_King_model.png/revision/latest?cb=20200711175135');
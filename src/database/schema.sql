CREATE DATABASE thelastofus;

CREATE TABLE principal (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    papel VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    origem VARCHAR(150),
    imagem VARCHAR(255),
    descricao TEXT
);

CREATE TABLE secundario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    papel VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    origem VARCHAR(150),
    imagem VARCHAR(255),
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
('Joel', 'Protagonista', 'Morto', 'Austin, Texas', 'Sobrevivente endurecido e contrabandista', 'joel.jpg'),
('Ellie', 'Protagonista', 'Viva', 'Jackson, Wyoming', 'Adolescente imune, corajosa e curiosa', 'ellie.jpg'),
('Tess', 'Aliada', 'Morta', 'Boston', 'Parceira de Joel, pragmática e determinada', 'tess.jpg'),



INSERT INTO secundario (nome, papel, status, origem, descricao, imagem) VALUES
('Tommy', 'Irmão', 'Vivo', 'Jackson, Wyoming', 'Ex-militar, idealista e fundador da comunidade', 'tommy.jpg'),
('Marlene', 'Líder', 'Morta', 'QG dos Vagalumes', 'Líder dos Vagalumes, motivada pela busca de cura', 'marlene.jpg'),
('Henry', 'Aliado', 'Morto', 'Pittsburgh', 'Protetor do irmão, teve papel importante em uma missão', 'henry.jpg'),
('Sam', 'Irmão', 'Morto', 'Pittsburgh', 'Irmão mais novo de Henry, sua morte impacta profundamente Henry', 'sam.jpg');
('Bill', 'Sobrevivente', 'Morto', 'Lincoln, Massachusetts', 'Especialista em armadilhas, ajuda Joel e Ellie', 'bill.jpg'),
('David', 'Antagonista', 'Morto', 'Jackson, Wyoming', 'Líder de um grupo hostil, antagonista de Ellie', 'david.jpg'),
('Riley', 'Amiga', 'Morta', 'Jackson, Wyoming', 'Amiga de infância de Ellie, aparece em flashbacks', 'riley.jpg');


INSERT INTO infectados (nome, descricao, origem, comportamento_tipico, imagem) VALUES
('Runner', 'Estágio inicial: mais humano, rápido e agressivo', 'Áreas urbanas abandonadas', 'Persegue alvos por visão e som, age em pequenos grupos', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.nme.com%2Fguides%2Fgaming-guides%2Fthe-last-of-us-zombie-types-3854070&psig=AOvVaw2WBszGVtfaHlKEHpm5QRtq&ust=1758720938978000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCIiblY6A748DFQAAAAAdAAAAABAL' ),
('Stalker', 'Estágio intermediário: parcialmente deformado, ainda enxerga', 'Locais úmidos e escuros', 'Se esconde, embosca alvos, comportamento furtivo', 'https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.game-art-hq.com%2F113224%2Fthe-infected-stalkers-from-the-last-of-us-in-the-ga-hq-video-game-character-db%2F&psig=AOvVaw1dRGC6aPBt3Da1QdHa17PL&ust=1758721066834000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCMiHjtGA748DFQAAAAAdAAAAABBH'),
('Clicker', 'Estágio avançado: face destruída por fungos, cego', 'Ambientes escuros e fechados', 'Usa ecolocalização, ataques letais de curta distância', 'https://www.google.com/url?sa=i&url=http%3A%2F%2Fbr.ign.com%2Fgallery%2F130655%2Fembed&psig=AOvVaw1utD8mYMvIy1_V1iV6x6K1&ust=1758721144074000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCMj1tu-A748DFQAAAAAdAAAAABAE'),
('Bloater', 'Estágio extremo: corpo coberto por crescimento fúngico pesado', 'Instalações e áreas com infestação antiga', 'Muito resistente, ataques lentos e poderosos', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fscreenrant.com%2Feasy-kill-bloater-last-of-us%2F&psig=AOvVaw2pQK8E8k-f4g3ZxmjnLJoH&ust=1758721190570000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCLjn4vKB748DFQAAAAAdAAAAABBJ'),
('Shambler', 'Variação do Bloater: corpo inchado e inflamável', 'Regiões úmidas e altamente infestadas', 'Expele nuvens de ácido, ataque de área, lento mas perigoso', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fthelastofus.fandom.com%2Fwiki%2FShambler&psig=AOvVaw0icNNhYusDzgqcvgsSMWAf&ust=1758721572189000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCLC9_7yC748DFQAAAAAdAAAAABAW'),
('Rat King', 'Mutação rara: fusão de múltiplos infectados em um só corpo', 'Hospitais abandonados com infestação prolongada', 'Extremamente resistente, múltiplos padrões de ataque, comportamento imprevisível', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fthelastofus.fandom.com%2Fwiki%2FRat_king&psig=AOvVaw3djualGUMDyORdgzvW6bqV&ust=1758721609143000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCPC9_t-C748DFQAAAAAdAAAAABAv');
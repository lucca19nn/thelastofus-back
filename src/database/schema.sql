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
    imagem VARCHAR(255),
    comportamento_tipico TEXT
);

INSERT INTO principal (nome, papel, status, origem, descricao, imagem) VALUES
('Joel', 'Protagonista', 'Vivo', 'Austin, Texas', 'Sobrevivente endurecido e contrabandista', 'joel.jpg'),
('Ellie', 'Protagonista', 'Viva', 'Jackson, Wyoming', 'Adolescente imune, corajosa e curiosa', 'ellie.jpg'),
('Tess', 'Aliada', 'Morta', 'Boston', 'Parceira de Joel, pragmática e determinada', 'tess.jpg'),
('Marlene', 'Líder', 'Viva', 'QG dos Vagalumes', 'Líder dos Vagalumes, motivada pela busca de cura', 'marlene.jpg');

INSERT INTO secundario (nome, papel, status, origem, descricao, imagem) VALUES
('Tommy', 'Irmão', 'Vivo', 'Jackson, Wyoming', 'Ex-militar, idealista e fundador da comunidade', 'tommy.jpg'),
('Marlene', 'Líder', 'Viva', 'QG dos Vagalumes', 'Líder dos Vagalumes, motivada pela busca de cura', 'marlene.jpg'),
('Henry', 'Aliado', 'Morto', 'Pittsburgh', 'Protetor do irmão, teve papel importante em uma missão', 'henry.jpg'),
('Sam', 'Irmão', 'Morto', 'Pittsburgh', 'Irmão mais novo de Henry, sua morte impacta profundamente Henry', 'sam.jpg');

INSERT INTO infectados (nome, descricao, origem, comportamento_tipico) VALUES
('Runner', 'Estágio inicial: mais humano, rápido e agressivo', 'Áreas urbanas abandonadas', 'Persegue alvos por visão e som, age em pequenos grupos'),
('Stalker', 'Estágio intermediário: parcialmente deformado, ainda enxerga', 'Locais úmidos e escuros', 'Se esconde, embosca alvos, comportamento furtivo'),
('Clicker', 'Estágio avançado: face destruída por fungos, cego', 'Ambientes escuros e fechados', 'Usa ecolocalização, ataques letais de curta distância'),
('Bloater', 'Estágio extremo: corpo coberto por crescimento fúngico pesado', 'Instalações e áreas com infestação antiga', 'Muito resistente, ataques lentos e poderosos'),
('Shambler', 'Variação do Bloater: corpo inchado e inflamável', 'Regiões úmidas e altamente infestadas', 'Expele nuvens de ácido, ataque de área, lento mas perigoso'),
('Rat King', 'Mutação rara: fusão de múltiplos infectados em um só corpo', 'Hospitais abandonados com infestação prolongada', 'Extremamente resistente, múltiplos padrões de ataque, comportamento imprevisível');
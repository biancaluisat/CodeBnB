CREATE DATABASE saep_db;
\c saep_db

CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE cliente (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(100) NOT NULL UNIQUE,
    celular VARCHAR(20)
);

CREATE TABLE imoveis (
    id SERIAL PRIMARY KEY,
    endereco VARCHAR(200) NOT NULL,
    cliente_id INTEGER NOT NULL REFERENCES cliente (id)
);

CREATE TABLE alugueis (
    id SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    imoveis_id INTEGER NOT NULL REFERENCES imoveis (id)
);

INSERT INTO usuario (nome, senha) VALUES ('admin', '$2b$10$sPC050XWV3GbuWNgJc.q/OQ2Ec0CBUpQxXfTcP28hvOMbQ7ocOxcu');
INSERT INTO usuario (nome, senha) VALUES ('joao_silva', '$2b$10$3p8BWWxPcc/7vrNVP0eGceOw.L7.SXxSWeAyq3H9EMkmf4KsWO.HK');
INSERT INTO usuario (nome, senha) VALUES ('maria_souza', '$2b$10$ovkP3onaDztrcHMoIZ.wq.r0P13ypzFRmfiGKXVey/u.dIfSgA2re');
INSERT INTO usuario (nome, senha) VALUES ('pedro_santos', '$2b$10$S.DfNE1AMVADLrXW4z9uY.rk7U4nDpUnlt5/GtaYHd19IuhVeWtWy');

INSERT INTO cliente (nome, cpf, celular) VALUES ('Ana Oliveira', 'fb08fc48b331fd3832081b3ce6b0ceae', '(11) 91111-1111');
INSERT INTO cliente (nome, cpf, celular) VALUES ('Bruno Costa', '2fcf428faa4a33e23fb92b7269cf897b', '(11) 92222-2222');
INSERT INTO cliente (nome, cpf, celular) VALUES ('Carlos Mendes', 'eae5637c74eb32a211963f038511af7a', '(11) 93333-3333');
INSERT INTO cliente (nome, cpf, celular) VALUES ('Diana Rocha', '17b0aaee766e271645007ae827723cb4', '(11) 94444-4444');
INSERT INTO cliente (nome, cpf, celular) VALUES ('bianca legal teodoro', '090204bbdcba55417184c2a0ba23be81', NULL);

INSERT INTO imoveis (endereco, cliente_id) VALUES ('Rua das Flores, 123 - Centro', 1);
INSERT INTO imoveis (endereco, cliente_id) VALUES ('Avenida Brasil, 1500 - Bela Vista', 2);
INSERT INTO imoveis (endereco, cliente_id) VALUES ('Praça da Sé, 45 - Sé', 3);
INSERT INTO imoveis (endereco, cliente_id) VALUES ('Alameda Santos, 987 - Cerqueira Césa', 4);
INSERT INTO imoveis (endereco, cliente_id) VALUES ('bibi legal 234', 5);

INSERT INTO alugueis (data, imoveis_id) VALUES ('2026-01-15', 1);
INSERT INTO alugueis (data, imoveis_id) VALUES ('2026-02-20', 2);
INSERT INTO alugueis (data, imoveis_id) VALUES ('2026-05-10', 3);
INSERT INTO alugueis (data, imoveis_id) VALUES ('2026-11-05', 4);

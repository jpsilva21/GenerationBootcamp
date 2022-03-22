CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id bigint auto_increment,
    nivel int,
    classe varchar(255),
    habilidade varchar(255),
    arma varchar(255),
    
    primary key(id)
    );
    
SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
	id bigint auto_increment,
    nome varchar(255),
    raca varchar(255),
    vida int,
    defesa int,
    ataque int,
    classe_id bigint,
    
    primary key(id),
    foreign key (classe_id) references tb_classe(id)
);

SELECT * FROM tb_personagem;

INSERT INTO tb_classe(nivel, classe, habilidade,arma) 
VALUES (99, "Guerreiro", "Pericia em armas", "Espada");

INSERT INTO tb_classe(nivel, classe, habilidade,arma) 
VALUES (200, "Mago", "Resistencia a Magia", "Cajado");

INSERT INTO tb_classe(nivel, classe, habilidade,arma) 
VALUES (100, "Ladino", "Mãos leves", "Adaga");

INSERT INTO tb_classe(nivel, classe, habilidade,arma) 
VALUES (149, "Arqueiro", "Precisão", "Arco e flecha");

INSERT INTO tb_classe(nivel, classe, habilidade,arma) 
VALUES (50, "Bardo", "Lábia", "Alaude");



INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id) 
VALUES ("Charles", "Anão", 1500, 3300, 7500, 1);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id) 
VALUES ("Harry", "Elfo Negro", 1150, 1500, 2800, 5);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id) 
VALUES ("Inês", "Centauro", 4000, 550, 6500, 2);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id) 
VALUES ("Rayane", "Humana", 400, 5600, 1900, 3);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id) 
VALUES ("Alex", "Construto", 2400, 9000, 4200, 4);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id) 
VALUES ("Lady", "Elfa", 1500, 5000, 700, 3);

SELECT * FROM tb_personagem where ataque >2000;

SELECT * FROM tb_personagem where defesa >= 1000 AND defesa <=2000;
-- outro jeito
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

-- o simbolo % indica a posição da letra q vc quer,
-- se for palavra que comecem com "Letra", fica igual abaixo
SELECT * FROM tb_personagem WHERE nome LIKE "c%";


SELECT * FROM tb_personagem
INNER JOIN tb_classe on tb_classe.id = tb_personagem.id;

SELECT * FROM tb_classe
INNER JOIN tb_personagem on tb_personagem.classe_id = tb_classe.id WHERE classe_id = 3;
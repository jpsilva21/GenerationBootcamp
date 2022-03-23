CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    marca varchar(255),
    categoria varchar(255),
    embutidos boolean,
    
    primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome_corte varchar(255),
    kilograma decimal(7,3),
    preco_kg decimal(8,2),
    formato_corte varchar(255),
	estado varchar(255),
    categoria_id bigint,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
    );
    
SELECT * FROM tb_produtos;

INSERT INTO tb_categoria(marca, categoria, embutidos) 
VALUES ("Aurora", "Carne vermelha", false);

INSERT INTO tb_categoria(marca, categoria, embutidos) 
VALUES ("Sadia", "Carne vermelha", false);

INSERT INTO tb_categoria(marca, categoria, embutidos) 
VALUES ("Perdigão", "Carne vermelha", true);

INSERT INTO tb_categoria(marca, categoria, embutidos) 
VALUES ("Seara", "Carne vermelha", false);

INSERT INTO tb_categoria(marca, categoria, embutidos) 
VALUES ("Seara", "Carne branca", false);



INSERT INTO tb_produtos(nome_corte, kilograma, preco_kg, formato_corte, estado, categoria_id) 
VALUES ("Costela suína", 0.513, 29.99, "Bife", "Fresco",2);

INSERT INTO tb_produtos(nome_corte, kilograma, preco_kg, formato_corte, estado, categoria_id) 
VALUES ("Asa de frango", 1.250, 23.99, "Inteiro", "Fresco",5);

INSERT INTO tb_produtos(nome_corte, kilograma, preco_kg, formato_corte, estado, categoria_id) 
VALUES ("Linguiça toscana", 1.231, 28.99, "Inteiro", "Congelado",3);

INSERT INTO tb_produtos(nome_corte, kilograma, preco_kg, formato_corte, estado, categoria_id) 
VALUES ("Contrafilé", 0.924, 57.99, "Cubos", "Fresco",2);

INSERT INTO tb_produtos(nome_corte, kilograma, preco_kg, formato_corte, estado, categoria_id) 
VALUES ("Alcatra", 2.309, 51.99, "Bife", "Fresco",4);

INSERT INTO tb_produtos(nome_corte, kilograma, preco_kg, formato_corte, estado, categoria_id) 
VALUES ("Peito de frango", 1.775, 17.99, "Filé", "Congelado",5);

INSERT INTO tb_produtos(nome_corte, kilograma, preco_kg, formato_corte, estado, categoria_id) 
VALUES ("Picanha", 3.683, 69.99, "Bife", "Fresco",4);

INSERT INTO tb_produtos(nome_corte, kilograma, preco_kg, formato_corte, estado, categoria_id) 
VALUES ("Bacon", 0.600, 19.99, "Tiras", "Fresco",1);


SELECT * FROM tb_produtos where preco_kg >50;

SELECT * FROM tb_produtos WHERE preco_kg BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_corte LIKE "c%";


SELECT * FROM tb_produtos
INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.id;

SELECT * FROM tb_categoria
INNER JOIN tb_produtos on tb_produtos.categoria_id = tb_categoria.id WHERE categoria_id = 5;

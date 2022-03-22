CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    salgada boolean,
    doce boolean,
    vegetariana boolean,
    
    primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
	id bigint auto_increment,
    sabor varchar(255),
    tamanho varchar(255),
    preco decimal(4,2),
    borda_recheada boolean,
    massa varchar(255),
    categoria_id bigint,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
    );
    
SELECT * FROM tb_pizza;

INSERT INTO tb_categoria(salgada, doce, vegetariana) 
VALUES (true, false, false);

INSERT INTO tb_categoria(salgada, doce, vegetariana) 
VALUES (true, false, true);

INSERT INTO tb_categoria(salgada, doce, vegetariana) 
VALUES (false, true, true);

INSERT INTO tb_categoria(salgada, doce, vegetariana) 
VALUES (false, true, false);



INSERT INTO tb_pizza(sabor, tamanho, preco, borda_recheada, massa, categoria_id) 
VALUES ("Portuguesa", "Grande", 37.99, false, "Fina",1);

INSERT INTO tb_pizza(sabor, tamanho, preco, borda_recheada, massa, categoria_id) 
VALUES ("Escarola", "Broto", 21.99, true, "Fina",2);

INSERT INTO tb_pizza(sabor, tamanho, preco, borda_recheada, massa, categoria_id) 
VALUES ("Calabresa", "Grande", 34.99, true, "Grossa",1);

INSERT INTO tb_pizza(sabor, tamanho, preco, borda_recheada, massa, categoria_id) 
VALUES ("Super Pepperoni", "Grande", 63.99, true, "Fina",1);

INSERT INTO tb_pizza(sabor, tamanho, preco, borda_recheada, massa, categoria_id) 
VALUES ("Carne Seca", "Grande", 67.99, true, "Grossa",1);

INSERT INTO tb_pizza(sabor, tamanho, preco, borda_recheada, massa, categoria_id) 
VALUES ("Bacon com chocolate", "Broto", 33.99, false, "Grossa",4);

INSERT INTO tb_pizza(sabor, tamanho, preco, borda_recheada, massa, categoria_id) 
VALUES ("Banana e canela", "Grande", 34.99, true, "fina",3);

INSERT INTO tb_pizza(sabor, tamanho, preco, borda_recheada, massa, categoria_id) 
VALUES ("Rúcula", "Grande", 37.99, true, "Grossa",2);


SELECT * FROM tb_pizza where preco >45;

SELECT * FROM tb_pizza WHERE preco BETWEEN 29.00 AND 60.00;

SELECT * FROM tb_pizza WHERE sabor LIKE "c%";


SELECT * FROM tb_pizza
INNER JOIN tb_categoria on tb_categoria.id = tb_pizza.id;

SELECT * FROM tb_categoria
INNER JOIN tb_pizza on tb_pizza.categoria_id = tb_categoria.id WHERE categoria_id = 1;
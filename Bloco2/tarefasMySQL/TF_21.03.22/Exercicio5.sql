CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    marca varchar(255),
    categoria varchar(255),
    disponibilidade boolean,
    
    primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
    preco decimal(10,2),
    quantidade int,
    cor varchar(255),
	pronta_entrega boolean,
    categoria_id bigint,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
    );
    
SELECT * FROM tb_produtos;

INSERT INTO tb_categoria(marca, categoria, disponibilidade) 
VALUES ("Makita", "Ferramenta", true);

INSERT INTO tb_categoria(marca, categoria, disponibilidade) 
VALUES ("Portinari", "Cerâmica", true);

INSERT INTO tb_categoria(marca, categoria, disponibilidade) 
VALUES ("3M", "Acessório", true);

INSERT INTO tb_categoria(marca, categoria, disponibilidade) 
VALUES ("Delta", "Revestimento", true);

INSERT INTO tb_categoria(marca, categoria, disponibilidade) 
VALUES ("Tigre", "Material de construção", true);



INSERT INTO tb_produtos(nome, preco, quantidade, cor, pronta_entrega, categoria_id) 
VALUES ("Martelo", 41.99, 1, "Vermelho", true,1);

INSERT INTO tb_produtos(nome, preco, quantidade, cor, pronta_entrega, categoria_id)
VALUES ("Prego", 19.90, 25, "Cinza", true,5);

INSERT INTO tb_produtos(nome, preco, quantidade, cor, pronta_entrega, categoria_id) 
VALUES ("Porcelanato", 58.69, 1, "Pérola", true,2);

INSERT INTO tb_produtos(nome, preco, quantidade, cor, pronta_entrega, categoria_id) 
VALUES ("Fita Isolante", 2.99, 1, "Preta", true,3);

INSERT INTO tb_produtos(nome, preco, quantidade, cor, pronta_entrega, categoria_id) 
VALUES ("Azulejo", 13.99, 1, "Branco", true,4);

INSERT INTO tb_produtos(nome, preco, quantidade, cor, pronta_entrega, categoria_id) 
VALUES ("Parafusadeira", 1235.99, 1, "Azul", true,1);

INSERT INTO tb_produtos(nome, preco, quantidade, cor, pronta_entrega, categoria_id) 
VALUES ("Pastilhas", 16.99, 1, "Verde", true,4);

INSERT INTO tb_produtos(nome, preco, quantidade, cor, pronta_entrega, categoria_id) 
VALUES ("Capacete", 41.99, 1, "Amarelo", true,3);


SELECT * FROM tb_produtos where preco >50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "c%";


SELECT * FROM tb_produtos
INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.id;

SELECT * FROM tb_categoria
INNER JOIN tb_produtos on tb_produtos.categoria_id = tb_categoria.id WHERE categoria_id = 4;
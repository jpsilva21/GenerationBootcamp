CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    formato varchar(255),
    uso varchar(255),
    disponibilidade boolean,
    
    primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
    indicacao varchar(255),
    finalidade varchar(255),
    valor decimal (5,2),
    validade date,
    categoria_id bigint,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
    );
    
SELECT * FROM tb_produtos;

INSERT INTO tb_categoria(formato, uso, disponibilidade)
VALUES ("Comprimido", "Uso oral", true);

INSERT INTO tb_categoria(formato, uso, disponibilidade)
VALUES ("Pomada", "Uso cutâneo", true);

INSERT INTO tb_categoria(formato, uso, disponibilidade)
VALUES ("Gotas","Uso oral", true);

INSERT INTO tb_categoria(formato, uso, disponibilidade)
VALUES ("Cápsula","Uso oral", true);

INSERT INTO tb_categoria(formato, uso, disponibilidade)
VALUES ("Xarópe","Uso oral", true);



INSERT INTO tb_produtos(nome, indicacao, finalidade, valor, validade, categoria_id) 
VALUES ("Buscopan", "Adulto", "Cólicas gastrointestinais", 24.89, "2024-03-01",1);

INSERT INTO tb_produtos(nome, indicacao, finalidade, valor, validade, categoria_id) 
VALUES ("Maleato Dexclorfeniramina", "Geral", "Tosse", 9.50, "2026-01-01",5);

INSERT INTO tb_produtos(nome, indicacao, finalidade, valor, validade, categoria_id) 
VALUES ("Diprosone", "Geral", "Inflamações na pele", 36.79, "2023-07-01",2);

INSERT INTO tb_produtos(nome, indicacao, finalidade, valor, validade, categoria_id) 
VALUES ("Bepantol", "Geral", "Hidratação da pele", 11.99, "2022-12-01",2);

INSERT INTO tb_produtos(nome, indicacao, finalidade, valor, validade, categoria_id) 
VALUES ("Doralgina", "Adulto", "Analgésico", 8.99, "2024-10-01",1);

INSERT INTO tb_produtos(nome, indicacao, finalidade, valor, validade, categoria_id) 
VALUES ("Calcitran D3", "Adulto", "Suplemento vitamínico", 69.90, "2024-05-01",4);

INSERT INTO tb_produtos(nome, indicacao, finalidade, valor, validade, categoria_id) 
VALUES ("Zina", "Adulto", "Antialérgico", 37.29, "2023-01-01",1);

INSERT INTO tb_produtos(nome, indicacao, finalidade, valor, validade, categoria_id) 
VALUES ("Ibuprofeno", "Infantil", "Antiinflamatório", 34.70, "2025-01-01",3);


SELECT * FROM tb_produtos where valor >50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "b%";


SELECT * FROM tb_produtos
INNER JOIN tb_categoria on tb_categoria.id = tb_produtos.id;

SELECT * FROM tb_categoria
INNER JOIN tb_produtos on tb_produtos.categoria_id = tb_produtos.id WHERE categoria_id = 1;
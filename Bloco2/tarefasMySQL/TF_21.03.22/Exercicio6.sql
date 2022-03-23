CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    requisito varchar(255),
    periodo varchar(255),
    vagas int,
    
    primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_curso(
	id bigint auto_increment,
    abordagem varchar(255),
    vagas_ocupadas int,
    preco_curso decimal(10,2),
    material_incluso boolean,
	duração varchar(255),
    categoria_id bigint,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
    );
    
SELECT * FROM tb_curso;

INSERT INTO tb_categoria(requisito, periodo, vagas) 
VALUES ("2º grau completo", "Noite", 35);

INSERT INTO tb_categoria(requisito, periodo, vagas) 
VALUES ("Básico completo", "Tarde", 40);

INSERT INTO tb_categoria(requisito, periodo, vagas) 
VALUES ("Intermediário completo", "Noite", 30);

INSERT INTO tb_categoria(requisito, periodo, vagas) 
VALUES ("1º grau completo", "Manhã", 35);

INSERT INTO tb_categoria(requisito, periodo, vagas) 
VALUES ("Maior de 18 anos", "Manhã", 40);



INSERT INTO tb_curso(abordagem, vagas_ocupadas, preco_curso, material_incluso, duração, categoria_id) 
VALUES ("Inglês Intermediário", 12, 2709.60, false, "24 Meses",2);

INSERT INTO tb_curso(abordagem, vagas_ocupadas, preco_curso, material_incluso, duração, categoria_id) 
VALUES ("Excel Básico", 4, 39.90, true, "15 dias",4);

INSERT INTO tb_curso(abordagem, vagas_ocupadas, preco_curso, material_incluso, duração, categoria_id) 
VALUES ("Culinária", 37, 129.90, false, "1 Mês",5);

INSERT INTO tb_curso(abordagem, vagas_ocupadas, preco_curso, material_incluso, duração, categoria_id) 
VALUES ("Espanhol Avançado", 3, 3236.90, true, "36 meses",3);

INSERT INTO tb_curso(abordagem, vagas_ocupadas, preco_curso, material_incluso, duração, categoria_id) 
VALUES ("Informatica", 30, 99.90, true, "1 Mês",1);

INSERT INTO tb_curso(abordagem, vagas_ocupadas, preco_curso, material_incluso, duração, categoria_id) 
VALUES ("Makiagem", 44, 695.90, false, "1 Mês",4);

INSERT INTO tb_curso(abordagem, vagas_ocupadas, preco_curso, material_incluso, duração, categoria_id) 
VALUES ("Administração", 12, 490.90, true, "12 meses",1);

INSERT INTO tb_curso(abordagem, vagas_ocupadas, preco_curso, material_incluso, duração, categoria_id) 
VALUES ("Marketing digital", 33, 149.90, true, "2 meses",1);


SELECT * FROM tb_curso where preco_curso >50;

SELECT * FROM tb_curso WHERE preco_curso BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_curso WHERE abordagem LIKE "j%";


SELECT * FROM tb_curso
INNER JOIN tb_categoria on tb_categoria.id = tb_curso.id;

SELECT * FROM tb_categoria
INNER JOIN tb_curso on tb_curso.categoria_id = tb_categoria.id WHERE categoria_id = 3;
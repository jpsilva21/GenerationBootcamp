create database db_abaco;

use db_abaco;

create table tb_alunos(
	id bigint auto_increment,
    nome varchar(255),
    idade int,
    serie varchar (255),
    periodo varchar (255),
    nota int,
    
    primary key(id)
);
select * from tb_alunos;

insert into tb_alunos (nome, idade, serie, periodo, nota) values ("Eduardo Silva",16,"2ºAno","noite",6);
insert into tb_alunos (nome, idade, serie, periodo, nota) values ("Laura Cipriano",15,"2ºAno","noite",8);
insert into tb_alunos (nome, idade, serie, periodo, nota) values ("Cleiton Ricardo Souza",16,"2ºAno","tarde",9);
insert into tb_alunos (nome, idade, serie, periodo, nota) values ("Raissa Santos",16,"3ºAno","noite",7);
insert into tb_alunos (nome, idade, serie, periodo, nota) values ("Lorena Bueno",17,"3ºAno","manhã",10);
insert into tb_alunos (nome, idade, serie, periodo, nota) values ("Bruno Bueno",14,"1ºAno","tarde",5);
insert into tb_alunos (nome, idade, serie, periodo, nota) values ("Rafael Prates",16,"3ºAno","manhã",8);
insert into tb_alunos (nome, idade, serie, periodo, nota) values ("Katelyn De Lucca",14,"1ºAno", "manhã",9);

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;

update tb_alunos set nota = 10 where id = 6;

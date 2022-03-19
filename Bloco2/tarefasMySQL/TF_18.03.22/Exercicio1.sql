create database db_SKMadeiras;

use db_SKMadeiras;

create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255),
    idade int,
    cargo varchar (255),
    salario double,
    ativo boolean,
    
    primary key(id)
);
select * from tb_funcionarios;

insert into tb_funcionarios (nome, idade, cargo, salario, ativo) values ("Breno Silva",37,"Marceneiro","3500.0",true);
insert into tb_funcionarios (nome, idade, cargo, salario, ativo) values ("Carlos Ribeiro",33,"Montador","1920.0",true);
insert into tb_funcionarios (nome, idade, cargo, salario, ativo) values ("Leila Souza",29,"Marceneira","3560.0",true);
insert into tb_funcionarios (nome, idade, cargo, salario, ativo) values ("Bruna Santos",31,"Montadora",1920.0,true);
insert into tb_funcionarios (nome, idade, cargo, salario, ativo) values ("Lucas Gonçalves",35,"Serviços Gerais",1740.0,true);

select * from tb_funcionarios where salario > 2000.0;

select * from tb_funcionarios where salario < 2000.0;

update tb_funcionarios set ativo = false where id = 2;
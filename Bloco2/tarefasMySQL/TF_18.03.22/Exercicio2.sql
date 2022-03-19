create database db_JpEletro;

use db_JpEletro;

create table tb_produtos(
	id bigint auto_increment,
    modelo varchar(255),
    cor varchar(255),
    valor double,
    qualidade varchar (255),
    ativo boolean,
    
    primary key(id)
);

select * from tb_produtos;

insert into tb_produtos (modelo, cor, valor, qualidade, ativo) values ("Aspirador de pó Eletrolux","preto",470.59,"Novo",true);
insert into tb_produtos (modelo, cor, valor, qualidade, ativo) values ("Fogão Philco","Branco",856.99,"Novo",true);
insert into tb_produtos (modelo, cor, valor, qualidade, ativo) values ("Geladeira Philco","Preto",769.99,"Novo",true);
insert into tb_produtos (modelo, cor, valor, qualidade, ativo) values ("Cafeteira Eletrolux","Cinza",399.90,"Novo",true);
insert into tb_produtos (modelo, cor, valor, qualidade, ativo) values ("Batedeira Arno","Cinza",127.99,"Seminovo",true);
insert into tb_produtos (modelo, cor, valor, qualidade, ativo) values ("Samsung Galaxy S21+","Branco",4566.99,"Novo",true);
insert into tb_produtos (modelo, cor, valor, qualidade, ativo) values ("Motorola Moto G10","Azul",2789.90,"Novo",true);
insert into tb_produtos (modelo, cor, valor, qualidade, ativo) values ("Aplle Watch SE GPS","Rosê",1379.88, "Seminovo",true);

select * from tb_produtos where valor >500 ;

select * from tb_produtos where valor <500 ;

update tb_produtos set ativo = false where id = 8;

create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id_categoria int auto_increment,
categoria varchar(25),
tipo varchar(25),
primary key (id_categoria)
);

create table tb_produto(
id_produto int (3) auto_increment,
id_categoria int,
nome varchar(50),
preco decimal(7,2),
duracao_dias int (3),
primary key (id_produto),
foreign key  (id_categoria) references tb_categoria (id_categoria)
);

insert into tb_categoria (categoria,tipo) values
('HTML+CSS','Software'),
('Java','Software'),
('Redes','Hardware');

insert into tb_produto (id_categoria,nome,preco,duracao_dias) values
(1,'Introducao a HTML',1200,40),
(2,'Java para noobs',1990.99,45),
(1,'HTML Master',2300.90,35),
(3,'Manutencao de redes',1400.00,30),
(2,'Javaspring intro',1799.99,40);

select * from tb_produto where preco>1500;
select * from tb_produto where preco>1500 and preco<2000;
select * from tb_produto where nome like '%j%';

#SELECT INNER JOIN

select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id_categoria;

# SELECT CATEGORIA ESPECIFICA

select * from tb_produto where id_categoria = 2;






)




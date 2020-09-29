create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

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
marca varchar (20),
primary key (id_produto),
foreign key  (id_categoria) references tb_categoria (id_categoria)
);

insert into tb_categoria (categoria,tipo) values
('cozinha','pia'),
('paredes','acabamento'),
('banheiro','diversos');

insert into tb_produto (id_categoria,nome,preco,marca) values
(1,'mangueira sanfonada',45.90,'Tigre'),
(2,'Tinta 320 Azul',84.99,'Suvinil'),
(1,'Filtro Carvao Ativado',150.99,'MAisAgua'),
(3,'Vaso Sanitario',345.50,'Alyvio'),
(2,'Ceramica Francesa 23',220,'Gourmet');

select * from tb_produto where preco>50;
select * from tb_produto where preco>3 and preco<60;
select * from tb_produto where nome like '%c%';

#SELECT INNER JOIN

select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id_categoria;

# SELECT CATEGORIA ESPECIFICA

select * from tb_produto where id_categoria = 2;


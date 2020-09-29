use db_cidade_das_carnes;

create table tb_categoria(
id_tipo int(2) auto_increment,
nome_tipo varchar (25),
embalagem_vacuo boolean,
primary key (id_tipo)
);

create table tb_produto(
id_produto int(6) auto_increment,
tipo int(2),
corte varchar(25),
peso_kg decimal (4,2),
marca varchar(15),
primary key (id_produto),
foreign key (tipo) references tb_categoria (id_tipo)
);

insert into tb_categoria (nome_tipo,embalagem_vacuo) values
('aves',0),
('bovino',1),
('suino',1);

insert into tb_produto (tipo,corte, peso_kg, marca) values
(1,'coxinha da asa',1,'Sadia'),
(3,'Costela Suina',1.2,'Seara'),
(2,'Alcatra',2.3,'Cofril'),
(2,'Bife de Ancho',0.8,'Wessel'),
(3,'Linguica',2,'Cofril');

select * from tb_categoria;
select * from tb_produto;

#CRIEI AS TABELAS MAS NÃO USEI ATRIBUTO PREÇO
#LOGO ESTOU FAZENDO SELECT COM PESO DO PRODUTO

select corte,marca from tb_produto where peso_kg>=2;
select corte,marca from tb_produto where peso_kg>1 and peso_kg<2;

#select utilizando LIKE buscando os Produtos com a letra C.

select corte,marca from tb_produto where corte like '%c%';

#select com Inner join entre tabela categoria e produto

select * from tb_produto inner join tb_categoria on tb_produto.tipo = tb_categoria.id_tipo;

select * from tb_produto inner join tb_categoria on tb_produto.tipo = 2;


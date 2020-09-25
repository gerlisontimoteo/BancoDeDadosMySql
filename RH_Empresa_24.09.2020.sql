create database db_ecommerce;

Use db_ecommerce;

create table tb_produtos(
id int (3) auto_increment,
nome varchar (30) not null,
departamento varchar (15) not null,
preco decimal (7,2),
disponivel boolean,
primary key (id)
);

insert into tb_produtos (nome, departamento, preco, disponivel) values ("Ralador de Coco", "Coisas do Lar", 12.99, 1);
insert into tb_produtos (nome, departamento, preco, disponivel) values ("Piscina Infantil 200 L", "Brinquedor", 349.99, 0);
insert into tb_produtos (nome, departamento, preco, disponivel) values ("Kit de panelas inox", "Coisas do Lar", 129.15, 1);
insert into tb_produtos (nome, departamento, preco, disponivel) values ("Camisa Polo Harmani", "Roupas", 120.99, 1);
insert into tb_produtos (nome, departamento, preco, disponivel) values ("Calça Masculina Levis", "Roupas", 98.99, 1);
insert into tb_produtos (nome, departamento, preco, disponivel) values ("Pneu de Fusca Furado", "Automotivos", 9540.99, 0);
insert into tb_produtos (nome, departamento, preco, disponivel) values ("Máscara Ungida Fé", "Diversos", 599.90, 0);
insert into tb_produtos (nome, departamento, preco, disponivel) values ("TV 50 polegadas", "Coisas do Lar", 950.49, 1);

select id,nome,preco from tb_produtos where preco>500;
select id,nome,preco from tb_produtos where preco<500;

select * from tb_produtos;
update tb_produtos set disponivel = 0 where nome = "Ralador de Coco";

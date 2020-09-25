create database db_generation_game_online;

use db_generation_game_online;

create table tb_regions(
id int (3) auto_increment,
nome_regions varchar(15),
primary key (id)
);
create table tb_classe(
id int(2) auto_increment,
nome varchar (15),
femsexlock boolean,
id_region int (3),

primary key (id),
foreign key (id_region) references tb_regions (id)
);

create table tb_personagem(
id_nome varchar (15),
id_classe int(2),
ataque bigint (9),
defesa bigint (9),
race varchar (10),

primary key (id_nome),
foreign key (id_classe) references tb_classe (id)
);

insert into tb_regions (nome_regions) values ('Velika'),('Creator'),('Galakus'),('Gorge'),('Mountain');
insert into tb_classe (nome, femsexlock, id_region) values ('Archer', 0,1),('Reaper', 1, 3),('Warrior', 0, 5), ('Blacksmith', 0, 4);
insert into tb_personagem values
('ChupaCabra',3,250,200,'Human'), 
('Noob',2,350,50,'Elin'),
('Sua Mãe',4,30,30,'Baraka'),
('ProWarrior',3,250,200, 'Human'),
('Greedy',1,290,70,'Elf');

/*
Drop table tb_classe;*/
select * from tb_personagem where ataque>200;
select * from tb_personagem where defesa>100 and defesa <200;
select id_nome,id_classe from tb_personagem where id_nome like '%c%'

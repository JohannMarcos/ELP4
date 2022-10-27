create database 'C:\elp4\banco.fdb' user 'SYSDBA' password 'masterkey' ;

create table PAISES(
codigo int not null primary key,
pais varchar(55) not null,
ddi varchar(5),
sigla varchar(3));

create table ESTADOS (
codigo int not null primary key,
estado varchar(55),
UF varchar(3),
cod_pais int references PAISES);

create table CIDADES (
codigo int not null primary key,
cidade varchar(58),
ddd varchar(2),
cod_estado int references ESTADOS);

connect 'C:\elp4\banco.fdb' user 'SYSDBA' password 'masterkey' ;

Create generator Gen_Paises;
set generator Gen_Paises to 10;

Create generator Gen_Estados;
set generator Gen_Estados to 100;

Create generator Gen_Cidades;
set generator Gen_Cidades to 1000;

set term ^;

create trigger Paises_bi for PAISES 
active before insert position 0
as
begin
	if (new.codigo is null) then
	new.codigo = Gen_id(Gen_Paises, 1);
end ^

create trigger Estados_bi for ESTADOS 
active before insert position 0
as
begin
	if (new.codigo is null) then
	new.codigo = Gen_id(Gen_Estados, 1);
end ^

create trigger Cidades_bi for CIDADES 
active before insert position 0
as
begin
	if (new.codigo is null) then
	new.codigo = Gen_id(Gen_Cidades, 1);
end ^


set term ;^



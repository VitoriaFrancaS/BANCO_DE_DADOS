CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT,
tipo varchar (200),
descricao varchar (200) not null,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
id bigint AUTO_INCREMENT,
nome varchar (200) not null,
dataValidade date not null,
preco DECIMAL (5,2),
categorias_id bigint,
PRIMARY KEY (id),
foreign key (categorias_id) references tb_categorias(id)
);

INSERT INTO tb_categorias (descricao)
VALUES ("remédios");

INSERT INTO tb_categorias (descricao)
VALUES ("perfumaria");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome, dataValidade, preco, categorias_id)
VALUES ("shampoo", "2024-05-17", 17.99, 2);

INSERT INTO tb_produtos (nome, dataValidade, preco, categorias_id)
VALUES ("dipirona", "2024-08-10", 5.00, 1);

INSERT INTO tb_produtos (nome, dataValidade, preco, categorias_id)
VALUES ("condicionador", "2023-12-17", 55.00, 2); 

INSERT INTO tb_produtos (nome, dataValidade, preco, categorias_id)
VALUES ("omeprazol", "2024-09-10", 15.25, 1);

INSERT INTO tb_produtos (nome, dataValidade, preco, categorias_id)
VALUES ("benegripe", "2025-07-29", 15.00, 1);

INSERT INTO tb_produtos (nome, dataValidade, preco, categorias_id)
VALUES ("sabonete", "2024-03-20", 5.50, 2);

INSERT INTO tb_produtos (nome, dataValidade, preco, categorias_id)
VALUES ("dorflex", "2023-12-17", 55.00, 1);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, dataValidade, preco, tb_categorias.descricao
FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT nome, tb_categorias.descricao 
FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.tipo = "remédios";
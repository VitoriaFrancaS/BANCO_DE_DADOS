 DROP DATABASE db_generation_game_online;

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_class(
id bigint AUTO_INCREMENT,
funcao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_class (funcao)
VALUES ("duelistaa");

INSERT INTO tb_class (funcao)
VALUES ("controlador");

INSERT INTO tb_class (funcao)
VALUES ("sentinela");

INSERT INTO tb_class (funcao)
VALUES ("iniciador");

SELECT * FROM tb_class;
drop table tb_personagens;

CREATE TABLE tb_personagens (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
dano INT,
arma varchar (100) NOT NULL,
habEspecial BOOLEAN,
class_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (class_id) REFERENCES tb_class(id)
);

INSERT INTO tb_personagens (nome, dano, arma, habEspecial, class_id)
VALUES ("Viper", 2000, "espectre", true, 2);

INSERT INTO tb_personagens (nome, dano, arma, habEspecial, class_id)
VALUES ("Phoenix", 3000, "sheriff", false, 1);

INSERT INTO tb_personagens (nome, dano, arma, habEspecial, class_id)
VALUES ("Sage", 1000, "bulldog", true, 3);

INSERT INTO tb_personagens (nome, dano, arma, habEspecial, class_id)
VALUES ("Raze", 4500, "odin", false, 4);

INSERT INTO tb_personagens (nome, dano, arma, habEspecial, class_id)
VALUES ("Killjoy", 5250, "vandal", false, 2);

INSERT INTO tb_personagens (nome, dano, arma, habEspecial, class_id)
VALUES ("Sova", 6000, "operator", false, 1);

INSERT INTO tb_personagens (nome, dano, arma, habEspecial, class_id)
VALUES ("Omen", 1500, "ghost", true, 4);

INSERT INTO tb_personagens (nome, dano, arma, habEspecial, class_id)
VALUES ("Astra", 500, "phantom", false, 3);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE dano IN (2000);
SELECT * FROM tb_personagens WHERE dano BETWEEN 2000 AND 6000 ORDER BY dano ASC;
SELECT * FROM tb_personagens WHERE nome LIKE "%i%";

SELECT *, tb_class.funcao
FROM tb_personagens 
INNER JOIN tb_class
ON tb_personagens.class_id = tb_class.id;


SELECT nome, tb_class.funcao
FROM tb_personagens
LEFT JOIN tb_class 
ON class_id = tb_class.id;


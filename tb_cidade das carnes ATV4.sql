CREATE DATABASE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
animal VARCHAR(255),
tipo VARCHAR(255), 
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(animal, tipo) 
VALUES ("Bovino","corte em bife");  -- 1

INSERT INTO tb_categorias(animal, tipo) 
VALUES ("Suino","corte em pedaços"); -- 2

INSERT INTO tb_categorias(animal, tipo) 
VALUES ("frango","corte em filé"); -- 3

INSERT INTO tb_categorias(animal, tipo) 
VALUES ("Bovino","corte em pedaços"); -- 4

INSERT INTO tb_categorias(animal, tipo) 
VALUES ("Bovino","corte em filé"); -- 5

INSERT INTO tb_categorias(animal, tipo) 
VALUES ("Suino","corte em filé"); -- 6

INSERT INTO tb_categorias(animal, tipo) 
VALUES ("Suino","corte em bife"); -- 7

INSERT INTO tb_categorias(animal, tipo) 
VALUES ("Frango","corte em pedaços"); -- 8

SELECT * FROM tb_categorias;


CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
valor DECIMAL(10,2),
nome VARCHAR (255),
quantidade VARCHAR(255),
marca VARCHAR(255),
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(valor,nome,quantidade,marca,categoria_id)
VALUES (55.00,"patinho","1 kilo","seara", 4);

INSERT INTO tb_produtos(valor,nome,quantidade,marca,categoria_id)
VALUES (150.00,"Alcatra","2 kilo","Swift", 1);

INSERT INTO tb_produtos(valor,nome,quantidade,marca,categoria_id)
VALUES (25.00,"Coxa e sobre coxa","1,5 kilo","seara", 8);

INSERT INTO tb_produtos(valor,nome,quantidade,marca,categoria_id)
VALUES (30.00,"peito de frango","1 kilo","Swift", 3);

INSERT INTO tb_produtos(valor,nome,quantidade,marca,categoria_id)
VALUES (20.00,"toucinho","1,2 kilo","Swift", 2);

INSERT INTO tb_produtos(valor,nome,quantidade,marca,categoria_id)
VALUES (40.00,"Bisteca","3 kilo","Sadia", 7);

INSERT INTO tb_produtos(valor,nome,quantidade,marca,categoria_id)
VALUES (65.00,"Pata de porco","4 kilo","Sadia", 2);

INSERT INTO tb_produtos(valor,nome,quantidade,marca,categoria_id)
VALUES (80.00,"Beby bife","2,5 kilo","Swift", 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 130; 

SELECT * FROM tb_produtos WHERE nome LIKE "%B%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.id=1;

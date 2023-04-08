CREATE DATABASE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
valor DECIMAL(6,2),
marca VARCHAR(255),
tamanho VARCHAR(255),
cor VARCHAR(255),
PRIMARY KEY (id)
);
INSERT INTO tb_produtos(nome,valor,marca,tamanho,cor)
VALUES("Jaqueta",950.00,"Zara","G","vermelho e Preto");

SELECT * FROM  tb_produtos;

SELECT * FROM  tb_produtos WHERE valor < 500;

SELECT * FROM  tb_produtos WHERE valor > 500;

UPDATE tb_produtos SET valor = 900.00 WHERE id = 6;



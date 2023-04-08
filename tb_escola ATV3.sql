CREATE DATABASE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade INT,
numero INT,
sala VARCHAR(255),
turno VARCHAR(255),
 PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome,idade,nota,sala,turno)
VALUES("Matheus",14,5,"Setimo A","Tarde");

SELECT * FROM tb_estudantes;

 SELECT * FROM tb_estudantes  WHERE nota > 7;
 
  SELECT * FROM tb_estudantes  WHERE nota < 7;

ALTER TABLE tb_estudantes DROP COLUMN numero;

ALTER TABLE tb_estudantes ADD nota DECIMAL(5,2);

UPDATE  tb_estudantes SET sala = "Terceiro B" WHERE id = 4;


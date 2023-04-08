  CREATE DATABASE db_rh;
  
  CREATE TABLE tb_funcionarios(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    sexo VARCHAR(255),
    idade int,
    salario DECIMAL(10,2),
    cargo VARCHAR(255),
    PRIMARY KEY (id)
  );
 INSERT INTO tb_funcionarios(nome,sexo,idade,salario,cargo) 
  VALUES("Maria","Feminino",27,8500.00,"Dev pleno");

 SELECT * FROM tb_funcionarios;
 
 SELECT * FROM tb_funcionarios  WHERE salario > 2000;
 
 SELECT * FROM tb_funcionarios  WHERE salario < 2000;
 
 UPDATE tb_funcionarios SET nome = "Gabriela" WHERE id=6
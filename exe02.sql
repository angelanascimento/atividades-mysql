CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
id bigint auto_increment primary key,
nome varchar(255) not null,
categoria varchar(255),
preco decimal(7,2) not null,
quantidade bigint not null
);

INSERT INTO tb_produtos (nome, categoria, preco, quantidade) VALUES ("Bicicleta", "Esportes", 1889.00, 3);
INSERT INTO tb_produtos (nome, categoria, preco, quantidade) VALUES ("Secador de Cabelo", "Beleza e Saúde", 690.00, 5);
INSERT INTO tb_produtos (nome, categoria, preco, quantidade) VALUES ("Smartphone", "Celulares", 1990.00, 21);
INSERT INTO tb_produtos (nome, categoria, preco, quantidade) VALUES ("Fone de Ouvido", "Aúdio", 99.00, 10);
INSERT INTO tb_produtos (nome, categoria, preco, quantidade) VALUES ("Notebook", "Computadores", 4842.00, 2);
INSERT INTO tb_produtos (nome, categoria, preco, quantidade) VALUES ("Powerbank", "Carregadores", 249.00, 13);
INSERT INTO tb_produtos (nome, categoria, preco, quantidade) VALUES ("Capinha de Celular", "Acessorios", 22.00, 10);
INSERT INTO tb_produtos (nome, categoria, preco, quantidade) VALUES ("Escova Rotativa", "Beleza e Saúde", 199.00, 15);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 350.00 WHERE id = 2;



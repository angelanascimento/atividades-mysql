CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_produtos (
id bigint auto_increment primary key,
nome varchar(255) not null,
preco decimal(7,2) not null,
categoria_id bigint,
validade varchar(255),
fornecedor varchar(255)
);

CREATE TABLE tb_categorias (
id bigint auto_increment primary key,
categoria varchar(255),
desconto int
);

INSERT INTO tb_categorias (categoria, desconto) VALUES ("Frutas", 10);
INSERT INTO tb_categorias (categoria, desconto) VALUES ("Legumes", 7);
INSERT INTO tb_categorias (categoria, desconto) VALUES ("Verduras", 13);
INSERT INTO tb_categorias (categoria, desconto) VALUES ("Raízes", 5);
INSERT INTO tb_categorias (categoria, desconto) VALUES ("Grãos", 8);

INSERT INTO tb_produtos (nome, preco, categoria_id, validade, fornecedor) VALUES ("Cenoura", 9.99, 4, "15/10/2023","Fazenda Vaquinha Feliz");
INSERT INTO tb_produtos (nome, preco, categoria_id, validade, fornecedor) VALUES ("Batata-doce", 8.99, 4, "15/10/2023","Fazenda Porquinho Feliz");
INSERT INTO tb_produtos (nome, preco, categoria_id, validade, fornecedor) VALUES ("Inhame", 9.99, 4, "20/10/2023","Fazenda Vaquinha Feliz");
INSERT INTO tb_produtos (nome, preco, categoria_id, validade, fornecedor) VALUES ("Brócolis", 7.99, 3, "10/10/2023","Fazenda Bom Pasto");
INSERT INTO tb_produtos (nome, preco, categoria_id, validade, fornecedor) VALUES ("Cebola", 12.00, 2, "20/10/2023","Fazenda Vaquinha Feliz");
INSERT INTO tb_produtos (nome, preco, categoria_id, validade, fornecedor) VALUES ("Chuchu", 8.99, 2, "15/10/2023","Fazenda Porquinho Feliz");
INSERT INTO tb_produtos (nome, preco, categoria_id, validade, fornecedor) VALUES ("Alface", 4.00, 3, "02/10/2023","Sítio Sol Nascente");
INSERT INTO tb_produtos (nome, preco, categoria_id, validade, fornecedor) VALUES ("Espinafre", 6.99, 3, "02/10/2023", "Sítio Sol Nascente");

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produto_categoria 
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);

SELECT * FROM tb_produtos WHERE preco > 5.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 15.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.categoria = "Raízes";


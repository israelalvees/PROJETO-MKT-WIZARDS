CREATE TABLE tb_cliente(
	id_cliente SERIAL CONSTRAINT PK_ID_CLIENTE PRIMARY KEY,
	nome VARCHAR(50),  
	email VARCHAR(50), 
	telefone VARCHAR(50), 
	data_nascimento DATE
)


INSERT INTO tb_cliente (id_cliente, nome, email, telefone, data_nascimento)
	VALUES 
	(001, 'Cliente 1', 'cliente1@gmail.com', '85989347688', '1993-11-01'),
	(002, 'Cliente 2', 'cliente2@gmail.com', '85989347678', '1994-08-01'),
	(003, 'Cliente 3', 'cliente3@uol.com', '85983347568', '1995-06-01'),
	(004, 'Cliente 4', 'cliente4@yahoo.com', '85989947608', '1997-05-01'),
	(005, 'Cliente 5', 'cliente5@hotmail.com', '85982247668', '2000-02-01')


CREATE TABLE tb_compras (
	id_compra SERIAL CONSTRAINT PK_ID_COMPRA PRIMARY KEY,
	id_cliente INT, 
	produto VARCHAR(50), 
	valor INT, 
	data_compra DATE
)

alter table tb_compras
	add constraint fk_id_cliente foreign key (id_cliente) references tb_cliente(id_cliente)
	
INSERT INTO tb_compras (id_cliente, produto, valor, data_compra)	
	VALUES 
	(002, 'Produto 1', 13.00, '2023-07-02'),
	(001, 'Produto 2', 5.00, '2023-07-15'),
	(003, 'Produto 3', 9.00, '2023-07-11'),
	(004, 'Produto 4', 22.00, '2023-01-05'),
	(005, 'Produto 5', 3.00, '2023-01-09'),
	(005, 'Produto 1', 13.00, '2023-01-13'),
	(005, 'Produto 1', 13.00, '2023-01-31'),
	(003, 'Produto 5', 3.00, '2023-03-22'),
	(004, 'Produto 4', 22.00, '2023-03-17'),
	(004, 'Produto 4', 22.00, '2023-03-19'),
	(004, 'Produto 3', 9.00, '2023-11-11'),
	(002, 'Produto 5', 3.00, '2023-11-15'),
	(002, 'Produto 1', 13.00, '2023-09-07'),
	(001, 'Produto 2', 5.00, '2023-08-23'),
	(001, 'Produto 2', 5.00, '2023-02-28')
	


	
	


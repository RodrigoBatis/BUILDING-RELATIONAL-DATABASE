DROP TABLE Pedidos;
DROP TABLE Clientes;

-- Cria a tabela "Clientes"
CREATE TABLE Clientes (
    ID NUMBER(5) PRIMARY KEY,
    Nome VARCHAR2(255),
    Cidade VARCHAR2(255),
    Sexo VARCHAR2(1),
    idade int
);

-- Insercao de dados na tabela "Clientes"
 INSERT INTO Clientes VALUES (1, 'Jo�o', 'S�o Paulo','M',20);
 INSERT INTO Clientes VALUES (7, 'Maria', 'Rio de Janeiro','F',30);
 INSERT INTO Clientes VALUES (3, 'Carlos', 'Belo Horizonte','M',20);
 INSERT INTO Clientes VALUES (4, 'Ana', 'S�o Paulo','F',25);
 INSERT INTO Clientes VALUES (5, 'Rafael', 'Rio de Janeiro','M',50);

-- Cria a tabela "Pedidos"
CREATE TABLE Pedidos (
    id NUMBER(5) PRIMARY KEY,
    cliente_id NUMBER(5),
    ds_produto VARCHAR2(255),
    vl_pedido Number,
	FOREIGN KEY (cliente_id) REFERENCES 
		Clientes (id)
);

-- Insercao de dados na tabela "Pedidos"
INSERT INTO Pedidos VALUES(101, 1, 'Celular', 1100.00);
INSERT INTO Pedidos VALUES(102, 2, 'Laptop', 4000.00);
INSERT INTO Pedidos VALUES(103, 3, 'Tablet', 3500.00);
INSERT INTO Pedidos VALUES(104, 1, 'TV', 5000.00);
INSERT INTO Pedidos VALUES(105, 4, 'Geladeira', 3000.00);


CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Supervisor_ID INT
);


INSERT INTO Funcionarios (ID, Nome, Supervisor_ID) VALUES (1, 'João', NULL); -- Jo�o � o chefe e n�o tem supervisor
INSERT INTO Funcionarios (ID, Nome, Supervisor_ID) VALUES  (8, 'Maria', 1); -- Maria � subordinada a Jo�o
INSERT INTO Funcionarios (ID, Nome, Supervisor_ID) VALUES  (3, 'Carlos', 1); -- Carlos � subordinado a Jo�o
INSERT INTO Funcionarios (ID, Nome, Supervisor_ID) VALUES  (4, 'Ana', 2);    -- Ana � subordinada a Maria
INSERT INTO Funcionarios (ID, Nome, Supervisor_ID) VALUES  (5, 'Rafael', 2); -- Rafael � subordinado a Maria


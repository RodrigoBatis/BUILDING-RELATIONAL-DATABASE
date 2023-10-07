
DROP TABLE PEDIDOS;
DROP TABLE CLIENTES;


-- Cria a tabela "Clientes"
CREATE TABLE Clientes (
    ID NUMBER(5) PRIMARY KEY,
    Nome VARCHAR2(255),
    Cidade VARCHAR2(255)
);

-- Insercao de dados na tabela "Clientes"
 INSERT INTO Clientes VALUES (1, 'JoÃ£o', 'SÃ£o Paulo');
 INSERT INTO Clientes VALUES (2, 'Maria', 'Rio de Janeiro');
 INSERT INTO Clientes VALUES (3, 'Carlos', 'Belo Horizonte');
 INSERT INTO Clientes VALUES (4, 'Ana', 'Porto Alegre');
 INSERT INTO Clientes VALUES (5, 'Rafael', 'BrasÃ­lia');

-- Cria a tabela "Pedidos"
CREATE TABLE Pedidos (
    ID NUMBER(5) PRIMARY KEY,
    Cliente_ID NUMBER(5),
    Produto VARCHAR2(255),
	FOREIGN KEY (CLIENTE_ID) REFERENCES 
		Clientes (ID)
);

-- Insercao de dados na tabela "Pedidos"
INSERT INTO Pedidos VALUES(101, 1, 'Celular');
INSERT INTO Pedidos VALUES(102, 2, 'Laptop');
INSERT INTO Pedidos VALUES(103, 3, 'Tablet');
INSERT INTO Pedidos VALUES(104, 1, 'TV');
INSERT INTO Pedidos VALUES(105, 4, 'Geladeira');
INSERT INTO Pedidos(ID,PRODUTO) VALUES(106, 'Garrafa');

CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Supervisor_ID INT
);

INSERT INTO Funcionarios (ID, Nome, Supervisor_ID) VALUES (1, 'JoÃ£o', NULL); -- JoÃ£o Ã© o chefe e nÃ£o tem supervisor
INSERT INTO Funcionarios (ID, Nome, Supervisor_ID) VALUES  (2, 'Maria', 1); -- Maria Ã© subordinada a JoÃ£o
INSERT INTO Funcionarios (ID, Nome, Supervisor_ID) VALUES  (3, 'Carlos', 1); -- Carlos Ã© subordinado a JoÃ£o
INSERT INTO Funcionarios (ID, Nome, Supervisor_ID) VALUES  (4, 'Ana', 2);    -- Ana Ã© subordinada a Maria

INSERT INTO Funcionarios (ID, Nome, Supervisor_ID) VALUES  (5, 'Rafael', 2); -- Rafael Ã© subordinado a Maria

SELECT * FROM CLIENTES;
SELECT * FROM PEDIDOS;
SELECT * FROM CLIENTES, PEDIDOS;

-- EQUI JOIN
SELECT C.NOME, P.PRODUTO  FROM CLIENTES C, PEDIDOS P WHERE C.ID = P.CLIENTE_ID; 

-- INNER JOIN
SELECT C.NOME, P.PRODUTO  FROM CLIENTES C INNER JOIN PEDIDOS P ON  C.ID = P.CLIENTE_ID; 

-- LEFT JOIN
SELECT C.NOME, P.PRODUTO  FROM CLIENTES C LEFT JOIN PEDIDOS P ON  C.ID = P.CLIENTE_ID; 

-- RIGHT JOIN 
SELECT C.NOME, P.PRODUTO  FROM CLIENTES C RIGHT JOIN PEDIDOS P ON  C.ID = P.CLIENTE_ID; 


-- LEFT JOIN
SELECT C.NOME, P.PRODUTO  FROM CLIENTES C LEFT JOIN PEDIDOS P ON  C.ID = P.CLIENTE_ID
    WHERE P.ID IS NULL; 

-- RIGHT JOIN 
SELECT C.NOME, P.PRODUTO  FROM CLIENTES C RIGHT JOIN PEDIDOS P ON  C.ID = P.CLIENTE_ID
    WHERE C.ID IS NULL;
    
SELECT A.Nome AS Funcionario, B.Nome AS Supervisor
    FROM funcionarios A
    LEFT JOIN funcionarios B ON a.supervisor_id = B.ID;

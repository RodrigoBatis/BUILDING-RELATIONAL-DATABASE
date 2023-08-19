/*
    CRIANDO TABELAS
*/
CREATE TABLE TBL_ENDERECO(
    cep int PRIMARY KEY,
    rua VARCHAR(100),
    cidade VARCHAR(100),
    uf CHAR(2)
);

CREATE TABLE TBL_ALUNO(
    rm int,
    nome varchar(60) CONSTRAINT nn_nome NOT NULL,
    dt_nascimento DATE NOT NULL,
    cpf VARCHAR(14),
    cep int REFERENCES TBL_ENDERECO(cep),
    CONSTRAINT uk_cpf UNIQUE (cpf),
    CONSTRAINT pk_rm PRIMARY KEY (rm)
);

-- APAGANDO TABELAS
--DROP TABLE TBL_ALUNO;
--DROP TABLE TBL_ENDERECO;






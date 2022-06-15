--
-- Banco de dados: `EAP_5S`
--

----------------------------------------------------------

CREATE TABLE cliente (
	codcli int NOT NULL,
	nome varchar(255) NOT NULL,
	cpf CHARACTER(14) NOT NULL,
	rg CHARACTER(15) NOT NULL,
	ufrg CHARACTER(2),
	endereco CHARACTER VARYING(60),
	num_endereco INT,
	complemento CHARACTER (60),
	cidade CHARACTER(40),
	uf CHARACTER(2),
	cep CHARACTER(8),
	fone CHARACTER(20),
	celular CHARACTER(20),
	email CHARACTER VARYING(100),
	CONSTRAINT cli_keycodcli PRIMARY KEY (codcli)
);


BEGIN
	INSERT INTO cliente VALUES (1, 'Piva', 254635984-88, 10567254-1, 'PR', 'Rua das Ruas', 67, '', 'Maringá', 'PR', 14472651, 4432678426, 44997516842, 'lucaspiva@gmail.com');
    INSERT INTO cliente VALUES (2, 'Irineu', 234695982-88, 10437274-1, 'PR', 'Rua das Orelhas', 37, '', 'Maringá', 'PR', 14679651, 4136674526, 41987566442, 'irineu@gmail.com');
    INSERT INTO cliente VALUES (3, 'Carlos', 244637987-88, 11564256-1, 'SP', 'Avenida Europa', 235, '', 'São Paulo', 'SP', 14872751, 1132678426, 11937514842, 'carlos@gmail.com');
    INSERT INTO cliente VALUES (4, 'Jabuticaba', 258632944-88, 11663254-1, 'PR', 'Rua linda de mais', 5741, '', 'Maringá', 'PR', 14572351, 4436677423, 44991513845, 'jabuticaba@gmail.com');
END;
--select * from cliente

-------------------------------------------------------------------

CREATE TABLE pedido (
	codped INT NOT NULL,
	codcli INT NOT NULL,
	data_movmento VARCHAR(255) NOT NULL,
	valor_total INT,
	CONSTRAINT ped_keycodped PRIMARY KEY (codped)

);

BEGIN
	INSERT INTO pedido VALUES (1, 1, 02052022, 2415);
	INSERT INTO pedido VALUES (2, 2, 07102021, 57412);
	INSERT INTO pedido VALUES (3, 3, 03042022, 154);
END;

-- SELECT * FROM pedido

------------------------------------------------------------------

CREATE TABLE produto (
    codproduto INT,
    descricao CHAR(50),
    preco FLOAT,
    categoria CHAR(35),
    fabricante char (30),
    CONSTRAINT prod_keycodproduto PRIMARY KEY (codproduto)
);

------------------------------------------------------------------

CREATE TABLE itempedido(
	codped INT,
	numeroitem INT,
	valorunitario DECIMAL(10,2),
	quantidade INT,
	codproduto INT
);

-- TRIGGER para NÃO deixar valores negativos serem INSERIDOS em ITEMPEDIDO,

CREATE OR REPLACE TRIGGER not_negativo
BEFORE INSERT OR UPDATE
ON itempedido
FOR EACH ROW
BEGIN
	IF :new.quantidade <= 0 THEN
		raise_application_error(-20001,'Valor deve ser maior que Zero');
	END IF;
END;

/*
-- Teste inserção negativo

BEGIN
	SELECT * FROM itempedido
	INSERT INTO itempedido (codpedido,numeroitem,valorunitario,quantidade,codproduto) VALUES
	(1,4,10,-5,5);
	SELECT * FROM itempedido WHERE codpedido = 1;
END;
*/
------------------------------------------------------------------

CREATE TABLE pagamento (
	codpagamento INT,
	codcli INT,
	codped INT,
	statusPagamento INT,
    CONSTRAINT pag_keycodpagamento PRIMARY KEY (codpagamento)
);

------------------------------------------------------------------

CREATE TABLE avaliacao_pedido (
	codavaliacao INT,
	nota INT,
	codcli INT,
	comentario VARCHAR(255),
    CONSTRAINT avaliacao_keycodavaliacao PRIMARY KEY (codavaliacao)
);

------------------------------------------------------------------

CREATE TABLE vendedor (
	codvendedor INT,
	nomevendedor CHAR (50),
	descricao CHAR (100),
    CONSTRAINT vend_keycodvendedor PRIMARY KEY (codvededor)
);

------------------------------------------------------------------








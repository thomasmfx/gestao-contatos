CREATE TABLE endereco (
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  rua VARCHAR(120) NOT NULL,
  numero VARCHAR(10),
  cidade VARCHAR(80),
  estado CHAR(2),
  cep CHAR(8),
  cliente_id INTEGER NOT NULL,
  CONSTRAINT fk_cliente
    FOREIGN KEY (cliente_id) 
      REFERENCES cliente(id)
);
INSERT INTO endereco(cliente_id, rua, numero)
SELECT id, SPLIT_PART(endereco, ', ', 1), SPLIT_PART(endereco, ', ', 2) FROM cliente;
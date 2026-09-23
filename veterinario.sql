CREATE TABLE consultas_pets (
    id SERIAL PRIMARY KEY,
    nome_tutor VARCHAR(100),
    email_tutor VARCHAR(100),
    especie VARCHAR(50),
    valor_consulta NUMERIC(10,2),
    data_consulta DATE,
    veterinario_responsavel VARCHAR(100)
);



INSERT INTO consultas_pets (nome_tutor, email_tutor, especie, valor_consulta, data_consulta, veterinario_responsavel) VALUES
('Chulio Concielo','jujucoco@gmail.com','Cão',150.50 , '2026-09-26', 'Vagner Barboza'),
('Mavir Praque','mamavier@gmail.com','Cão',200.50 , '2026-09-26', NULL),
('Fernanda Alves','fernanda@hotpocket.com','Aves',195.00,'2026-10-04','Vagner Barboza'),
('Bruno Costa','bruno@hotpocket.com','Gato',160.50,'2026-10-05','Camila Rodrigues'),
('Beatriz Lima','beatriz@email.com','Coelho',85.00,'2026-10-06',NULL),
('Gustavo Rocha','gustavo@email.com','Cão',210.75,'2026-10-07','Camila Rodrigues'),
('Larissa Mendes','larissa@microsofts.com','Gato',140.00,'2026-10-08','Vagner Barboza'),
('Bruce Ueine','bruce@batmail.com','Cão',175.50,'2026-10-09',NULL),
('Isabela Santos','isabela@gmail.com','Aves',70.00,'2026-10-10','Camila Rodrigues'),
('João Pereira','joao@gmail.com','Gato',155.00,'2026-10-11','Vagner Barboza');


SELECT * FROM consultas_pets
WHERE email_tutor ILIKE '%@gmail.com';


SELECT * FROM consultas_pets
WHERE especie IN ('Cão', 'Gato', 'Aves');


SELECT * FROM consultas_pets
WHERE valor_consulta BETWEEN 100.00 AND 350.00;


SELECT * FROM consultas_pets
WHERE veterinario_responsavel IS NULL;


SELECT * FROM consultas_pets
WHERE email_tutor ILIKE '%@gmail.com'
  AND valor_consulta BETWEEN 100.00 AND 350.00
  AND veterinario_responsavel IS NOT NULL;

-----insert-----
INSERT INTO cliente(nome, telefone)
VALUES
('ANA DE LIMA', '41988797427'),
('JOSÉ', '41988909090'),
('LILIANE', '41984598578');

select * from cliente;
select nome from cliente;

INSERT INTO pet(nome, especie, idade, id_cliente)
VALUES
('REX', 'CACHORRO', 5, 3),
('FIBI', 'GATO', 4, 3),
('TOBY', 'CACHORRO', 10, 2);

select * from pet;

INSERT INTO veterinario(nome, crmv)
VALUES
('DR. ANTONIO', 'CRMV-PR1234'),
('DR. BRUNO', 'CRMV-PR5678'),
('DR. JOSE', 'CRMV-PR9012');

select * from veterinario;

INSERT INTO consulta(data, tipo_servico, id_pet, id_veterinario)
VALUES
('2015-02-15', 'CASTRACAO', 1, 1),
('2020-08-26', 'NUTRICAO', 2, 2),
('2025-11-19', 'VACINA', 3, 3);

select * from consulta;

INSERT INTO medicamento(nome, quantidade, validade_medicamento, id_consulta)
VALUES
('DIPIRONA', 5, '2030-05-02', 1),
('V5', 1, '2026-11-30', 2),
('IBUPROFENO', 2, '2030-01-05', 3);

select * from medicamento;

INSERT INTO medicamento_consulta(id_consulta, id_medicamento, dose_aplicada)
VALUES
(1, 1, '1 comprimido dipirona'),
(2, 2, '1 suplemento de nutricao'),
(3, 3, '1 vacina V5');

select * from medicamento_consulta;


-----update-----
UPDATE medicamento
set nome = 'viagra'
where id_medicamento =2;

select * from medicamento;

select
    co.id_consulta,
    co.data,
    v. nome AS veterinario,
    v.crmv
From consulta co
JOIN veterinario v ON v.id_veterinario = co.id_veterinario;


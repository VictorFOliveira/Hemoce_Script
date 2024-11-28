insert into Doador(nome, cpf, tipo_sanguineo, telefone, sexo, data_ultima_doacao, quantidade_doacoes)
VALUES
('João Silva', '12345678901', 'O+', '11 12345678', 'M', '2023-11-15', 1),
('Maria Oliveira', '98765432100', 'A-', '21 98765432', 'F', '2024-01-10', 1),
('Carlos Souza', '11122334455', 'B+', '31 22334455', 'M', '2024-02-20', 1),
('Victor Oliveira', '98745612396', 'A+', '85 32843033', 'M', '2024-11-27', 1),
('Maria Clara', '75395174196', 'O-', '81 32864046', 'F', '2024-05-15', 1),
('Luciana Ferreira', '66778899001', 'AB+', '61 34567890', 'F', '2023-08-11', 1),
('Paulo Henrique', '22233344455', 'O-', '61 44332211', 'M', '2024-03-22', 1),
('Fernanda Costa', '99887766544', 'B-', '62 55443322', 'F', '2023-12-01', 1),
('Rafael Lima', '11223344556', 'A-', '63 66655544', 'M', '2024-07-19', 1),
('Juliana Santos', '99881122334', 'AB-', '64 55566677', 'F', '2024-02-05', 1);

-- inserindo dados do especialista
insert into especialista (nome, crm) 
VALUES
('Dr. Roberto Martins', 'CRM12345'),
('Dra. Ana Costa', 'CRM54321'),
('Dr. Felipe Lima', 'CRM67890');
('Dra Poca Mertlin','CRM78890');

-- dados da doação 
insert into doacao(id_doador, id_especialista, volume_doado, data_doacao)
VALUES
(41, 17, 450.00, '2023-11-15'),  
(42, 18, 500.00, '2024-01-10'),  
(43, 19, 350.00, '2024-02-20'),   
(44, 20, 400.00, '2024-11-27'),  
(45, 17, 450.00, '2024-05-15'),   
(46, 18, 500.00, '2023-08-11'),   
(47, 19, 350.00, '2024-03-22'),   
(49, 17, 450.00, '2024-07-19'),   
(50, 18, 500.00, '2024-02-05');  

-- dados do endereço
insert into endereco(id_doador, estaco, cidade, rua, numero, complemento)
VALUES
(41, 'SP', 'São Paulo', 'Rua A', '123', 'Apartamento 101'),  -- João Silva
(42, 'RJ', 'Rio de Janeiro', 'Rua B', '456', 'Bloco C'),     -- Maria Oliveira
(43, 'MG', 'Belo Horizonte', 'Avenida X', '789', 'Sala 5'),    -- Carlos Souza
(44, 'BA', 'Salvador', 'Rua Y', '101', 'Casa 2'),              -- Victor Oliveira
(45, 'PR', 'Curitiba', 'Rua Z', '202', 'Apartamento 203'),     -- Maria Clara
(46, 'DF', 'Brasília', 'Rua W', '303', 'Apartamento 404'),     -- Luciana Ferreira
(47, 'GO', 'Goiânia', 'Rua V', '404', 'Casa 10'),              -- Paulo Henrique
(48, 'ES', 'Vitória', 'Rua U', '505', 'Apartamento 15'),       -- Fernanda Costa
(49, 'SP', 'São Paulo', 'Avenida S', '606', 'Bloco 3'),        -- Rafael Lima
(50, 'PE', 'Recife', 'Rua T', '707', 'Casa 8');               -- Juliana Santos

-- dados do banco de sangue
insert into banco_sangue(id_doador, id_doacao, quantidade_sangue_ml)
VALUES
(41, 55, 450.00),  -- João Silva, 1ª doação, 450 ml
(42, 56, 500.00),  -- Maria Oliveira, 1ª doação, 500 ml
(43, 57, 350.00),  -- Carlos Souza, 1ª doação, 350 ml
(44, 58, 400.00),  -- Victor Oliveira, 1ª doação, 400 ml
(45, 59, 450.00),  -- Maria Clara, 1ª doação, 450 ml
(46, 60, 500.00),  -- Luciana Ferreira, 1ª doação, 500 ml
(47, 61, 350.00),  -- Paulo Henrique, 1ª doação, 350 ml
(48, 62, 400.00),  -- Fernanda Costa, 1ª doação, 400 ml
(49, 63, 450.00);  -- Rafael Lima, 1ª doação, 450 ml

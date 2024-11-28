-- criando tabela referente ao Doador --
create table IF NOT EXISTS Doador (
    id_doador serial PRIMARY KEY,
    nome varchar(50) not null,
    cpf char(11) not null,
    tipo_sanguineo varchar(6) not null,
    telefone char(14) not null,
    sexo char(1) not null,
    quantidade_doacoes int not null,
    data_ultima_doacao date not null

);

-- criando tabela referente ao profissional que realizará o procedimento --
create table if not EXISTS Especialista(
    id_especialista serial primary key,
    nome varchar(50) not null,
    crm varchar(20) not null
);

-- criando tabela referentes os dados da doação -- 
create table if not exists doacao(
    id_doacao serial primary key,
    id_doador int not null,
    id_especialista int not NULL,
    volume_doado decimal(10,2) not null,
    data_doacao date not null,
    FOREIGN key(id_doador) REFERENCES doador(id_doador),
    FOREIGN key(id_especialista) REFERENCES especialista(id_especialista)
);

-- criando tabela referente ao Endereço do doador --
create table if not EXISTS Endereco(
    id_endereco serial primary key,
    id_doador int not null,
    estado char(2) not null,
    cidade varchar(20) not null,
    rua varchar(40) not null,
    numero varchar(10),
    complemento varchar(40),
    FOREIGN key(id_doador) REFERENCES Doador(id_doador)
);

--criando a tabela referente a quantidade de sangue --
create table if not EXISTS banco_sangue(
    id_sangue serial primary key,
    id_doador int not null,
    id_doacao int not null,
    quantidade_sangue_ml decimal(10,2) not null,  -- Quantidade de sangue em mililitros
    FOREIGN key(id_doador) REFERENCES doador(id_doador),
    FOREIGN key(id_doacao) REFERENCES doacao(id_doacao)
);

-- listar pessoas com o tipo O+
select nome, cpf, tipo_sanguineo, telefone
from doador
where tipo_sanguineo = "O+";

--contar o número de doações realizadas por cada doador
select id_doador,  count(8) as total_doacoes
from doacao
group by id_doador



-- liste o nome do doador, e o nome do especialista responsável da doação
select doador.nome, especialista.nome as especialista
from doacao 
inner join doador on doacao.id_doador = doador.id_doador
inner join especialista on doacao.id_especialista = doacao.id_especialista;

-- Exibir os doadores ordenados pelo nome, em ordem alfabética.
select nome, tipo_sanguineo
from doador  
order by nome asc;

-- atualização do número de telefone
update doador
set telefone = '11 985741542'
where nome =  'João Silva';


--Listar todos os doadores que fizeram doações com volume maior que 400 ml,
-- junto com o nome do especialista.
select doador.nome, especialista.nome, doacao.volume_doado as total_doado
from doacao
join doador on doacao.id_doador = doador.id_doador
join especialista on doacao.id_especialista = especialista.id_especialista
where  volume_doado > 400;

--Encontrar os doadores que realizaram doações de 500 ml. 
select doador.nome, doador.tipo_sanguineo, doacao.volume_doado as doacao_500ml 
from doacao
join doador on doacao.id_doador = doador.id_doador
where volume_doado = 500;

--  Mostrar a quantidade total de sangue doado por cada doador.
select doador.nome, sum(banco_sangue.quantidade_em_ml) as total_Doado
from banco_sangue
join doador on banco_sangue.id_doador = doador.id_doador
group by doador.nome;

-- Mostrar as doações feitas após 1º de janeiro de 2024.

select doador.nome, doacao.volume_doado, doacao.data_doacao
from doacao
join doador on doacao.id_doador = doacao.id_doador
where data_doacao > '2024-01-01';

--Mostrar a quantidade total de sangue doado por cada especialista.
select especialista.nome as especialista, sum(banco_sangue.quantidade_sangue_ml) as quantidade_total
from doacao
join especialista on doacao.id_especialista = especialista.id_especialista;

--listar doadores com mais de uma doação
select nome, tipo_sanguineo, quantidade_doacoes
from doador
where quantidade_doacoes > 1;

-- listar endereço de todos os doadores
select doador.nome as doador, endereco.rua, endereco.estado, endereco.cidade
from endereco
join doador on endereco.id_doador = doador.id_doador;

--Mostrar os nomes dos doadores, 
--tipos sanguíneos e quantidades de sangue doado,
-- com aliases para facilitar a leitura.

select doador.nome as "Nome do doador", doador.tipo_sanguineo as "Tipo de sangue", banco_sangue.quantidade_sangue_ml as "Quantidade de sangue doado"
from doacao
join doador on doacao.id_doador = doador.id_doador
join banco_sangue on doador.id_doador = doacao.id_doador;

--Verificar quantas doações foram realizadas por cada tipo sanguíneo.

select tipo_sanguineo, count(*) as total_tipos
from doador
group by tipo_sanguineo;

--Listar todos os doadores cujos nomes começam com "Maria".
select nome, cpf
from doador
where nome like '%maria%';
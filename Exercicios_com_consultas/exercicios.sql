'''Contagem de Doações por Tipo Sanguíneo
Objetivo: Contar quantos doadores existem para cada tipo sanguíneo.'''
select tipo_sanguineo, count(*) as numero_doadores
from doador
group by tipo_sanguineo;

-- o group by tipo_sanguineo agrupaos doadores por tipo sanguíneo, ou seja, coloca os doadores com o mesmo tipo sanguineo em grupos
-- o count(*) conta o número total d eregistros(Doadores) em cada grupo
-- ele conta quantos doadors tem o mesmo tipo de sangue

'''
Quantidade Total de Sangue doado por Tipo Sanguíneo
Objetivo: Somar a quantidade total de sangue doado por cada tipo sanguíneo.'''
select tipo_sanguineo as "tipo de sangue", sum(volume_doado) as "total doado de sangue", count(*) as total_doadores
from doador
join doacao on doador.id_doador = doacao.id_doador
join banco_sangue on doador.id_doador = banco_sangue.id_doador
group by tipo_sanguineo;

'''
Doadores que Realizaram Mais de 1 Doação
Objetivo: Listar os doadores que fizeram mais de 1 doação.'''
select nome as "nome do doador", count(*) as "quantidade de doações por doador"
from doador
group by nome;
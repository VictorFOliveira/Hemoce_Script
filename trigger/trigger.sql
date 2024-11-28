create or replace function atualizar_quantidade_sangue()
return trigger AS
$$
BEGIN
-- se for uma inserção de uma nova doação no caso *insert*, a função vai adicionar o volume de sangue
if tg_op = 'INSERT' THEN
--atualiza a quantidade de doacoes e o volume total de sangue no doador
update doador 
set quantodade_doacoes = quantidade_doaces +1,
quantidade_de_sangue_ml = quantidade_de_sangue_ + new.volume_doado
where id_doador = new.id_doador;

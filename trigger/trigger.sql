-- função para atualizar a quantidade de doações do doador
create or replace function atualizar_quantidade_doacoes()
returns trigger AS
$$
BEGIN
update doador 
set quantodade_doacoes = quantidade_doaces +1,
where id_doador = new.id_doador;
return new;
end;
$$ language plpgsql;

--  Trigger que executa a atualização das doações
create trigger trigger_atualizar_doacoes
after insert on doacao
for each ROW
execute function atualizar_quantidade_doacoes



-- função que atualiza a data da ultima doação
create or replace function atualizar_ultima_doacao_doador()
returns trigger AS
$$
Begin update doador
set data_ultima_doacao =  new.data_doacao
where id_doador = new.id_doador;
return new;
end;
$$ language plpgsql;

-- trigger que executa atualização da data
create trigger trigger_atualizar_data
afeter insert on doacao
for each row 
execute function atualizar_ultima_doacao_doador
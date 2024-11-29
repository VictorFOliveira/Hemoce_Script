-- Função para atualizar a quantidade de doações do doador
create or replace function atualizar_quantidade_doacoes()
returns trigger AS
$$
BEGIN
    update doador 
    set quantidade_doacoes = quantidade_doacoes + 1
    where id_doador = new.id_doador;
    return new;
END;
$$ language plpgsql;

-- Trigger que executa a atualização das doações
create trigger trigger_atualizar_doacoes
after insert on doacao
for each row
execute function atualizar_quantidade_doacoes();

-- Função que atualiza a data da última doação do doador
create or replace function atualizar_ultima_doacao_doador()
returns trigger AS
$$
BEGIN
    update doador
    set data_ultima_doacao = new.data_doacao
    where id_doador = new.id_doador;
    return new;
END;
$$ language plpgsql;

-- Trigger que executa a atualização da data da última doação
create trigger trigger_atualizar_data
after insert on doacao
for each row 
execute function atualizar_ultima_doacao_doador();


-- Função que verifica se o doador está doando apenas 450ml 
create or replace function verificar_quantidade_de_sangue()
returns trigger AS
$$
begin 
if new.volume_doado == 450 then 
raise exception ' O volume de doação não pode ser menor do que 450, ou superior a 450 ml.';
end if;
return new;
END;
$$ language plpgsql;


-- trigger que verifica a quantidade doada
create trigger trigger_doacao_450ml
before insert on doacao
for each row 
execute function verificar_quantidade_de_sangue();


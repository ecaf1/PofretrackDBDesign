-- Active: 1711381871052@@127.0.0.1@3306@profetrack
select * from usuarios;

select nome from usuarios where id =1;

update usuarios set senha = 'toma' where nome='Edeilson' ;


select di.nome, user.nome from disciplinas di inner join 
    usuario_diciplina ud on di.id = ud.disciplina_id inner join 
    usuarios user on user.id = ud.usuario_id 
    where user.email = 'edeilson@gmail.com';

-- Consultar todas as disciplinas oferecidas no turno vespertino para o ano letivo de 2024.
SELECT * from disciplinas where turno='vespertino' and ano_letivo=2024;

--Obter uma lista de todos os planejamentos, incluindo o nome da disciplina e o nome do usuário 
select pla.id, di.nome, user.nome from planejamentos pla INNER JOIN 
    disciplinas di on pla.disciplina_id = di.id inner join
    usuario_diciplina use_di on use_di.disciplina_id = di.id inner JOIN
    usuarios user on user.id = use_di.usuario_id ORDER BY pla.id;

-- Listar usuários que são tanto professores quanto coordenadores.

select user.nome from usuarios user WHERE EXISTS
(select 1 from usuario_tipo ut1 where user.id = ut1.usuario_id and ut1.tipo ='professor')
and EXISTS (select 1 from usuario_tipo ut2 WHERE user.id and ut2.tipo = 'coordenador');

SELECT * from planejamentos WHERE atividades_casa is not null 
    and atividades_sala is not null; 

--Encontrar o usuário que contribuiu com o maior número de comentários e quantos 
--comentários foram feitos.
SELECT user.nome, count(user.id) as n_comentarios
    from planejamentos pla inner join comentario co on 
    pla.id = co.planejamento_id INNER JOIN usuario_diciplina dp
    on dp.disciplina_id = pla.disciplina_id INNER JOIN
    usuarios user on user.id = dp.usuario_id GROUP BY
    user.id ORDER BY n_comentarios desc limit 2;
% Lógico (Prolog)
% No paradigma lógico, declaramos fatos e regras. 
% O computador usa um motor de inferência para encontrar a solução.

% Fatos: definem a base de conhecimento
aluno(alice, 9.0).
aluno(bob, 5.0).
aluno(caio, 8.0).

% Regra: define a lógica de "aprovação"
% "Alguém está aprovado SE existe um fato aluno com essa Nota E Nota for >= 7"
aprovado(Nome, Nota) :- aluno(Nome, Nota), Nota >= 7.0.

main :-
    % findall busca todos os casos que satisfazem a regra 'aprovado'
    findall(Nota, aprovado(_, Nota), Notas),
    sum_list(Notas, Soma),
    length(Notas, Qtd),
    Media is Soma / Qtd,
    format('Media dos aprovados: ~2f~n', [Media]),
    halt.

:- initialization(main, main).

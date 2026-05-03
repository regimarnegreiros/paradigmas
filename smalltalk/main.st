"Orientado a Objetos (Smalltalk)"
"No Smalltalk, tudo é objeto e a computação ocorre via troca de mensagens"

"Instanciamos uma coleção (objeto) para armazenar os alunos"
alunos := OrderedCollection new.

"Cada aluno é um dicionário. Enviamos mensagens at:put: para configurar o estado"
alice := Dictionary new.
alice at: #nome put: 'Alice'; at: #nota put: 9.0.
alunos add: alice.

bob := Dictionary new.
bob at: #nome put: 'Bob'; at: #nota put: 5.0.
alunos add: bob.

caio := Dictionary new.
caio at: #nome put: 'Caio'; at: #nota put: 8.0.
alunos add: caio.

"Mensagem select: - a coleção decide como filtrar seus próprios elementos baseado no bloco"
aprovados := alunos select: [ :a | (a at: #nota) >= 7.0 ].

"Cálculo da média protegendo o objeto contra erros de divisão por zero"
(aprovados isEmpty)
    ifTrue: [ media := 0 ]
    ifFalse: [ 
        "A mensagem inject:into: é usada para reduzir a coleção a um valor (soma)"
        soma := aprovados inject: 0 into: [ :sum :a | sum + (a at: #nota) ].
        media := soma / aprovados size 
    ].

Transcript show: 'Media dos aprovados: ', media asFloat printString; cr.

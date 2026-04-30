% A forma correta e moderna de iniciar um programa em SWI-Prolog
main(_Argv) :-
    writeln('Prolog: Provando fatos e regras (Logico).'),
    writeln('Hello, World!'),
    halt.

:- initialization(main, main).
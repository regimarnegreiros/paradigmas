{ Imperativo (Pascal) }
program MediaAprovados;
type
  Aluno = record
    nome: string;
    nota: real;
  end;
var
  alunos: array[1..3] of Aluno;
  soma, media: real;
  cont, i: integer;
begin
  { No paradigma imperativo, focamos no COMO fazer, passo a passo }
  alunos[1].nome := 'Alice'; alunos[1].nota := 9.0;
  alunos[2].nome := 'Bob';   alunos[2].nota := 5.0;
  alunos[3].nome := 'Caio';  alunos[3].nota := 8.0;

  { O estado do programa é modificado através de variáveis e loops }
  soma := 0; 
  cont := 0;
  
  for i := 1 to 3 do
  begin
    { Controle de fluxo explícito para verificar condições }
    if alunos[i].nota >= 7.0 then
    begin
      soma := soma + alunos[i].nota; { Mutação de valor }
      cont := cont + 1;
    end;
  end;

  if cont > 0 then media := soma / cont else media := 0;
  writeln('Media dos aprovados: ', media:0:2);
end.

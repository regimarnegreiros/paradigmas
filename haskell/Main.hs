-- Funcional (Haskell)
module Main where

-- No paradigma funcional, focamos em O QUE deve ser feito.
-- Os dados são imutáveis e transformados por funções.
main :: IO ()
main = do
    -- Lista de tuplas (dados imutáveis)
    let alunos = [("Alice", 9.0), ("Bob", 5.0), ("Caio", 8.0)]
    
    -- List Comprehension: Filtra e extrai em uma única expressão matemática
    -- É como definir um conjunto: {nota | aluno pertence a alunos e nota >= 7}
    let notasAprovados = [nota | (_, nota) <- alunos, nota >= 7.0]
    
    -- Funções de alta ordem (sum, length) processam a lista sem loops manuais
    let media = sum notasAprovados / fromIntegral (length notasAprovados)
    
    putStrLn $ "Media dos aprovados: " ++ show media

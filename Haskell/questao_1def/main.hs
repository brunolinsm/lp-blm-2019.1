--Questão 1 (d)
--Remove um elemento em uma posicao especifica de uma lista. 
--Ex: remover 2 [1,2,3,4] = [1,3,4]
remover::Int->[Int]->[Int]
remover 1 (a:x) = x
remover n (a:x) = a: remover (n-1) x

--Questão 1 (e)
--Insere um elemento em uma posicao especifica de uma lista. 
--Ex: inserir 8 2 [0,0,0,0,0] = [0,0,8,0,0,0]
inserir::Int->Int->[Int]->[Int]
inserir num pos (x:xs)
  | pos <= 1 = [x] ++ [num] ++ xs
  | otherwise = [x] ++ (inserir num (pos - 1) xs)

--Questão 1 (f)
--Recebe uma lista e retorna uma tupla, onde o primeiro elemento é uma lista com os elementos impares ordenados e o segundo elemento é uma lista com os elementos pares ordenados. 
--Ex: separarImparPar [1,5,6,7,9] = ([1,5,7,9],[6])
separarImparPar :: [Int] -> ([Int],[Int])
separarImparPar xs = (filter odd xs, filter even xs)

main :: IO()
main =  do
        print("Pronto! Execute as funcoes!")
module Main where

fatorial :: Int -> Int
fatorial n | n < 0 = error "Erro: número negativo"
fatorial 0 = 1
fatorial n = n * fatorial (n-1)

main :: IO ()
main = do
putStrLn "Digite um número:"
num <- getLine
let number = read num :: Int
putStrLn ("Fatorial de " ++num++ ":")
print(fatorial number)
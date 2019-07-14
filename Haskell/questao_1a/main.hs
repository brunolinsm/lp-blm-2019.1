module Main where

fibonacci :: Int -> Int
fibonacci n | n < 0 = error "Erro: número negativo"
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

main :: IO ()
main = do
putStrLn "Digite um número:"
num <- getLine
let number = read num :: Int
putStrLn ("Fibonacci de " ++num++ ":")
print(fibonacci number)
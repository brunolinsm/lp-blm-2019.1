module Main where 

inverterTexto :: String -> String
inverterTexto entrada = (unwords .  reverse . words) entrada

main :: IO ()
main = do
putStrLn "Digite um texto para inverter:"
texto <- getLine
putStrLn "Frase Invertida:"
putStrLn(inverterTexto texto)
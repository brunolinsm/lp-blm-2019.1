module Main where 
import System.IO

inverterPoema :: String -> String
inverterPoema entrada = (unlines . reverse . lines) entrada

main :: IO ()
main = do
arquivo <- openFile "poema.txt" ReadMode
conteudo <- hGetContents arquivo  
putStrLn "Poema sem inversão:"
putStrLn conteudo
putStrLn " "

putStrLn "Poema Invertido:"
putStrLn(inverterPoema conteudo)
hClose arquivo
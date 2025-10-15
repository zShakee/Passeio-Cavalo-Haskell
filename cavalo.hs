main :: IO ()
main = do
    conteudo <- readFile "teste.txt"
    let valores = map read (words conteudo) :: [Integer]
    let [n, m, x, y] = valores
    putStrLn $ "Dimensões do tabuleiro: " ++ show n ++ "x" ++ show m
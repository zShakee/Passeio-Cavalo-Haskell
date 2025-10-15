

movimentosPossiveis x y linhas colunas = 
    let moves = [ (-2, -1), (-1, -2), (1, -2), (2, -1), (2, 1), (1, 2), (-1, 2), (-2, 1)]
        todosMovimentos = map (\(dx, dy) -> (x + dx, y + dy)) moves
    in filter (\(nx, ny) -> nx >= 0 && nx <= linhas && ny >= 0 && ny <= colunas) todosMovimentos 

main :: IO ()
main = do
    conteudo <- readFile "entrada.txt"
    let valores = map read (words conteudo) :: [Integer]
    let [n, m, x, y] = valores
    putStrLn $ "Dimensões do tabuleiro: " ++ show n ++ "x" ++ show m
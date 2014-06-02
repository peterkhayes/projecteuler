fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

digitLength :: Integer -> Int
digitLength n = length $ show n

answer = fst $ head $ filter (\t -> digitLength (snd t) == 1000) (zip [0, 1..] fibs)
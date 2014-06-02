factorial :: Integer -> Integer
factorial n = product [1..n]

digits :: Integer -> [Int]
digits = map (read . return) . show

answer = sum $ digits $ factorial 100
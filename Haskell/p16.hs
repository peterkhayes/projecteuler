digits :: Integer -> [Int]
digits = map (read . return) . show

answer = sum $ digits (2^1000)
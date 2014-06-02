factors = [20, 19, 18, 17, 16, 15, 14, 13, 12, 11]

dividesUpTo20 :: Int -> Bool
dividesUpTo20 n = foldl(\ok x -> ok && mod n x == 0) True factors

answer = head $ filter dividesUpTo20 [1..]
-- Longest Collatz sequence

import Data.Ord
import Data.List

collatzLength :: Int -> Int
collatzLength n
  | n == 1 = 1
  | mod n 2 == 0 = collatzLength (div n 2) + 1
  | otherwise = collatzLength (3 * n + 1) + 1

answer = maximumBy (comparing snd) $ zip [1..] (map (collatzLength) [1..999999])
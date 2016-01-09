-- Language: Haskell
--
-- 30 Days of Code
-- Day 3: If-Else Statements!
--
-- Input:
-- 		N (Integer)
-- Output:
--		'Weird' or 'Not Weird', depending on some logic
--
module Main where

weird :: Int -> [Char]
weird n 
	| odd n = "Weird"
  | elem n [2..5] = "Not Weird"
	| elem n [6..20]  = "Weird"
  | otherwise = "Not Weird"

main = do
  input <- getLine
  putStrLn . weird . (read :: String -> Int) $ input

module Main (main) where

main :: IO ()
main = do
    putStrLn "Hello, Haskell!"
    print (myDouble 5 :: Int)
    print (factorial 5 :: Int)
    print (maximum' [1 :: Int, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    
-- main = print (factorial 5)

myDouble :: Num a => a -> a
myDouble x = x*2

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs


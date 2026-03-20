 {- ---------------------------------------------------
no comments version - easier to read just code.
-------------------------------------------------------}
 
 
double :: Int -> Int
double x = x * 2

isEven :: Int -> Bool
isEven x = mod x 2 == 0

sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

describeNumber :: Int -> String
describeNumber n =
    if isEven n
        then "The number is even."
        else "The number is odd."

factorial :: Integer -> Integer
factorial n
    | n <= 1 = 1
    | otherwise = n * factorial (n - 1)

doubleEvenNumbers :: [Int] -> [Int]
doubleEvenNumbers [] = []
doubleEvenNumbers (x:xs)
    | isEven x = double x : doubleEvenNumbers xs
    | otherwise = doubleEvenNumbers xs


main :: IO ()
main = do
    let n = 7
    let m = 8
    let values = [1, 2, 3, 4, 5]

    putStrLn ("n = " ++ show n)
    putStrLn ("double n = " ++ show (double n))
    putStrLn (describeNumber n)
    putStrLn ""
 
    putStrLn ("m = " ++ show m)
    putStrLn ("double m = " ++ show (double m))
    putStrLn (describeNumber m)
    putStrLn ""
    
    putStrLn ("sum of list = " ++ show (sumList values))
    putStrLn ""
    
    putStrLn ("factorial " ++ show n ++ " = " ++ show (factorial (fromIntegral n)))
    putStrLn ""
    
    putStrLn ("original list = " ++ show values)
    putStrLn ("doubled evens = " ++ show (doubleEvenNumbers values))
    putStrLn ""


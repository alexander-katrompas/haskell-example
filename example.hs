 {- ---------------------------------------------------
    Author: Alexander Katrompas
    Purpose: Teaching Example
    
    This program demonstrates basic Haskell functions,
    recursion, list processing, guards, and simple I/O.
-------------------------------------------------------}
 
 
 -- make a function called double defined to be an Int
 -- and it multiplies by 2
double :: Int -> Int -- accepts Int, returns Int
double x = x * 2

{- make a function called isEven defined to return a Bool
   and determine whether an Int is even -}
isEven :: Int -> Bool  -- accepts Int, returns Bool
isEven x = mod x 2 == 0  -- could use: isEven x = even x (more idiomatic)

sumList :: [Int] -> Int  -- function sumList accepts list of Int, returns Int
sumList [] = 0           -- means sum of empty list is 0
-- a non-empty list with first element x and rest xs
-- sum of non-empty list is first element plus sum of the rest
sumList (x:xs) = x + sumList xs

{- Haskell if is an expression, not just a control statement.
   It must produce a value. -}
describeNumber :: Int -> String
describeNumber n =
    if isEven n
        then "The number is even."
        else "The number is odd."

-- factorial accepts Integer, returns Integer; Integer is arbitrary precision, unlike fixed-size Int
factorial :: Integer -> Integer
factorial n
    -- guards are often cleaner than if for multi-case logic
    | n <= 1 = 1
    | otherwise = n * factorial (n - 1)  -- recursion

doubleEvenNumbers :: [Int] -> [Int]  -- accepts Int list, returns Int list 
doubleEvenNumbers [] = []            -- the result for the empty list is the empty list
doubleEvenNumbers (x:xs)             -- a non-empty list with first element x and rest xs
    -- guards are often cleaner than if for multi-case logic
    | isEven x = double x : doubleEvenNumbers xs
    | otherwise = doubleEvenNumbers xs


main :: IO ()  -- main is an io action
main = do      -- this is a "do block"
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
    
    -- n is inferred as Int, but factorial expects Integer,
    -- so we convert n explicitly with fromIntegral.
    putStrLn ("factorial " ++ show n ++ " = " ++ show (factorial (fromIntegral n)))
    putStrLn ""
    
    putStrLn ("original list = " ++ show values)
    putStrLn ("doubled evens = " ++ show (doubleEvenNumbers values))
    putStrLn ""


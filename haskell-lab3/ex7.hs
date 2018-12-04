import Data.Char

onlyEven [] = []
onlyEven (x:xs)     | x  `mod` 2 == 0 = x : onlyEven xs
                    | otherwise = onlyEven xs

onlyOdd [] = []
onlyOdd (x:xs) | x `mod` 2 == 1 = x : onlyOdd xs
               | otherwise = onlyOdd xs

onlyUpper [] = []
onlyUpper (x:xs) = toUpper x : onlyUpper xs 

filter' :: (a->Bool) -> [a] -> [a]
filter' f [] = []
filter' f (x:xs) | f x == True = x : filter' f xs
                 | otherwise = filter' f xs

map' :: (a->b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

sumWith g [] = 0
sumWith g (x:xs) = g x + sumWith g xs

sumWith' :: Num a => (a->a) -> [a] -> a
sumWith' = go 0
    where 
        go acc g [] = acc
        go acc g (x:xs) = go (acc+ g x) g xs
    

sumWith'' g = foldr (\x acc -> g x + acc) 0

es :: [t] -> [t]
es xs = fst unzip (zip xs)
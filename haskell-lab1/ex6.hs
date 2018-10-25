absInt :: Int -> Int
absInt x | x>=0 = x
         | otherwise  = -x

sgnInt :: Int -> Int
sgnInt x    | x>0 = 1
            | x==0 = 0
            | otherwise = -1

min3Int :: (Int, Int, Int) -> Int
min3Int (a,b,c) | a<=b && a<=c = a
                | b<=a && b<=c = b
                | c<=a && c<=b = c

toUpper :: Char -> Char
toUpper x   | fromEnum x <=122 && fromEnum x >= 97 = toEnum(fromEnum x - 32)
            | otherwise = '#'
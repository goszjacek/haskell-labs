fib :: (Num a, Eq a) => a->a
fib n = if n==0 || n==1 then n
    else fib (n-1) + fib (n-2)

sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x : xs) = x + sum' xs


prod' :: Num a => [a] -> a
prod' [] = 1
prod' (x:xs) = x * prod' xs


length' [] = 0
length' (x:xs) = 1 + length' xs

or' [] = False
or' (x:xs) = x || or' xs


and' [] = True
and' (x:xs) = x && and' xs

doubleAll [] = []
doubleAll (x:xs) = x*2 : doubleAll xs


squareAll [] = []
squareAll (x:xs) = x^2 : squareAll xs


selectEven [] = []
selectEven (x:xs) =
    if x `mod` 2==0 then x : selectEven xs
    else selectEven xs


-- funkcja pomocnicza loop iterujaca sie po elementach, ktore definijuemy nieco bardziej proceduralnie
sum'2 :: Num a => [a]->a
sum'2 xs = loop 0 xs
    where 
        loop acc [] = acc
        loop acc (x:xs) = loop (acc+x) xs


-- ??? czym sie rozni "Num a => [a]->a" od "[Integer]->Integer"  ?
-- Num to dowolny typ licznowy, definijac w ten sposob funkcje dajemuy sobie swobode
-- haskell jest leniwy, wiec gdy sam bedzie mial narzucic typ funkcji, bedzie to Integer. Wtedy nie bedziemy mogli korzstac z Fractional, juz 1 raz wywynioskowany typ nie jest


-- haskell domysli si gdzie wstawic brakujacy argument jeżeli jest to oczywiste i nie ma za duzo mozliwosci
sum'3 :: Num a => [a] ->a
sum'3 = loop 0
        where 
            loop acc [] = acc
            loop acc (x:xs) = loop (acc+x) xs


prod'3 :: Num a => [a] -> a
prod'3 = loop 1
        where 
            loop acc [] = acc
            loop acc (x:xs) = loop (acc*x) xs

length'3 :: Num a => [a] -> Integer
length'3 = loop 0
        where
            loop acc [] = acc
            loop acc (x:xs) = loop (acc+1) xs
        

length'3'2 :: [t] -> Integer
length'3'2 = loop 0
        where
            loop acc [] = acc
            loop acc (x:xs) = loop (acc+1) xs
                    
-- z uzyciem list comprehension
quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = quickSort (leftPart xs) ++ [x] ++ quickSort  (rightPart xs)
            where
                leftPart xs = [y | y <- xs, y<=x]
                rightPart xs = [y | y <-xs, y>x]

--using filter
quickSort' :: (Ord a) => [a] -> [a]
quickSort' [] = []
quickSort' (x:xs) = quickSort (leftPart xs) ++ [x] ++ quickSort  (rightPart xs)
            where
                leftPart xs = filter (<=x) xs
                rightPart xs = filter (>x) xs


fst2Eq (x : y : _) | x==y = True
fst2Eq _ = False


fstDivSnd (x : y : _) | y `mod` x == 0 = True
fstDivSnd _ = False

                
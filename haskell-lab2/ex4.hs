isPalindrome :: [Char] -> Bool 
isPalindrome s | length s <= 1 = True 
               | otherwise = head s == last s && isPalindrome (tail(init s))

getElemAtIdx ::[a] -> Int -> a
getElemAtIdx table id = last (take (id+1) table )

{--Dlaczego 
[(x,y) | x<-[3..5], y <- [5,6..8]]
dziala
ale
[(x,y) | x<-[3..5], y <- [1,6..8]]
nie dziala

floor? 
parsing?

how to compare time in haskell
--}
hundred = [1..100]
e1 = [(a,b,c) | a <- hundred, b <- [a..100], c <- [b..100], a^2+b^2==c^2]

isPrime :: Integral a => a -> Bool
isPrime n = [i | i<-[2..n-1], n `mod` i == 0, i^2<=n] == []



primes :: [Int]
primes = eratoSieve [2..]
  where
    eratoSieve :: [Int] -> [Int]
    eratoSieve (p:xs) = p : eratoSieve [ a | a <- xs, a `mod` p /=0]

getPrimes :: Int-> [Int]
getPrimes x = eratoSieve [2..x]
  where
    eratoSieve :: [Int] -> [Int]
    eratoSieve [] = []
    eratoSieve (p:xs) = p : eratoSieve [ a | a <- xs, a `mod` p /=0]


isPrime' :: Int -> Bool
isPrime' x = isIn x $ eratoSieve [2..x]
    where
    eratoSieve :: [Int] -> [Int]
    eratoSieve  [] = []
    eratoSieve (p:xs) = p : eratoSieve [ a | a <- xs, a `mod` p /=0]
    isIn :: Int -> [Int] -> Bool
    isIn x table = [i | i <- table, x==i] /= []

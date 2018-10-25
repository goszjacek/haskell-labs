f 1 2.2 = ((f 1) 2.2)
mPI = 3.14
addC x y = x  + y
addT (x,y) = x + y
power a b = a ^ b
divide (a,b) = a/b
main = putStrLn "OK"
abc (a,b,c) = a + b + c

addD a b c d = a + b + c + d

add1To_ = addD 1 -- partially applied function

add1and3To_ = add1To_ 3

add1and3and7To_ = add1and3To_ 7

--flip

--bottom jak znaczego prostopadłości, 
{-
typy - zbiory ktore maja wspolne cechy
bottom reprezentuje brak sensownego wyniku
laziness - lazy ;
-}


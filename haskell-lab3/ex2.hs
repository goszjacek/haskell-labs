sumSqr' :: Num t => [t]  -> t
sumSqr' [] = 0
sumSqr' (x:xs) = x^2 + sumSqr' xs

sumWith :: Num t => (t->t) -> [t] -> t
sumWith f [] = 0
sumWith f (x:xs) = f x + sumWith f xs 


sumCube x = sumWith (^3) x

sumAbs x = sumWith f x 
    where
        f a | a>= 0 = a
            | a<0 = -a

listLength x = let f a = 1 in sumWith f x

listLength' x = sumWith (\x -> 1) x



factorial x | x==0 = 1
            | x>0 = x*factorial(x-1)


-- ??? when function input is interpreted as Fractional t and when as (Fractional t, Integral t) ? 
expApproxUpTo :: Int-> Double -> Double
expApproxUpTo n x  = sumWith (\k -> x^k / factorial x)  [0..n]

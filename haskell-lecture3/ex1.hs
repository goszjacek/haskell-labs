import Data.List

sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum xs

sumSqr :: Num a => [a] -> a
sumSqr [] = 0
sumSqr (x:xs) = x^2 + sumSqr xs

sumAbs :: Num a => [a] -> a
sumAbs [] = 0
sumAbs (x:xs) = abs(x) + sumAbs xs


--tworzymy cala rodzine funkcji, nie wiemy jak bedzie wygladala zostawiamy ja jako paramter, kazdy kto chce wykorzsytac funkcje podaje tylko opis, my mamy szkielet
sumWith :: Num a => (a->a) -> [a] -> a
sumWith _ [] = 0
sumWith f (x:xs) = f x + sumWith f xs


sum'' = sumWith (\e -> e) -- wywolujemy funkcje i  w locie ja tworzymy - nie musi ona istniec! w przeciwienstwie do np. c++ 


--funkcja wyzszego rzedu  - to taka ktora w swoejej definicji wykorzystuje inna funkjce, swoje istote dzialania opiera na innej funkcji ktora musi dostac jako argument
sumsqr' = sumWith (\e -> e^2) 
sumCub' = sumWith (\e -> e^3)
sumTen' = sumWith (\e -> e^10)
sumAbs' = sumWith (\e -> abs e)

-- do tej pory przekazywalismy funkcje jako wynik, tu przekazujemy jako argument

df :: (Double -> Double) -> (Double -> Double)
df f = \x -> (f(x + h) - f(x - h)) / (2 * h)
  where h = 1e-8

df' :: (Double -> Double) -> Double -> (Double -> Double)
df' f h = \x -> (f(x+h) - f(x-h) / (2*h))



-- zlozenie matematyczne w haskellu
 --filter, map, foldr
 
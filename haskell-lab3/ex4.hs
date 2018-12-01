

funcList :: [Double -> Double]
funcList = [\x -> (sin x)/x, \x -> (exp 1)**x]

evalFuncList :: a -> [a->b] -> [b]
evalFuncList x [] = []
evalFuncList x (f:fs) = f x : evalFuncList x fs

diplEqs :: (Double -> Double, Double -> Double)
diplEqs = (\t -> t*4, \t-> t+2 * t -1)

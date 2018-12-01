sqr x = x^2

functionFactory n = case n of
    1 -> id
    2 -> sqr
    3 -> (^2)
    4 -> intFunc
    5 -> \x -> x^3
    _ -> const n
    where
        intFunc x = x ^ 4 
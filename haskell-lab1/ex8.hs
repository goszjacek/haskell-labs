not' :: Bool -> Bool
not' x = case x of
    True -> False
    False -> True

absInt :: Int -> Int
absInt x = case (x>=0) of
    True -> x
    _ -> -x

isItTheAnswer :: String -> Bool
isItTheAnswer x = case x=="Love" of
    True -> True
    _ -> False

nand' :: (Bool, Bool) -> Bool
nand' x = case x == (True, True) of
    True -> False
    _ -> True

xor' :: (Bool, Bool) -> Bool
xor' x = case x of
    (True,False) -> True
    (False, True) -> True
    _ -> False
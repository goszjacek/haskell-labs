sgn :: Int -> Int
sgn x = if x<0
    then -1
    else
        if x==0
            then 0
            else 1

            

absInt :: Int -> Int
absInt x = if x < 0
    then -x
    else x

min2Int :: (Int, Int) -> Int
min2Int (x,y) = if x<y
    then x
    else y

min3Int :: (Int, Int, Int) -> Int
min3Int (x,y,z) =
    if x<y
        then if x<z
            then x
            else z
        else if y<z
            then y
            else z

min3Int2 :: (Int, Int, Int) -> Int
min3Int2 (a,b,c) = min2Int(min2Int(a,b),min2Int(b,c))

toUpper :: Char -> Char
toUpper x = toEnum (fromEnum x - 32)

toLower :: Char -> Char
toLower x = toEnum(fromEnum x + 32)

isDigit :: Char -> Bool
isDigit x = if x=='0'||x=='1'||x=='2'||x=='3'||x=='4'||x=='5'||x=='6'||x=='7'||x=='8'||x=='9'
    then True
    else False

isDigitWithEnum :: Char -> Bool
isDigitWithEnum x = if fromEnum x <= 57 && fromEnum x >= 48
    then True
    else False

charToNum :: Char -> Int
charToNum x = if isDigit x
    then fromEnum x - 48
    else -1
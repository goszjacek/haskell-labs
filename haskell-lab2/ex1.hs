myFun x = 2 * x

add2T :: (Num a) => (a,a) -> a
add2T (x,y) = x + y 

add2C :: (Num a) => (a->(a->a))
add2C x y = x+y

add3T :: Num a => (a,a,a) -> a
add3T (a,b,c) = a+b+c

add3C :: Num a => a -> a -> (a -> (a))
add3C a b c = a + b+c

fiveToPower_ = (5 ^)

_ToPower5 = (^5)

subtrNFrom5 = (5-)

subtr5From_ = -5
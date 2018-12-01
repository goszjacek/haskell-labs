{-
Jaka jest notacja typow?
Czy deklaracja typu moga zawierac cykle?
Do czego przydaja sie typy (nie dopuszczenie pewnego rodzaju wartosci)
Kiedy nie dziala wnioskowanie typow

-}

polarToCartesian :: Floating a => (a,a) -> (a,a)
polarToCartesian (r,phi) = (r * cos phi, r * sin phi)


type Cartesian a = (a,a)
type Polar a = (a,a)

polarToCartesian'' :: Floating a => Cartesian a -> Polar a
polarToCartesian'' (r,phi) = (r * cos phi, r * sin phi)

newtype CC a = MCC (a,a)
newtype PC a = MPC (a,a)
polarToCartesian' :: Floating a => CC a -> PC a
polarToCartesian' (MCC (r,phi)) = (MPC(r * cos phi, r * sin phi))



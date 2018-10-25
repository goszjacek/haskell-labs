abc :: (Double, Double, Double) -> (Double, Double)
abc (a,b,c) = let d = sqrt(b^2 - 4*a*c)
                  e = 2 * a
              in ((-b+d)/e , (-b-d)/e)

unitVec2D :: (Double, Double) -> (Double, Double)
unitVec2D (a,b) = let w=sqrt(a^2+b^2)
                  in (a/w,b/w)

{:
jyggcduycuk:}
abc :: (Double, Double, Double) -> (Double, Double)
abc (a,b,c) = ((-b+d)/e , (-b-d)/e) 
    where d = sqrt(b^2 - 4*a*c)
          e = 2 * a

unitVec2D :: (Double, Double) -> (Double, Double)
unitVec2D (a,b) = (a/w,b/w)
    where w=sqrt(a^2+b^2)
    


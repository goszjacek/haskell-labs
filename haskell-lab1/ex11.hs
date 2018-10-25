abc :: (Double, Double, Double) -> (Double, Double)
abc (a,b,c) = ((-b+d)/e , (-b-d)/e) 
    where {
    d = sqrt(b^2 - 4*a*c);
    e = 2 * a;
    }


f2 x = if x<100 then x==1 else x>2


swap(x,y) = (y,x)


swapy(x,y,z) = (z,x,y)

f3 x = if x>3 then 2/x else x==2

f4 (x,y) = if x `mod` 2 == 0 then y*2 else x/2
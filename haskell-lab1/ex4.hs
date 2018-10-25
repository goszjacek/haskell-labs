sqr :: Double -> Double
sqr x = x * x

tri :: Double -> Double
tri x = x * x * x


vec2len :: (Double, Double) -> Double
vec2len (a,b) = sqrt(a^2 + b^2)

vec3DLen :: (Double, Double, Double) -> Double
vec3DLen (a,b,c) = sqrt(a^2 + b^2 + c^2)

swap :: (Double, Int) -> (Int, Double)
swap (x,y) = (y,x)



threeEqual :: (Double, Double, Double) -> Bool
threeEqual (a,b,c) = a==b && b==c

checkList :: Double -> [Double]

checkList n = [3,5..(sqrt n)]

isPrime :: Double -> Bool

posibleFactors :: Double -> [Double]

isPrime n = if length [x | x <- checkList n, (mod (truncate n) (truncate x)) == 0] == 0 then True else False

posibleFactors num = [x | x <- [1,3..(sqrt num)], (mod num (truncate x)) == 0]

res num = [x | x <- posibleFactors num, (mod num (truncate x)) == 0 && isPrime x == True]

mainnum = 600851475143
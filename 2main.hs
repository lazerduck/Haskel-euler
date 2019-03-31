fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

def fib(n):
      a, b = 0, 1
      for _ in xrange(n):
          a, b = b, a + b
      return a  

getFibUntil x current = if fib current < x then
    getFibUntil x  (current+1) ++ [fib current]
    else [] 

res = sum [x | x <- (getFibUntil 4000000 0), (mod x 2) == 0]
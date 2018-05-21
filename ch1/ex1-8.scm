(define (square x) (* x x))

(define (cubert-iter guess prev x)
  (if (good-enough? guess prev)
    guess
    (cubert-iter (improve guess x) guess x)))

(define (improve guess x)
  (average (/ x (square guess)) guess guess))

(define (average x y z)
  (/ (+ x y z) 3))

(define (good-enough? guess prev)
  (< (abs (- guess prev)) (abs (* guess 0.001))))

(define (cubert x)
  (cubert-iter 1.0 0.0 x))

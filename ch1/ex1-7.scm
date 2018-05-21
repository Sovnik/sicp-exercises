;;Inaccuracies in finding square rools of small numbers are accounted for in the (relatively high) tolerance value of 0.01. In small numbers, this tolerance is too large to be precise. If you used it to take the square root of .0001, it would return .0323 instead of .01.

;;Computer precision prevents the interpreter from seeing differences between large numbers. At extremely high values, good-enough will never be satisfied, causing a loop.

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) (* guess 0.001)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;;This probably works better maybe.

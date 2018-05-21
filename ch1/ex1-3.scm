(define (square x) (* x x))
(define (squareSum x y) (+ (square x) (square y)))

(define (largerSquareSum x y z) (
    (cond
      ((and (>= x y) (>= y z)) (squareSum x y))
      ((and (>= y x) (>= z x)) (squareSum y z))
      ((and (>= x y) (>= z y)) (squareSum x z))
        )
    )
)

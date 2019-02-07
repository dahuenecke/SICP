(define (square x) (* x x)

(define (sum-of-squares x y)
    (+ (square x) (square y)))

(define (sum-of-squares-largest-two x y z)
    (if (>= x y)
        (if (>= y z)
            (sum-of-squares x y)
            (sum-of-squares x z))
        (if (>= x z)
            (sum-of-squares y x)
            (sum-of-squares y z))))
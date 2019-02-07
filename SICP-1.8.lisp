(define (square x)
    (* x x))

(define (abs x)
    (if (< x 0)
        (- x)
        x))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (average x y)
    (/ (+ x y) 2))

(define (improve-cube guess x)
    (/ ((+ (/ x (square guess)) (* 2 guess)) 3)))

(define (sqrt-cube-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-cube-iter (improve-cube guess x) x)))

(define (sqrt-cube x)
    (sqrt-cube-iter 1.0 x))

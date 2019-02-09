;recursive process
(define (factorial x)
    (if (= x 1)
        1
        (* n (factorial (- n 1)))))

;iterative process
(define (factorial n)
    (fact-iter 1 1 n))
(define (fact-iter product counter max-count)
    (if (> counter max-counter)
        product
        (fact-iter (* counter product) (+ counter 1) max-count)))
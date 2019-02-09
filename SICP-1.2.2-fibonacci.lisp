(define (fib n)
    (fib-iter 1 0 n))
(define (fib-iter a b count)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))))

(fib 3)
(fib-iter 1 0 3)
(fib-iter 1 1 2)
(fib-iter 2 1 1)
(fib-iter 3 2 0)
2
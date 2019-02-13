; recursive process
(define (f n)
    (if (< n 3)
        n
        (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (- n 3)))))

; iterative process
(define (f n)
    (f-iter 2 1 0 n))
(define (f-iter a b c count)
    (if (< count 3)
        a
        (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))

(f 5)
(f-iter 2 1 0 5)
(f-iter 4 2 1 4)
(f-iter 11 4 2 3)
(f-iter 25 11 4 2)
25
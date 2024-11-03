#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f))) 
;first write the recursive function
(define (f-recurse n)
    (if (< n 3)
    n
    (+ (f-recurse (- n 1)) (*(f-recurse (- n 2)) 2) (*(f-recurse (- n 3)) 3)
    )))

(f-recurse 2)
(f-recurse 3)
(f-recurse 4)
(f-recurse 5)
(f-recurse 6)
;then write the iterative function
;need to keep track of 4 different states
;f(n) f(n+1) f(n+2) f(n+3)
(define (fib-iter n)
    (define f-iter(a b c count) 
      (if (= count n)
            a
            (f-iter (+ a (* b 2) (* c 3)) 
                    a
                    b
                    (+ count 1))))
    (if (< n 3)
        n
        (f-iter 2 1 0 2)
    )
)
;still having issues

(fib-iter 2)
(fib-iter 3)
(fib-iter 4)
(fib-iter 5)
(fib-iter 6)
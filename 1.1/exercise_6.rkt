#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (new-if predicate then-clause else-clause)
(cond (predicate then-clause)
(else else-clause)))
(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

(define (sqrt-iter guess x)
(new-if (good-enough? guess x)
guess
(sqrt-iter (improve guess x) x)))

(define (improve guess x)
(average guess (/ x guess)))

(define (average x y)
(/ (+ x y) 2))

(define (good-enough? guess x)
(< (abs (- (square guess) x )) 0.001))

(define (square x)
(* x x))

; the new if function is a conditional function, not a special form. this mean each parameters and expressions will be evaluated, is it does not stop when the if condition return true.
;this mean, the program will always try to iterate on the recursive part of the function and will never excute the good-enough? to terminate the loop

(sqrt-iter 1.0 0.4)
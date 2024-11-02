#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f))) 

(define (sqrt-iter guess x)
(if (good-enough? guess (improve guess x))
    guess
    (sqrt-iter (improve guess x) x)
))

(define (improve guess x)
(average guess (/ x guess)))

(define (average x y)
(/ (+ x y) 2))

(define (good-enough? previous-guess guess)
(< (abs (/ (- guess previous-guess) guess)) 0.001))
;this one essentially loops until the differences between the guess and the true number is less than 0.001
; but i can use 0.001% which will do better


(define (square x)
(* x x))

(exact->inexact (sqrt-iter 2.0 5000))
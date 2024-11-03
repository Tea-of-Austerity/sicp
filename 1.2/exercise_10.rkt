#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f))) 
(define (A x y)
(cond ((= y 0) 0)
      ((= x 0) (* 2 y))
      ((= y 1) 2)
      (else (A (- x 1) (A x (- y 1))))))

(A 1 10)
(A 2 4)
(A 3 3)

;(define (f n) (A 0 n)) this is 2n
;(define (g n) (A 1 n)) this is also 2n
;(define (g n) (A 2 n)) 2n^2 it looks like A0 (A1 (A2 n-1)) form, which A1(A2) is the nested form of n^2
;(define (k n) (* 5 n n)) this is 5n^2 
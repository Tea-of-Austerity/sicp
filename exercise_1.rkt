#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
10
12
8
3
6
(define a 3)

(define b (+ a 1))

(+ a b (* a b))
#;19   
(= a b)
#;false

(if (and (> b a)(< b (* a b)))
b
a)

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
         (+ a 1))
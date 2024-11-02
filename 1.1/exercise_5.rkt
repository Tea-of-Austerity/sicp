#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;(define (p) (p))
;(define (test x y)
;(if (= x 0) 0 y))
; the first function defines a special letter p which is equal to the express of p
; second test takes two argument, test if first on is equal to 0, if yes, then output 0, if not, output second argument
;(test 0 (p))
;under normal rule
;it evaluates to (if (= 0 0) 0 (p))
;since it still has the (p) object, it evaluates again to 
;(if (= 0 0) 0 (p)) this means it does not terminate
;for applicative rules
;(test 0 (p)) becomes
;(if (= 0 0) 0 (p)) and it begines evaluating the if cond
; which is true, so the first statment is excuted. 
; the output is 0, and (p) is never ran
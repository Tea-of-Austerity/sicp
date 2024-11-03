#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f))) 
;Function 1
;(define (+ a b)
;    (if (= a 0) b (inc (+ (dec a) b))))
;
;Function 2
;(define (+ a b)
;    (if (= a 0) b (+ (dec a) (inc b))))

;The first function is linear recursive, because the (dec a) happens and need to be evaluated at each step n where a new value is produced

;this is linear iteratvie because only a and b get updated each time and no additional state information need to be tracked
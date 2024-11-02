#reader(lib "htdp-beginner-reader.ss" "lang")((modname Exercise-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (three_square x y z)
    (cond ((and (< x y) (< x z)) (+ (* z z) (* y y)))
          ((and (< y x) (< y z)) (+ (* x x) (* z z)))
          ((and (< z x) (< z y)) (+ (* x x) (* y y)))
    )
)
          


(three_square 3 2 1) 
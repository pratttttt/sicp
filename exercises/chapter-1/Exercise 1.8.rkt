#lang planet neil/sicp

(define (square x) (* x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))


(define (cbrt-iter guess x prev-guess)
  (if (< (abs (- guess prev-guess)) 0.00001) guess
      (cbrt-iter (improve guess x) x guess)))

(define (cbrt-first x) (cbrt-iter 1.0 x 0.0))

(cbrt-first 0)
(cbrt-first 1)
(cbrt-first 27)
(cbrt-first 64)



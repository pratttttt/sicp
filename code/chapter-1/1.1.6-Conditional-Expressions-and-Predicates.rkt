#lang planet neil/sicp

; Conditional
(define (abs-cond x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

; Else clause
(define (abs-else x)
  (cond ((< x 0) (- x))
        (else x)))

; Equivalent if form
(define (abs-if x) (if (< x 0) (- x) x))

;; Logical composition operators

;; Greater than or equal test
(define (>= x y) (or (> x y) (= x y)))

;; Negated form
(define (>=-with-not x y) (not (< x y)))


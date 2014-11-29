#lang planet neil/sicp

(define (max a b) (if (> a b) a b))

(define (square a) (* a a))

(define (square-of-large a b c)
  (+ (square (max a b))
     (square (max (max a b) c))))

(square-of-large 2 3 4)


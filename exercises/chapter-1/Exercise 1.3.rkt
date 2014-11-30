#lang planet neil/sicp

(define (max a b) (if (> a b) a b))

(define (min a b) (if (< a b) a b))

(define (square a) (* a a))

(define (square-of-large a b c)
  (+ (square (max a b))
     (square (max (min a b) c))))

(square-of-large 2 3 4)

(square-of-large 4 3 2)

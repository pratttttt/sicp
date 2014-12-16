#lang planet neil/sicp

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)

(new-if (= 1 1) 0 5)

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(sqrt-iter 1.0 9)

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

#|
The problem with sqrt-iter is the same
that was encountered in the previous
question. The cond form fully evaluates
it's arguments and this means that the
sqrt-iter form is repeatedly reduced
but never yields a result since it
is defined in terms of itself.
|#


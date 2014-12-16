#lang planet neil/sicp

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess (sqrt-iter (improve guess x) x)))

(define (sqrt-first x) (sqrt-iter 1.0 x))

(sqrt-first 0.0001)
(sqrt-first 0.000001)

(sqrt-first 1000000000000000)


#|
The algorithm, as it stands now prevents
finding a root that is more precise than
the given threshold. It acts as a barrier
that bring the repeated averaging to halt
when the guess differs from the square of
the given number by a fator of threshold.
This means that for every number which
requires more precision than the current
tolerance value set by the thershold, we
get a less precise answer.
There is no way to improve the algorithm
by improving the threshold value since
no matter how low you keep it, there would
be numbers less than that value, whose squares
will exhibit the same problem.

The program also fails for large numbers since arithmetic
operations skims over the digit representations as the numbers grow
larger. The limited precision of digits in the floating point
implementation means that the required precision is never reached and
the program falls in to an infinite recursive loop.
|#


(define (sqrt-iter guess x prev-guess)
  (if (< (abs (- guess prev-guess)) 0.0001) guess
      (sqrt-iter (improve guess x) x guess)))

(define (sqrt x) (sqrt-iter 1.0 x 0.0))


(sqrt 0.0001)

(sqrt 0.000001)

(sqrt 10000000000000000000000000000000)

;; The new function works better in
;; approximating the square roots
;; since they are based on a mechanism
;; that is dependent only on the delta
;; between two steps not on any absolute
;; threshold.


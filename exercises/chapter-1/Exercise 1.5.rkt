#lang planet neil/sicp

(define (p) (p))

(define (test x y) (if (= x 0) 0 y))

(test 0 (p))


#|

;; Applicative Order
;; All operands are substituted
;; with their values.

(test 0 (p))

(test 0 ((p)))

(test 0 (((p))))

...leads to infinite recursion.

|#

#|

;; Normal Order
;; Fully expand and then reduce.

(test 0 (p))

(if (= 0 0) 0 (p))

(if true 0 (p))

0

|#

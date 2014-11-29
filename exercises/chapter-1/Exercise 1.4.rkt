#lang planet neil/sicp

;; a-plus-abs-b predicates 
;; on the operator that comes
;; in between a and b. If b is
;; a positive number that is,
;; if it is > 0 + is chosen,
;; otherwise - is chosen.

;; This is equivalent to adding
;; the absolute value of b to a.

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

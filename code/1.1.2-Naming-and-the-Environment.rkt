#lang planet neil/sicp

; Variable declaration
(define size 2)

size ;=> 2
(* 5 size) ;=> 10

; More define statements
(define pi 3.14159)
(define radius 10)
(* pi (* radius radius)) ;=> 314.159
(define circumference (* 2 pi radius))
circumference ;=> 62.8318

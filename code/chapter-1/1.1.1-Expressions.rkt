#lang planet neil/sicp

; Simple number
486 ;=> 486

; Compound Expressions / Combinations
(+ 137 349) ;=> 486
(- 1000 334) ;=> 666
(* 5 99) ;=> 495
(/ 10 5) ;=> 2
(+ 2.7 10) ;=> 12.7

; Advantages of Postfix notation
; 1. Any arbitrary number of arguments are accepted
(+ 21 35 12 7) ;=> 75
(* 25 4 12) ;=> 1200

; 2. Nesting
(+ (* 3 5) (- 10 6)) ;=> 19

; No limit to the nesting
(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6)) ;=> 57

; Pretty printing
(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)

      6))
;=> 57

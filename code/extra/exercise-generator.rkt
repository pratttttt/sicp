#lang racket

;Some Lisp goodness to generate the exercises
(define (gen n)
  (local ((define (acc counter)
            (cond
             [(= counter n) (cons counter empty)]
             [else (cons counter (acc (add1 counter)))]
             )))
    (acc 1)))

;; exercises-from : number number -> string
;; Creates the list of all chapters starting from [1,count] for given chapter
(define (exercises-from chapter count)
  (map (lambda (n)
         (string-append (number->string chapter) "."
                        (number->string n)))
       (gen count)))

(define exercise-count (vector 46 97 82 79 52))

(for ([chapter (in-naturals 1)]
               [exercises exercise-count])
           (map displayln (exercises-from chapter exercises)))

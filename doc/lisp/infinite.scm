
;; infinite.scm
;; infinite lists in scheme

(use-modules (ice-9 format))

(define nil '())

(define xs (cons 'a (cons 'b (cons 'c nil))))

(set-cdr! (cdr (cdr xs)) xs)

xs

;; can we print n items of xs
(define prin
  (lambda (xs n lim)
    (cond
     ((> n lim) #f)
     (#t (format #t "~a " (car xs))
	 (when (zero? (modulo n 39))
	   (format #t "~%"))
	 (prin (cdr xs) (+ n 1) lim)))))

(prin xs 1 10000)


(length '(A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C))

#|
we see this printed by SLY shows common lisp can handle infinite lists fine

(A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C
 A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C
 A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C
 A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C
 A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C
 A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C
 A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C
 A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C
 A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C
 A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C
 A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C
 A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C
 A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C A B C
 A B C A B ...)
|#



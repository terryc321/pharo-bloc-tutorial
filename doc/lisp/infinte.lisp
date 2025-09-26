
(setq xs (cons 'a (cons 'b (cons 'c nil))))

(setf (cdr (cdr (cdr xs))) xs)



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



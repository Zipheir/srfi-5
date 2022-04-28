(test "Vanilla let 0" 5 (let () 5))
(test "Vanilla let 1" 5 (let ((x 5)) x))
(test "Vanilla let 2" 8 (let ((x 5) (y 3)) (+ x y)))

(test "Vanilla named let 0"
      5
      (let ((x 6))
        (let lp ()
          (if (< x 6) x (begin (set! x (- x 1)) (lp))))))

(test "Vanilla named let 1"
      5
      (let lp ((x 6)) (if (< x 6) x (lp (- x 1)))))

(test "Vanilla named let 2"
      9
      (let lp ((x 6) (y 3))
        (if (< x y)
            (+ x y)
            (lp (- x 1) (+ y 1)))))

(test "Signature named let 0"
      5
      (let ((x 6))
        (let (lp ())
          (if (< x 6) x (begin (set! x (- x 1)) (lp))))))

(test "Signature named let 1"
      5
      (let (lp (x 6)) (if (< x 6) x (lp (- x 1)))))

(test "Signature named let 2"
      9
      (let (lp (x 6) (y 3))
        (if (< x y)
            (+ x y)
            (lp (- x 1) (+ y 1)))))

; The SRFI's formal syntax suggests this should work.
;(test "Vanilla named let with rest arg 0"
;      3
;      (let lp ( . (rest 1 2 3))
;        (if (null? (cdr rest))
;	    (car rest)
;	    (apply lp (cdr rest)))))

(test "Vanilla named let with rest arg 1"
      11
      (let lp ((x 5) . (rest 1 2 3))
        (apply + x rest)))

(test "Vanilla named let with rest arg 2"
      11
      (let lp ((x 5) . (rest 1 2 3))
        (if (null? rest)
            x
            (apply lp (+ x (car rest)) (cdr rest)))))

(test "Signature named let with rest arg 0"
      3
      (let (lp . (rest 1 2 3))
        (if (null? (cdr rest))
	    (car rest)
	    (apply lp (cdr rest)))))

(test "Signature named let with rest arg 1"
      11
      (let (lp (x 5) . (rest 1 2 3))
        (apply + x rest)))

(test "Signature named let with rest arg 2"
      11
      (let (lp (x 5) . (rest 1 2 3))
        (if (null? rest)
            x
            (apply lp (+ x (car rest)) (cdr rest)))))

(test-exit)

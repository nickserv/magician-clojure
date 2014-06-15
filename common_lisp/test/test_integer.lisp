(in-package :magician-test)

(def-suite integer)
(in-suite integer)

(test factors
      "should calculate its factors"
      (is (equalp '(1) (magician:factors 1)))
      (is (equalp '(1 2 3 6) (magician:factors 6)))
      (is (equalp '(1 7) (magician:factors 7)))

      (is (equalp '(1) (magician:factors -1)))
      (is (equalp '(1 2 3 6) (magician:factors -6)))
      (is (equalp '(1 7) (magician:factors -7))))
;expect { 0.factors }.to raise_error ArgumentError

(test factorial
      "should calculate its factorial"
      (is (= 1 (magician:factorial 0)))
      (is (= 1 (magician:factorial 1)))
      (is-false (magician:factorial -1))
      (is (= 120 (magician:factorial 5)))
      (is (= 3628800 (magician:factorial 10))))

(test is-prime-p
      "should determine if it is prime"
      (is-false (magician:is-prime-p 0))
      (is-false (magician:is-prime-p 1))
      (is-true (magician:is-prime-p 2))
      (is-true (magician:is-prime-p 5))
      (is-false (magician:is-prime-p 6))

      (is-false (magician:is-prime-p -1))
      (is-false (magician:is-prime-p -2))
      (is-false (magician:is-prime-p -5))
      (is-false (magician:is-prime-p -6)))

(run! 'integer)

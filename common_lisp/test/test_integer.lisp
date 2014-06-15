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

(run! 'integer)

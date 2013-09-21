(in-package :magician-test)

(def-suite integer)
(in-suite integer)

;it 'should calculate its factors' do
(test factors
      (is (equalp '(1) (magician:factors 1)))
      (is (equalp '(1 2 3 6) (magician:factors 6)))
      (is (equalp '(1 7) (magician:factors 7)))

      (is (equalp '(1) (magician:factors -1)))
      (is (equalp '(1 2 3 6) (magician:factors -6)))
      (is (equalp '(1 7) (magician:factors -7))))
;expect { 0.factors }.to raise_error ArgumentError

;it 'should calculate its factorial' do
(test factorial
      (is (= 1 (magician:factorial 0)))
      (is (= 1 (magician:factorial 1)))
      (is-false (magician:factorial -1))
      (is (= 120 (magician:factorial 5)))
      (is (= 3628800 (magician:factorial 10))))

;it 'should determine if it is prime' do
(test is-prime-p
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

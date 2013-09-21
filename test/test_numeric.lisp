(in-package :magician-test)

(def-suite numeric)
(in-suite numeric)

;it 'should determine if it is divisible by another number' do
(test is-divisible-p
      (is-true (magician:is-divisible-p 0 5))
      (is-false (magician:is-divisible-p 1 6))
      (is-true (magician:is-divisible-p -1 1))
      (is-true (magician:is-divisible-p 12 6))
      (is-false (magician:is-divisible-p 6 5))
      (is-false (magician:is-divisible-p 10 0))
      (is-true (magician:is-divisible-p 9 1.5))
      (is-true (magician:is-divisible-p 9.0 1.5))
      (is-true (magician:is-divisible-p 10.5 1.5))
      (is-false (magician:is-divisible-p 10.5 1)))

;it 'should convert angles to radians' do
(test degrees->radians
      (is (= 0 (magician:degrees->radians 0)))
      (is (= (/ pi 2) (magician:degrees->radians 90)))
      (is (= pi (magician:degrees->radians 180)))
      (is (= (* (/ 3 2) pi) (magician:degrees->radians 270)))
      (is (= (* 2 pi) (magician:degrees->radians 360)))
      (is (= (- (/ pi 2)) (magician:degrees->radians -90))))

;it 'should convert angles to degrees' do
(test radians->degrees
      (is (= 0 (magician:radians->degrees 0)))
      (is (= 90 (magician:radians->degrees (/ pi 2))))
      (is (= 180 (magician:radians->degrees pi)))
      (is (= 270 (magician:radians->degrees (* (/ 3 2) pi))))
      (is (= 360 (magician:radians->degrees (* 2 pi))))
      (is (= -90 (magician:radians->degrees (- (/ pi 2))))))

(run! 'numeric)

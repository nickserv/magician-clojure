(ns magician.numeric-test
  (:require [clojure.test :refer :all]
            [magician.numeric :refer :all]))

(deftest divisible?-test
  "should determine if it is divisible by another number"
  (is (divisible? 0 5))
  (is (not (divisible? 1 6)))
  (is (divisible? -1 1))
  (is (divisible? 12 6))
  (is (not (divisible? 6 5)))
  (is (not (divisible? 10 0)))
  (is (divisible? 9 1.5))
  (is (divisible? 9.0 1.5))
  (is (divisible? 10.5 1.5))
  (is (not (divisible? 10.5 1))))

(deftest degrees->radians-test
  "should convert angles to radians"
  (is (= 0.0 (degrees->radians 0)))
  (is (= (/ Math/PI 2) (degrees->radians 90)))
  (is (= Math/PI (degrees->radians 180)))
  (is (= (* (/ 3 2) Math/PI) (degrees->radians 270)))
  (is (= (* 2 Math/PI) (degrees->radians 360)))
  (is (= (- (/ Math/PI 2)) (degrees->radians -90))))

(deftest radians->degrees-test
  "should convert angles to degrees"
  (is (= 0.0 (radians->degrees 0)))
  (is (= 90.0 (radians->degrees (/ Math/PI 2))))
  (is (= 180.0 (radians->degrees Math/PI)))
  (is (= 270.0 (radians->degrees (* (/ 3 2) Math/PI))))
  (is (= 360.0 (radians->degrees (* 2 Math/PI))))
  (is (= -90.0 (radians->degrees (- (/ Math/PI 2))))))

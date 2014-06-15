(ns magician.integer-test
  (:require [clojure.test :refer :all]
            [magician.integer :refer :all]))

(deftest factorial-test
  "should calculate its factorial"
  (is (= 1 (factorial 0)))
  (is (= 1 (factorial 1)))
  (is (not (factorial -1)))
  (is (= 120 (factorial 5)))
  (is (= 3628800 (factorial 10))))

(deftest prime?-test
  "should determine if it is prime"
  (is (not (prime? 0)))
  (is (not (prime? 1)))
  (is (prime? 2))
  (is (prime? 5))
  (is (not (prime? 6)))

  (is (not (prime? -1)))
  (is (not (prime? -2)))
  (is (not (prime? -5)))
  (is (not (prime? -6))))

(ns magician.integer-test
  (:require [clojure.test :refer :all]
            [magician.integer :refer :all]))

(deftest factors-test
  (is (= '(1) (factors 1)))
  (is (= '(1 2 3 6) (factors 6)))
  (is (= '(1 7) (factors 7)))

  (is (= '(1) (factors -1)))
  (is (= '(1 2 3 6) (factors -6)))
  (is (= '(1 7) (factors -7))))
;expect { 0.factors }.to raise_error ArgumentError

(deftest factorial-test
  (is (= 1 (factorial 0)))
  (is (= 1 (factorial 1)))
  (is (not (factorial -1)))
  (is (= 120 (factorial 5)))
  (is (= 3628800 (factorial 10))))

(deftest prime?-test
  (is (not (prime? 0)))
  (is (not (prime? 1)))
  (is (prime? 2))
  (is (prime? 5))
  (is (not (prime? 6)))

  (is (not (prime? -1)))
  (is (not (prime? -2)))
  (is (not (prime? -5)))
  (is (not (prime? -6))))

(ns magician.list-test
  (:require [clojure.test :refer :all]
            [magician.list :refer :all]))

(deftest numerics-test
  (is (= '(1 2.0 -3) (numerics '(1 2.0 -3))))
  (is (= () (numerics '("string"))))
  (is (= () (numerics ())))
  (is (= '(1 3) (numerics '(1 "two" 3 "four")))))

(ns magician.core-test
  (:require [clojure.test :refer :all]
            [magician.core :refer :all]))

(deftest palindrome?-test
  (is (palindrome? ""))
  (is (palindrome? "a"))
  (is (palindrome? "deed"))
  (is (palindrome? "racecar"))

  (is (not (palindrome? "cats")))
  (is (not (palindrome? "no"))))

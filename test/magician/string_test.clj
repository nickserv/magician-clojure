(ns magician.string-test
  (:require [clojure.test :refer :all]
            [magician.string :refer :all]))

(deftest palindrome?-test
  (is (palindrome? ""))
  (is (palindrome? "a"))
  (is (palindrome? "deed"))
  (is (palindrome? "racecar"))

  (is (not (palindrome? "cats")))
  (is (not (palindrome? "no"))))

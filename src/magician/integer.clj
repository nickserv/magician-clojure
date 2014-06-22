;;;; Magician's extensions to the Integer class.

(ns magician.integer
  (:require [clojure.math.numeric-tower]
            [magician.numeric]))

(defn factors
  "Gets a list of factors of an integer.

  The list will be in order, including 1 and the integer itself. If the integer
  is negative, it will be treated as if it were positive (so the results will
  never contain negative integers)."
  ;@raise [ArgumentError] if the integer is 0, since 0 has infinite factors
  [n]
  (let [maximum (Math/abs n)]
    (conj
      (set
        (filter
          #(magician.numeric/divisible? maximum %)
          (range 1 (+ (/ maximum 2) 1))))
      maximum)))
;raise ArgumentError, '0 has infinite factors, so the Array of its factors cannot be computed in finite time' if zero?

(defn factorial
  "Gets the factorial of an integer.

  This is equivalent to the product of all integers from 1 to the integer
  (inclusive). When the integer is 0, it is equivalent to 1."
  [n]
  (cond
    (< n 0) false
    (= n 0) 1
    (> n 0) (reduce * (range 1 (inc n)))))

(defn prime?
  "Returns true if an integer is prime.

  An integer is prime if it is not divisible by any integer between 1 and the
  integer itself, exclusive. 0 and 1 are not prime numbers, though 2 is prime.
  Negative numbers are never considered prime in this implementation."
  [n]
  (if (<= n 1)
    false
    (not-any? (fn [i] (= (mod n i) 0))
      (range 2 (clojure.math.numeric-tower/sqrt n)))))

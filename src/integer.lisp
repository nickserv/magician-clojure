;;;; Magician's extensions to the Integer class.

(in-package #:magician)

(defun factors (n)
  "Gets a list of factors of an integer.

  The list will be in order, including 1 and the integer itself. If the integer
  is negative, it will be treated as if it were positive (so the results will
  never contain negative integers)."
  ;@raise [ArgumentError] if the integer is 0, since 0 has infinite factors
  (append
    (loop for i from 1 to (/ (abs n) 2)
          when (= (mod (abs n) i) 0) collect i)
    (list (abs n))))
;raise ArgumentError, '0 has infinite factors, so the Array of its factors cannot be computed in finite time' if zero?

(defun factorial (n)
  "Gets the factorial of an integer.

  This is equivalent to the product of all integers from 1 to the integer
  (inclusive). When the integer is 0, it is equivalent to 1."
  (cond
    ((< n 0) nil)
    ((= n 0) 1)
    ((> n 0) (apply '* (loop for i from 1 to n collect i)))))

(defun is-prime-p (n)
  "Returns true if an integer is prime.

  An integer is prime if it is not divisible by any integer between 1 and the
  integer itself, exclusive. 0 and 1 are not prime numbers, though 2 is prime.
  Negative numbers are never considered prime in this implementation."
  (if (<= n 1)
    nil
    (notany (lambda (i) (= (mod n i) 0))
            (loop for i from 2 to (sqrt n) collect i))))

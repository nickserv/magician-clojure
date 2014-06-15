;;;;  Magician's extensions to the Numeric class (affects Integers and Floats).

(in-package #:magician)

(defun is-divisible-p (x y)
  "Returns true if for numbers x and y, x is evenly divisible by y.

  If y is equal to 0, it returns false, since numbers cannot be divided by 0 in
  real number arithmetic."
  (if (= y 0)
    nil
    (= 0 (mod x y))))

(defun degrees->radians (n)
  "Converts a number from degrees to radians."
  (* n (/ pi 180)))

(defun radians->degrees (n)
  "Converts a number from radians to degrees."
  (* n (/ 180 pi)))

;;;;  Magician's extensions to the Numeric class (affects Integers and Floats).

(in-package #:magician)

; Returns true if the number is evenly divisible by n. If n is equal to 0, it
; returns false, since numbers cannot be divided by 0 in real number
; arithmetic.
;
; @param [Numeric] n the number that this number (self) should be divided by
;
; @return [Boolean] true if the number is evenly divisible by n
(defun is-divisible-p (x y)
  (if (= y 0)
    nil
    (= 0 (mod x y))))

; Converts the number from degrees to radians and returns the result.
;
; @return [Numeric] the number in radians
(defun degrees->radians (n)
  (* n (/ pi 180)))

; Converts the number from radians to degrees and returns the result.
;
; @return [Numeric] the number in degrees
(defun radians->degrees (n)
  (* n (/ 180 pi)))

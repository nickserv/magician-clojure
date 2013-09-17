;;;; Magician's extensions to the Integer class.

(in-package #:magician)

; Gets all of the factors of the current integer. If the current integer is
; negative, it will be treated as if it were positive (so the results will
; never contain negative integers).
;
; @return [Array] an array of all of the factors of the current integer (in
;   order, including 1 and the integer itself)
;
; @raise [ArgumentError] if the integer is 0, since 0 has infinite factors
(defun factors (n)
  (append
    (loop for i from 1 to (/ (abs n) 2)
          when (= (mod (abs n) i) 0) collect i)
    (list (abs n))))
;raise ArgumentError, '0 has infinite factors, so the Array of its factors cannot be computed in finite time' if zero?

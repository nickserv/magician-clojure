;;;; Magician's extensions to the String class.

(in-package #:magician)

; Returns true if the string is a palindrome (meaning it is the same forward
; and backward).
;
; @return [Boolean] true if the string is a palindrome
(defun is-palindrome-p (str)
  (string= str (reverse str)))

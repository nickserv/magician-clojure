;;;; Magician's extensions to the String class.

(in-package #:magician)

(defun is-palindrome-p (str)
  "Returns true if a string is a palindrome.

  A palindrome string is the same forward and backward."
  (string= str (reverse str)))

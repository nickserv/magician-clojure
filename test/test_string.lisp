(in-package :magician-test)

(def-suite string)
(in-suite string)

; should determine if it is a palindrome
(test is-palindrome-p
      (is-true (magician:is-palindrome-p ""))
      (is-true (magician:is-palindrome-p "a"))
      (is-true (magician:is-palindrome-p "deed"))
      (is-true (magician:is-palindrome-p "racecar"))

      (is-false (magician:is-palindrome-p "cats"))
      (is-false (magician:is-palindrome-p "no")))

(run! 'string)

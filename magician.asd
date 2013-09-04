;;;; magician.asd

(asdf:defsystem #:magician
  :serial t
  :description "A suite of handy functions for doing calculations in Common Lisp."
  :author "Nicolas McCurdy <thenickperson@gmail.com>"
  :license "MIT"
  :components ((:file "package")
               (:file "magician")))


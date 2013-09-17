(asdf:defsystem #:magician
  :serial t
  :description "A suite of handy functions for doing calculations in Common Lisp."
  :version "0.3.1"
  :author "Nicolas McCurdy <thenickperson@gmail.com>"
  :license "MIT"
  :depends-on (#:fiveam)
  :components
  ((:module src
            :serial t
            :components
            ((:file "package")
             (:file "magician")))
   (:module test
            :serial t
            :components
            ((:file "test_magician")))))


(defsystem #:magician
           :serial t
           :description "A suite of handy functions for doing calculations in Common Lisp."
           :version "0.3.1"
           :author "Nicolas McCurdy <thenickperson@gmail.com>"
           :license "MIT"
           :depends-on (#:fiveam)
           :pathname "src/"
           :components
           ((:file "package")))

(defsystem #:magician-test
           :serial t
           :description "The test suite for Magician."
           :depends-on (#:magician)
           :pathname "test/"
           :components
           ((:file "helper")))

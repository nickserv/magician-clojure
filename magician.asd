;;;; magician.asd

(asdf:defsystem #:magician
  :serial t
  :description "A suite of handy functions for doing calculations in Common Lisp."
  :version "0.3.1"
  :author "Nicolas McCurdy <thenickperson@gmail.com>"
  :license "MIT"
  :components
  ((:module src
            :serial t
            :components
            ((:file "package")
             (:file "magician")))))


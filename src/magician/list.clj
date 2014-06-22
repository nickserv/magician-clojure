;;;; Magician's extensions to the Array class.

(ns magician.list
  (:require [magician.list]))

(defn numerics
  "Returns all numbers from the array, in order. This is done by choosing all
  objects from the array that are instances of Numeric or one of its
  subclasses.

  @return [Array] a new array containing only Numerics"
  [xs]
  (filter number? xs))

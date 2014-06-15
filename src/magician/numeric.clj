(ns magician.numeric)

;;;;  Magician's extensions to the Numeric class (affects Integers and Floats).

(defn divisible?
  "Returns true if for numbers x and y, x is evenly divisible by y.

  If y is equal to 0, it returns false, since numbers cannot be divided by 0 in
  real number arithmetic."
  [x y]
  (if (= y 0)
    false
    (zero? (mod x y))))

(defn degrees->radians
  "Converts a number from degrees to radians."
  [n]
  (* n (/ Math/PI 180)))

(defn radians->degrees
  "Converts a number from radians to degrees."
  [n]
  (* n (/ 180 Math/PI)))

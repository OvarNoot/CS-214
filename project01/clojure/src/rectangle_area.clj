;;; it calculates the area of rectangle
;;;
;;; get swidth and legnth of rectangle
;;; outputs the area of rectangle
;;;
;;; Haim Hong
;;; Jan 14 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns rectangle_area)

(defn rectangleArea [itsWidth itsLength]
  (* itsWidth itsLength)
)

(defn -main []
  (println "\nTo compute the area of a rectangle,") ;;; prints string 
  (print   " enter its width: ") (flush)

  (let
   [width (read)] ;;; gets the input of width
    (assert (>= width 0) "-main: width must be positive") ;;; check if the width is not negative
    (print   " enter its length: ") (flush)
    (let
     [length (read)] ;;; gets the input of legnth
      (assert (>= length 0) "-main: length must be positive") ;;; check if the length is not negative
      (printf "\nThe area is %f\n\n" (rectangleArea width length)) ;; prints out the result with new line 

      (print "\nThe area is ") ;;; prints string with new line
      (print (rectangleArea width length)) ;;; prints out the radius using the function
      (print "\n\n") ;;; prints new line

      (printf "\nThe area is %.15f\n\n" (rectangleArea width length)) ;;; to 15th decimal places
      ))
  )
;;;; driver for function letter_Grades

;;;; gets grades and decide letter grades for it
;;;; output the letter grade from the input

;;;; Haim Hong
;;;; Jan 27 2022
;;;;;;;;;;;;;;;;
(ns letter_grades)

(defn letterGrades [grade]
  (cond
    (= (quot grade 10) 10) "A" ;;;; after diving and it equals to the number then it outputs the right letter grade for it
    (= (quot grade 10) 9) "A"
    (= (quot grade 10) 8) "B"
    (= (quot grade 10) 7) "C"
    (= (quot grade 10) 6) "D"
    :else       "F"))  ;;;; when nothing matches then F

(defn -main []
    (loop [x 100] ;; looping until it goes below 50
          (when  (> x 50)
            (print "\nTesting grade: " x) (flush) ;; prints out the grade its testing for
            (println "\n" (letterGrades x)) ;; prints out the result
            (recur(- x 3))))     ; recursion to go back to loop
)


;;;; outputs the factorian of n from user input
;;;;
;;;; Haim Hong
;;;; Date: Feb 4 2022
;;;;
;;;;
(ns n_factorial)

 (defn factorial [stop start answer]
   (if (> start stop) ;; if start is lower then 
     (do ;; do the funciton and recall function by recur
       (printf "The factorial of %s is %s" stop answer))) ;;; when it reached stop then prints out the result

   (if (<= start stop) ;; if not reached the stop yet
     (do
       (recur stop (+ start 1) (* answer start))))) ;;; recur by incrementing start by 1 and multiplying answer by start

(defn -main []
  (println "Enter the number to compute its factorial")
  (let
   [n (int (read))] ;; gets inputs for start stop increment)
    (factorial n 2 1) ;; calling functions for it to output the result
    (println)
    )
  )
;;;
;;; Gets the size of the array 
;;; Gets values of array in readArry funciton
;;; prints out the values that contained in array
;;;
;;; Haim Hong
;;; Feb 24
;;;;;;;;;;;;;;;;;;



(ns array_processing)

;; Reads values from user
;; Stores the values into the array
;; Gives out the array for it to be stored to other array
(defn readArray [aVec size]
  (if (vector? aVec) ;;; check if its vector
    (if (> size 0) ;; check if size is valid for it to recur
      (do 
        (println "Enter your value: ") ;; outputs string
        (recur (conj aVec (read)) (- size 1)) ;; recur appending values into array
        )
      aVec
    )
  )
)
;; prints out the values from array that is stored
;; gets the filled array
;; outputs the values
(defn printArray [aVec]
  (println "\nPrinting Arrays")
  (doseq [a aVec] (println a) ) ;; prints out value of array in seperate line
  )


(defn -main []
  (println "Enter the size: ")
  (let 
   [size (Integer/parseInt (read-line))
    emptyVec []
    printa (readArray emptyVec size) ;; gets the result into printa of reading arrays
    printarray (printArray printa)]) ;; calls printarray to print it out
  )
;;;; logTable.clj displays a table of logarithms.
;;;;
;;;; Input: start, stop and increment, three numbers.
;;;; Precondition: start < stop && increment > 0.
;;;; Output: A table of logarithms from start to stop,
;;;;          with interval of increment.
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Haim Hong
;;;; Date: Feb 3 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns logTable)                                 ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; displayLogTable() recursively generates the log-table.
;;; Receive: start the first value for the table;
;;;          stop, the last  value for the table;
;;;           step, the step value for the table;
;;; Precondition: start < stop && increment > 0.
;;; Output: The table of logs from start to stop, by step.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; direct-recursive version

; replace this line with the definition of displayLogTable().


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main is a 'driver' for the displayLogTable() functions.
;;; Input: start, stop and increment.
;;; Output: The table of logarithms 
;;;          from start to stop by increment
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn displayLogTable [start stop increment]
  (if (<= start stop) ;; if start is lower then 
    (do ;; do the funciton and recall function by recur
      (printf "\nThe logarithms of %s is %.15f" start (Math/log10 start)) ;; outputs the result Log of start
       (recur (+ start increment) stop increment)) ;; increment start by increment while recur to do a recursion
    )
)

(defn displayLogTable2 [start stop increment]
  (loop [i start] ; make i replacement of start for loop
    (when (<= i stop) ; when i is lower of equal to the loop
      (printf "\nThe logarithms of %s is %.15f" i (Math/log10 i))
      (recur (+ i increment)) ; incrementing i by increment while recalling function
      )))

(defn displayLogTable3 [start stop increment]
    (if (<= start stop)                     ; if start <= stop:
      (do                                      ; do these two things:
        (printf "The logarithm of %f is %f\n"  ; - print one line
                start (Math/log10 start))
        (recur (+ start increment) stop increment)       ; - recurse, start+=step
        ))
  )

(defn -main []
 (println "To display a table of logarithms,")
 (print " enter the start, stop, and increment values: ") (flush)
 (let
    [ start (double (read)) ;; gets inputs for start stop increment
      stop (double (read))
      increment (double (read))
    ] 
    (println) 
    (displayLogTable start stop increment) ;; calling functions
    (println)
    (displayLogTable2 start stop increment) 
    (println)
    (displayLogTable3 start stop increment) 
    (println)
 )
)


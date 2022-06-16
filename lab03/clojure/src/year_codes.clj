;;;; year_codes.clj is a driver for function yearCode.
;;;;
;;;; Input: An academic year, one of {freshman, sophomore,
;;;;                                  junior, senior}.
;;;; Output: The code for that academic year
;;;;         (1, 2, 3, 4 for valid entries; 
;;;;          0 for invalid entries).
;;;;
;;;; Usage: clojure -m year_codes
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Haim Hong
;;;; Date: Jan 27 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns year_codes)                    ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; yearCode() returns the code for a given academic year.
;;; Receive: year, a string.
;;; Precondition: year is one of 
;;;   {freshman, sophomore, junior or senior}.
;;; Return: the integer code corresponding to year.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Replace this line with the definition of function yearCode().
(defn yearCode [year]
  (if (= year "freshman")
    1
    (if (= year "sophomore")
    2
      (if (= year "junior")
        3
        (if (= year "senior")
          4
          0))))
  )

(defn yearCode2 [year]
  (cond
    (= year "freshman")  1
    (= year "sophomore") 2
    (= year "junior")    3
    (= year "senior")    4
    :else                0))

(defn yearCode3 [year]
  (case year
    "freshman"  1
    "sophomore" 2
    "junior"    3
    "senior"    4
    0 ; default
    ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main() test-drives our yearCode() function.
;;; Input: year: one of {freshman, sophomore, junior, or senior}.
;;; Output: the code corresponding to year.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (print "\nEnter your academic year: ") (flush)
  (let
   [year (read-line)]                ; read year (a string)
    (println (yearCode year) "\n")      ; display its code
    (println (yearCode2 year) "\n")
    (println (yearCode3 year) "\n")

    ))

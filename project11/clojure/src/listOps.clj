;; listOps.clj is a Clojure "module" for list operations.
;;
;; Completed by: Haim Hong
;; Date: March 31 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; maxOf2() finds the maximum of two values.  
;; Receive: val1, val2, two values.  
;; PRE: val1 and val2 can be compared using >.
;; Return: the maximum of val1 and val2. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn maxOf2 [val1 val2]
  (if (> val1 val2)      ; if val1 > val2
    val1                 ;   return val1
    val2                 ; else return val2
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; listMax() finds the maximum value in a list.
;; Receive: aList, a list of values.    
;; PRE: aList is a list 
;;      values in aList can be compared using >.
;; Return: the maximum value in aList.         
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn listMax [aList]
  (if (list? aList)
    (if (empty? aList)
      nil
      (let [firstVal (first aList)]
        (if (= (count aList) 1)
          firstVal
          (maxOf2 firstVal (listMax (rest aList))))))
    nil))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Search() finds the maximum value in a list.
;; Receive: aList, a list of values, aValue    
;; PRE: aList is a list 
;; Return: the index of the list, if its empty or not there returns -1      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn search [aList aVal counter] 
  (if (list? aList)
    (if (empty? aList)
      -1
        (if (= (first aList) aVal)
          counter
          (search (rest aList) aVal (+ counter 1))))
  -1)
)


;; using Clojure's built-in max and apply functions
(defn listMax2 [aList]
  (if (list? aList)       ; if aList is a list:
    (if (empty? aList)    ;  if aList is empty:
      nil                 ;    nil
      (apply max aList)   ;  else apply max to 
)                     ;        the items in aList
    ))


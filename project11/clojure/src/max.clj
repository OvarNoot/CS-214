;; max.clj tests a function to search a list for its maximum value.
;;
;; Output: three lists, and 
;;          the results of calling a maxList() function on them.
;;
;; Completed by: Haim Hong
;; Date: March 31 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns max)

(load "listOps")                      ; load module

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Function -main tests function listMax(). 
;; Output: the results of testing listMax() on various lists.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
   [list1 '(99 88 77 66 55)        ; max is first value
    list2 (list 55 66 77 88 99)    ; max is last value
    list3 (list 55 77 99 88 66)    ; max is middle value
    emptyList '()                  ; list is empty
    list4 (list 44 55 66 77 88)
    ]

    (println)
    (println "list1: " list1)        ; print list1,
    (println "list2: " list2)        ;   list2,
    (println "list3: " list3)        ;   list3,
    (println "empty: " emptyList)    ;   list3,
    (println)                        ;   and their maxima
    (println "The max value in list1 is: " (listMax list1))
    (println "The max value in list2 is: " (listMax list2))
    (println "The max value in list3 is: " (listMax list3))
    (println)
    (println "The max of an empty list is: " (listMax emptyList))
    (println)
    ;; testing listMax2 if its behaving the same
    (println "The max value in list1 is: " (listMax2 list1))
    (println "The max value in list2 is: " (listMax2 list2))
    (println "The max value in list3 is: " (listMax2 list3))
    (println)
    
    (println "The Index of 99 in list1 is: " (search list1 99 0))
    (println "The Index of 99 in list2 is: " (search list2 99 0))
    (println "The Index of 99 in list3 is: " (search list3 99 0))
    (println "The Index of 99 in list4 is: " (search list4 99 0))
    (println "The Index of 99 in emptyList is: " (search emptyList 99 0))
    (println))
)


;;;; Funcitonal Programming Practice
;;;; Haim Hong
;;;; Date Feb 11
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(ns functional_prog)

;;;;;;
;;;; my-reverse reverses the top elements but no the sublists
;;;; takes inputs of sequence
;;;; outputs the seqeuence of reversed
;;;;;;
(defn my-reverse [seq]
  (if (empty? seq) ; check if its emtpy
    seq ;; return seq
    (cons (last seq) (my-reverse (butlast seq)))) ;; recur to reverse 
  )

;;;;;;
;;;; super reverse reverses all the sublists that goes beyond my-reverse
;;;; takes inputs of sequence
;;;; outputs the fully reversed sequence
;;;;;;
(defn super-reverse [seq]
  (if (empty? seq) ; check if its empty
    seq
    (if (list? (last seq)) ; ehck if its empty
      (cons (super-reverse (last seq)) (super-reverse (butlast seq))) ; then sort that list recursively 
      (cons (last seq) (super-reverse (butlast seq))) ; and sort the rest recursively
    )
  )
)


;;;;;
;;; member? checks if the target is in the sequence
;;; input gets the target and sequence
;;; outputs true if the target is in the list else false by reaching empty list
;;;;;
(defn member? [target seq]
  (if (list? seq) ;check if its list
    (if (empty? seq) ;check if empty
      false ;then return false
      (if (= target (first seq)) ;check if it equals to target 
        true ;then regturn true
        (recur target (rest seq)) ;if not true just recur again until it becomes empty or found
      )
    )
  )
)
;;;;;;
;;;; subsequence returns 
;;;; Gets inputs of List, i, and n 
;;;; outputs the list starting from i and how many n has so if its 4 then prints until 4th done
;;;;;;
(defn subsequence [list i n & answer]
  (if (not-empty list) ; check if list is empty
    (if (= i 0) ; check if i is 0
      (if (= n 0) ; check if n is 0
        (my-reverse answer)
        (recur (rest list) i (- n 1) (conj answer (first list))); recurs to put the nth length of list into answer
      )
      (recur (rest list) (- i 1) n answer) ; remove until i becomes 0 then to start appending to it
    )
  )
)


(defn -main []
  (println "Testing my-reverse: ") ;; reverse without touching sublists
  (print "Testing (my-reverse '(a b (c d) (e (f g)))): ")
  (println (my-reverse '(a b (c d) (e (f g)))))

  (println "Testing super-reverse: ") ;; should fully reverse
  (print "Testing (super-reverse '(a b (c d) (e (f g)))): ")
  (println (super-reverse '(a b (c d) (e (f g)))))

  (println "Testing memeber?: ")
  ;;; memeber that works and shoudl give true
  (print "(member? '(1 2) '((1 2) 3 (4 (5 6)))) is ")
  (println (member? '(1 2) '((1 2) 3 (4 (5 6)))))
  (print "(member? 3 '((1 2) 3 (4 (5 6))))) is ")
  (println (member? 3 '((1 2) 3 (4 (5 6)))))
  (print "(member? '(4 (5 6)) '((1 2) 3 (4 (5 6)))) is ")
  (println (member? '(4 (5 6)) '((1 2) 3 (4 (5 6)))))

  (println "Testing memeber? for false: ")
  ;;; member that does not work and should give false
  (print "(member? 1 '((1 2) 3 (4 (5 6)))) is ")
  (println (member? 1 '((1 2) 3 (4 (5 6)))))
  (print "(member? 2 '((1 2) 3 (4 (5 6)))) is ")
  (println (member? 2 '((1 2) 3 (4 (5 6)))))
  (print "(member? 4 '((1 2) 3 (4 (5 6)))) is ")
  (println (member? 4 '((1 2) 3 (4 (5 6)))))
  
  (println "Testing subsequence: ")
  ;; tests for nil that goes out of range index or empty lists
  (print "Testing (subsequence '() 1 2): ")
  (println (subsequence '() 1 2))
  (print "Testing (subsequence '(1 2 (3 4) (5 (6 7))) 7 2): ")
  (println (subsequence '(1 2 (3 4) (5 (6 7))) 7 2))
  (print "Testing (subsequence '(1 2 (3 4) (5 (6 7))) 1 7): ")
  (println (subsequence '(1 2 (3 4) (5 (6 7))) 1 7))
  ;; test that should work in range index and not empty lists
  (print "Testing (subsequence '(1 2 (3 4) (5 (6 7))) 1 2): ")
  (println (subsequence '(1 2 (3 4) (5 (6 7))) 1 2))
  (print "Testing (subsequence '(1 2 3 4 5 6 7) 2 4): ")
  (println (subsequence '(1 2 3 4 5 6 7) 2 4))
  )
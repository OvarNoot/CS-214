;;;
;;; Gets a, b, and c
;;; Outputs the roots of quadratic equation
;;;
;;; Haim Hong
;;; Feb 17
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(ns quadratic)
;; computs roots of quadratic equation

(defn quadratic_eq [a b c] ;; the function
  (if (not= a 0) ;; check if a is not zero
    (do ;; if passed do this
      (let [args (- (Math/pow b 2) (* 4 c a))] ;; decalre varible for args to computer to be used for squareroot of it
        (if (>= args 0)
          (do ;; if passed than do these by computing roots and vectoring into one
            (let [root1 (/ (- (+ (Math/sqrt args)) b) (* 2 a)) root2 (/ (- (- (Math/sqrt args)) b) (* 2 a))] ;;compute each roots and put into each variable
              (vector root1 root2) ;; vector htem into one
            )
          )
          (do ;; if arg is negative than output these and make roots 0
            (let [root1 0 root2 0] ;; declare these roots 
              (vector root1 root2) ;; make them into one
              (println "*** quadraticRoots(): b^2 - 4ac is negative!"))))) ;; output that it is negative
    )
    (do (let [root1 0 root2 0] ;; decalre these roots
          (vector root1 root2)  ;; make them into one
          (println "*** QuadraticRoots(): a is zero!")) ;; if not passed output that is zero
    )
  )
)

;; (-b + Sqrt (args)) / (2.0 * a)
(defn -main []
  (println "Enter value of a: ") ;; output string
  (let [a (read)] ;; gets user inputs
    (println "Enter value of b: ")
    (let [b (read)]
      (println "Enter value of c:")
      (let [c (read)
            result (quadratic_eq a b c) ;; call funciton to put it into result
            root1 (get result 0) ;; get root1 from result array 0
            root2 (get result 1)] ;; get root2 from result array 1
        (if (not= root1 nil) ;; if the array is not nill then 
          (if (not= root2 nil)
            (printf (str "\nThe first root is \"%s\" and" ;; output the result if is passed
                         " the second root is \"%s\"\n\n") root1 root2)))
      )
    )
  )
)
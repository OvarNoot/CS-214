;;;; Aggregate OPerations
;;;;
;;;; Output: results of testing Name functions.
;;;;
;;;; Haim Hong
;;;; March 10 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns nameTester)   ; program name

;;; define a Clojure record named Name 
;;; (which compiles to a Java class).
(defrecord Name [firstName middleName lastName])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; make-Name constructs a Name from three strings. 
;;; Receive: firstN, middleN and lastN, three strings.
;;; Return: the Name (firstN middleN lastN). 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn make-Name [first middle last]
  (->Name first middle last))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFirst() extracts the first name of a Name object.
;;; Receive: aName, a Name.
;;; Return: the firstName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getFirst [^Name aName]
   (:firstName aName)  
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getMiddle() extracts the middle name of a name object.
;;; Receive: aName, a Name. 
;;; Return: the middleName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getMiddle [^Name aName]
  (:middleName aName))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getLast() extracts the last name of a name object.
;;; Receive: aName, a Name. 
;;; Return: the lastName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getLast [^Name aName]
  (:lastName aName))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFullName() returns a full name in F-M-L order. 
;;; Receive: aName, a Name. 
;;; Return: firstName, middleName, lastName,
;;;           separated by spaces. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn toString [^Name aName]
(str (:firstName aName) " " (:middleName aName)  " " (:lastName aName))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printName() displays a name object.
;;; Receive: aName, a Name.
;;; Output: the strings in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn printName [^Name aName]
  (print (toString aName)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setFirst() sets the First names into others
;;; Receive: aName, a Name, aFirst
;;; Returns the Name with new first but rest of them same
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn setFirst [^Name aName aFirst]
  (->Name aFirst (:middleName aName) (:lastName aName)) ;; all othersame but the FirstName
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setMiddle() sets the Middle names into others
;;; Receive: aName, a Name, aMiddle
;;; Returns the Name with new Middle but rest of them same
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn setMiddle [^Name aName aMiddle]
  (->Name (:firstName aName) aMiddle (:lastName aName)) ;; all other same but the MiddleName
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setLast() sets the Last names into others
;;; Receive: aName, a Name, aLast
;;; Returns the Name with new Last but rest of them same
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn setLast [^Name aName aLast]
  (->Name (:firstName aName) (:middleName aName) aLast) ;; all oter same but LastName
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lfmi() displayes the name as Last, First, middle initial
;;; Receive: aName, a Name, aLast
;;; makes them string and returns the last first middle initial
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn lfmi [^Name aName]
  (str (:lastName aName) ", " (:firstName aName) ", " (subs (:middleName aName) 0 1) "." ) ;; makes it last first and middle initials
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; readName() reads the names 
;;; Receive: aName, aName
;;; Makes new nams with the inputs given
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn readName [^Name aName]
  (let [aFirst (read-line) aMiddle (read-line) aLast (read-line)] ;; reads them one by one
    (->Name aFirst aMiddle aLast)) ;; makes new ame wiht those
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A simple driver to test our Name functions. 
;;; Output: the result of testing our Name functions.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
   [; 3 ways to construct an object:
    name1 (make-Name "John" "Paul" "Jones")  ; -using our "make-" constructor
    name2 (->Name "Jane" "Penelope" "Jones") ; -invoking constructor directly
                                               ; -mapping field-names to values
    name3 (map->Name {:lastName "Jones" :firstName "Jinx" :middleName "Joy"})]
    ;; ----- SECTION 1 -----
    (println)
    (print name1) (println)
    (assert (= (getFirst name1) "John") "getFirst(1) failed")
    (assert (= (getMiddle name1) "Paul") "getMiddle(1) failed")
    (assert (= (getLast name1) "Jones") "getLast(1) failed")
    (assert (= (toString name1) "John Paul Jones") "toString(1) failed")
    (printName name1) (println)
    ;; ----- SECTION 2 -----
    (println)
    (print name2) (println)
    (assert (= (getFirst name2) "Jane") "getFirst(2) failed")
    (assert (= (getMiddle name2) "Penelope") "getMiddle(2) failed")
    (assert (= (getLast name2) "Jones") "getLast(2) failed")
    (assert (= (toString name2) "Jane Penelope Jones") "toString(2) failed")
    (printName name2) (println)
    ;; ----- SECTION 3 -----
    (println)
    (print name3) (println)
    (assert (= (getFirst name3) "Jinx") "getFirst(3) failed")
    (assert (= (getMiddle name3) "Joy") "getMiddle(3) failed")
    (assert (= (getLast name3) "Jones") "getLast(3) failed")
    (assert (= (toString name3) "Jinx Joy Jones") "toString(3) failed")
    (printName name3) (println)

    ;; set names assertions
    (assert (= (getFirst (setFirst name1 "Kentucky")) "Kentucky") "getFirst(1) failed")
    (assert (= (getMiddle (setMiddle name1 "Fried")) "Fried") "getMiddle(1) failed")
    (assert (= (getLast (setLast name1 "Chicken")) "Chicken") "getLast(1) failed")
    ;; anothers tests
    (assert (= (getFirst (setFirst name1 "Cookie")) "Cookie") "getFirst(1) failed")
    (assert (= (getMiddle (setMiddle name1 "Biscuit")) "Biscuit") "getMiddle(1) failed")
    (assert (= (getLast (setLast name1 "Jelly")) "Jelly") "getLast(1) failed")

    ;; last first middle initial check
    (assert (= (lfmi name1) "Jones, John, P.") "lfmi failed")
    (assert (= (lfmi name2) "Jones, Jane, P.") "lfmi failed")
    (assert (= (lfmi name3) "Jones, Jinx, J.") "lfmi failed")

    (println "\nUse Kentucky Fried Chicken for names")
    ;; readNames check
    (assert (= (toString (readName name1)) "Kentucky Fried Chicken") "toString failed")

    (println "\nAll tests passed!\n"))
)


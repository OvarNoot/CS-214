;;;; Owl.clj provides an Owl "class".
;;;; 
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Haim Hong
;;;; Date: March 24 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 

;; bring in 'Bird' (to be used as superclass) 
(load "Bird")

;; define 'Owl' as 'subclass' of Bird
(defrecord Owl [^Bird name])

;;; constructors
;;; - default: takes no arguments
;;;   Postcondition: name is initialized to a default value
;;; - explicit: takes one parameter
;;;   Receive: itsName, a String
;;;   Postcondition: name == itsName
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn make-Owl
  ([]                (->Owl "Ann Onymous"))
  ([^String itsName] (->Owl itsName)))

;;; method to retrieve a Owl's class
;;; Receive: this, a Owl object.
;;; Return: "Owl"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmethod getClass Owl [_]
  "Owl")

;;; method to retrieve a Owl's call
;;; Receive: this, a Owl object.
;;; Return: "Hoo-Hoo-Hooooo!"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmethod getCall Owl [_]
  "Hoo-Hoo-Hooooo!")

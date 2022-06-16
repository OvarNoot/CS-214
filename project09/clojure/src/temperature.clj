;;;; module for temperature type abstration
;;;; 
;;;; Haim Hong
;;;; March 18 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; checkValid checks if the scale it valid
;; Receive the scale
;; returns true or falase
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn checkValid [degree scale]
  (if (or (and (= scale "C") (>= degree -273.15)) (and (= scale "F")(>= degree -459.67)) (and (= scale "K")(>= degree 0.0))) ;;)
    true
    false)
)

;; create a record type named Temperature
(defrecord Temperature [myDegree myScale])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; make-Temp constructs a Temperature object from three strings. 
;; Receive: myDegree my
;; Return: the Temp myDeg mySca
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn make-Temp [myDeg mySca]
  (if (checkValid myDeg mySca)
    (->Temperature myDeg mySca)
    false))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; getDegree gets the degree from Temp
;; receive Temp 
;; Return: myDegree
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getDegree [^Temperature aTemp]
  (:myDegree aTemp))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; getDegree gets the degree from Temp
;; receive Temp 
;; Return: myScale
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getScale [^Temperature aTemp]
  (:myScale aTemp))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; toFahrenheit changes the degree to Fahrenheit
;; receive Temp 
;; Return: new Temp with changes degree and scale
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn toFahrenheit [^Temperature aTemp]
  (cond
  (= (getScale aTemp) "C") (make-Temp (+ (* (getDegree aTemp) (/ 9.0 5.0)) 32.0) "F")
  (= (getScale aTemp) "K") (make-Temp (+ (* (- (getDegree aTemp) 273.15) (/ 9.0 5.0)) 32.0) "F")
  (= (getScale aTemp) "F") (make-Temp (getDegree aTemp) "F")))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; toCelsius changes the degree to Celsius
;; receive Temp 
;; Return: new Temp with changes degree and scale
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn toCelsius [^Temperature aTemp]
  (cond
    (= (getScale aTemp) "F") (make-Temp (/ (* (- (getDegree aTemp) 32.0) 5.0) 9.0) "C")
    (= (getScale aTemp) "K") (make-Temp (- (getDegree aTemp) 273.15) "C")
    (= (getScale aTemp) "C") (make-Temp (getDegree aTemp) "C")))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; toKelvin changes the degree to Kelvin
;; receive Temp 
;; Return: new Temp with changes degree and scale
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn toKelvin [^Temperature aTemp]
  (cond
    (= (getScale aTemp) "C") (make-Temp (+ (getDegree aTemp) 273.15) "K")
    (= (getScale aTemp) "F") (make-Temp (* (+ (getDegree aTemp) 459.67) (/ 5 9)) "K")
    (= (getScale aTemp) "K") (make-Temp (getDegree aTemp) "K"))
    )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; raise adds the temperature wiht the given temp
;; receive Temp 
;; Return: returnes temperature with new temp and scale
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn raise [^Temperature aTemp aDeg]
  (make-Temp (+ (getDegree aTemp) aDeg) (getScale aTemp)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; lower subtracts from the temperature wiht the given temp
;; receive Temp 
;; Return: returnes temperature with new temp and scale
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn lower [^Temperature aTemp aDeg]
  (make-Temp (- (getDegree aTemp) aDeg) (getScale aTemp)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; readTemp reads the Temp
;; receive Temp 
;; Return: new Temp with user input of DEgree and Scale
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn readTemp []
  (make-Temp (read-string (read-line)) (read-line)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; toString() returns string of temp and scale
;;; Receive Temp
;;; Return: temperature to decimal points of 2 and scale of it seperated by space
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn toString [^Temperature aTemp]
  (str (format "%.2f" (double (getDegree aTemp))) " " (getScale aTemp)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; printTemp prints the temperature out
;; receive Temp 
;; Return: prints out the temp with scale
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn printTemp [^Temperature aTemp]
  (print (toString aTemp)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; equals checkes between two temperatures if they are equal by convetting it to fahrenheit
;; receive Temp 
;; Return: returnes true or false
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn equals [^Temperature aTemp ^Temperature aTemp2]
  (if (= (getScale aTemp) (getScale aTemp2))
      (= (getDegree aTemp) (getDegree aTemp2))
      (= (getDegree (toFahrenheit aTemp)) (getDegree (toFahrenheit aTemp2)))
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; lessThan checkes if temp is lower than other temp by converting them to fahrenheit
;; receive Temp 
;; Return: returnes true or false
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn lessThan [^Temperature aTemp ^Temperature aTemp2]
  (if (= (getScale aTemp) (getScale aTemp2))
    (< (getDegree aTemp) (getDegree aTemp2))
    (< (getDegree (toFahrenheit aTemp)) (getDegree (toFahrenheit aTemp2)))
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; lessThan checkes if temp is lower than other temp by converting them to fahrenheit
;; receive Temp 
;; Return: returnes true or false
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn printTable [baseT limitT stepV]

  (loop [base baseT
         limit limitT]
        (if (lessThan base limit)
          (do
            (printTemp (toFahrenheit base))
            (print "    ")
            (printTemp (toCelsius base))
            (print "    ")
            (printTemp (toKelvin base))
            (print "\n")
            (recur (raise base stepV) limit))
          )))
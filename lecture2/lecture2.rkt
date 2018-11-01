;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lecture2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; cond expressions
#;
(define (aspect-ratio img)
  (cond [(> (image-height img) (image-width img)) "tall"]
        [(= (image-height img) (image-width img)) "square"]
        [else "wide"]))


; exercise (hand stepping)
(define (mag2 x)
  (cond [(< x 0) "negative"]
        [(= x 0) "zero"]
        [else    "positive"]))

(mag2 0)

(cond [(< 0 0) "negative"]
        [(= 0 0) "zero"]
        [else    "positive"])

(cond [false "negative"]
        [(= 0 0) "zero"]
        [else    "positive"])

(cond [(= 0 0) "zero"]
        [else    "positive"])

(cond [true "zero"]
        [else    "positive"])

"zero"

; Data Definitions

; every program has a "problem domain" We represent information in the problem domain with data in the program:
; Example: City Name Data:

; CityName is String (type comment)
; Interp: the name of a city
(define CN1 "Boston")
(define CN2 "Vancouver")

#; 
(define (fn-for-city-name CN) ; Template for a single-parameter function using template
  (... CN))

;; Template Rules Used:
;;  - Atomic Non-Distict: String


; Example: Course Name

; CourseName is String
; Interp: the name of a course
(define CsN1 "How to Design Programs: Simple Data")
(define CsN2 "How to Design Programs: Complex Data")

#;
(define (fn-for-course-name CsN)
  (... CsN))

;; Template Rules Used:
;; - Atomic Non-Distinct: String


;; Function Using City-Name Data

;; CityName --> Boolean
;; Produce true if the given city is London, false for all other cities

; (define (best? cn) false) ; stub

(check-expect (best? "Boston") false)
(check-expect (best? "London") true)

;; Template via CityName data definition
(define (best? CN)
  (string?= CN "London"))


;; Interval Data Definition Type
;; Example: Seat numbers in a row

;; SeatNum is Integer[1,32]  ; square brackets denote inclusive, round parenthesis non-inclusive (eg. [1,32))
;; Interp: Seat numbers in a row, 1 and 32 are aisle seats
(define SN1 1) ; aisle
(define SN2 12) ; middle
(define SN3 32) ; aisle

#;
(define (fn-for-seat-num SN)
  (... SN))

;; Template rules used:
;; - atomic non-distinct: Integer[1,32]

;; Enumeration Data Definition Type
;; Example: Letter Grade

;; LetterGrade is one of:
;; - "A"
;; - "B"
;; - "C"
;; Interp: Letter grade in a course
;; <examples are redundant for enumerations>

#;
(define (fn-for-letter-grade lg)
  (cond [(string=? lg "A") ...]
        [(string=? lg "B") ...]
        [(string=? lg "C") ...]))

;; Template rules used:
;; - one-of: 3 cases
;; - atomic distinct value: "A"  
;; - atomic distinct value: "B"
;; - atomic distinct value: "C"
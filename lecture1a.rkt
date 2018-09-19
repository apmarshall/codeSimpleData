; Pythagorian Theorem:
(sqrt (+ (sqr 3) (sqr 4)))

; Example Expression:
(+ 2 (* 3 4) (- (+ 1 2) 3))
; Each parenthesis denotes a "primitive call" = primitive and operand
; All operands must be reduced to values, moving left to right and inside to outside:
(+ 2 (* 3 4) (- (+ 1 2) 3))
(+ 2  12     (- (+ 1 2) 3))
(+ 2  12     (-  3      3))
(+ 2  12      0)
14

; string
"apple"
(string-append "Ada" " " "Lovelace")
(string-length "apple") ; 5
(substring "Caribou" 2 4) ; ri (0-based index)
(substring "Caribou" 0 3) ; Car


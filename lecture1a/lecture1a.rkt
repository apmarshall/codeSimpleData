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

; image primatives
(circle 10 "solid" "red") ; radius solid/outline color
(rectangle 20 60 "outline" "blue") ; width height solid/outline color
(text "hello" 24 "orange") ; text-string font-height color
; above, beside, overlay (stacks on top)

; constants
(define WIDTH 400) ; define <name> <expression>
(define HEIGHT 600)

(* WIDTH HEIGHT) ; 400 * 600 = 240000

; functions
(above (circle 40 "solid" "red")
        (circle 40 "solid" "yellow")
        (cirlce 40 "solid" "green")) ; notice redundancy

(define (bulb c) ; define (fname parameter)
    (circle 40 "solid" c)) ; expression

(above (bulb "red") (bulb "yellow") (bulb "green")) ; replacing redundancy with function calls

; booleans
true
false

(> WIDTH HEIGHT) ; false, 400 is not greater than 600

; primitive evaluators: >, >=, =, <, <=, etc. For strings: string=?

; if expressions
(if <expression> <expression> <expression>) ; question, true answer, false answer

(and <boolean expression> <boolean expression>) ; evaluates to true if both expressions are true
(or <boolean> <boolean>) ; evaluates to true if one of the expressions is true
(not <boolean> <boolean>) ; evaluates to true if both of the expressions are false
;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Design a function that pluralizes a given word. For simplicity you may assume that just adding s is enough.

; Signature:
;; String --> String
; Purpose Statement:
;; Produce the pluralized form of a given word
; Stub:
;; (define (plural s) "foo")

(check-expect (plural "paper") "papers")
(check-expect (plural "book") "books")

; inventory:
;(define (plural s)
;  (... s))

; body:
(define (plural s)
  (string-append s "s"))

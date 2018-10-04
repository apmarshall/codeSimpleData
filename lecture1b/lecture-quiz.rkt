;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lecture-quiz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image + Image --> Boolean
;; Given two images, return true if the first has a larger area than the second
; (define (larger? img1 img2) false) ; stub

(check-expect (larger? (rectangle 3 2 "solid" "green") (rectangle 4 3 "solid" "yellow")) false)
(check-expect (larger? (rectangle 4 3 "solid" "green") (rectangle 3 2 "solid" "yellow")) true)
(check-expect (larger? (rectangle 3 2 "solid" "green") (rectangle 2 3 "solid" "yellow")) false)

;(define (larger? img1 img2) ; template
;  (... img1 img2))

(define (larger? img1 img2)
  (> (* (image-width img1) (image-height img1)) (* (image-width img2) (image-height img2))))
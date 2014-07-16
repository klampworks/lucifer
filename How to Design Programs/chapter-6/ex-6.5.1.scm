; (define-struct movie (title producer))

(define (movie-template movie)
  ... (movie-title movie) ...
  ... (movie-producer movie) ...)

; (define-struct boyfriend (name hair eyes phone))

(define (boyfriend-template boyfriend)
  ... (boyfriend-name boyfriend) ...
  ... (boyfriend-hair boyfriend) ...
  ... (boyfriend-eyes boyfriend) ...
  ... (boyfriend-phone boyfriend) ...)

; (define-struct cheerleader (name number))

(define (cheerleader-template cheerleader)
  ... (cheerleader-name cheerleader) ...
  ... (cheerleader-number cheerleader) ...)

; (define-struct CD (artist title price))

(define (CD-template CD)
  ... (CD-artist CD) ...
  ... (CD-title CD) ...
  ... (CD-price CD) ...)

; (define-struct sweater (material size producer))

(define (sweater-template sweater)
  ... (sweater-material sweater) ...
  ... (sweater-size sweater) ...
  ... (sweater-producer sweater) ...)

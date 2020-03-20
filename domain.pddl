
(define (domain maze)
(:requirements :strips ::typing)
(:types 
    room 
)

(:predicates 
    (room ?r)
    (at-robot ?r)
    (isConnected ?r1 ?r2)  
)
 


   (:action move
        :parameters (?from ?to)
        :precondition (and (room ?from)(room ?to)(at-robot ?from)) 
        :effect (and (at-robot ?to) (not (at-robot ?from)))
        )
)

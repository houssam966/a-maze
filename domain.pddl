(define (domain maze)
(:requirements :strips ::typing)
(:types 
    room 
)

(:predicates 
    (room ?r)
    (at-robot ?r)
    (isConnected ?x ?y - room)
)
 


   (:action move
        :parameters (?from ?to )
        :precondition (and (room ?from)(isConnected ?from ?to)(room ?to)(at-robot ?from)) 
        :effect (and (at-robot ?to) (not (at-robot ?from)))
        )
)

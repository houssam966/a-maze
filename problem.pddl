(define (problem simple_problem) 
(:domain maze)
(:objects 
 r1 r2 r3 - room
)
(:init
    (room r1 )
    (room r2 )
    (room r3 )
    (isConnected r1 r2)
    (isConnected r2 r1)
    (isConnected r2 r3)
    (isConnected r3 r2)
    (at-robot r1)
)

(:goal 
    (at-robot r3)
))


(define (problem problem_name) 
(:domain maze)
(:objects 
 r1 r2 r3 - room

)

(:init
    (room r1 )
    (room r2 )
    (room r3 )
    (isConnected r1 r2)
    (isConnected r2 r3)
    (at-robot r1)
)

(:goal 
    (at-robot r3)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))

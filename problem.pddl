(define (problem problem_name) 
(:domain maze)
(:objects 
 locationA locationB locationC -locations
  player -robot
)

(:init

    (locA locationA)
    (locB locationB)
    (locC locationC)
    (at player locA)
)

(:goal 
    (at player locC)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))


; The aim of this problem is to get to the diamond to the point, j20
; This is a visual representation of the map of the maze (dots denote one way):
;
;                                j14 ---------- j15
;                                 |             |    
;                                 |             |  
;                                 |             |  
;                        j12     j13            j16
;                         |      |               |
;                         |      |               |
;                         |      |               |
; j1 --- j2 --- j4 ------ j7 --- j8             j17
;         |    ^    |     ^      |  ^            |
;         |   /     |     |      |   \           |
;         |  /      |     |      |    \          |
;         j3  --- j5 --- j6 --- j9 --> j10      j18
;                                     |          |
;                                     |          |
;                                     j11        j19 --- **j20** 
;                                      
;
;

(define (problem theMaze) (:domain maze)
(:objects 
ajanA ajanB ajanC - Player
j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 j16 j17 j18 j19 j20 - Junction

)

(:init
   (atLocation ajanA j1)
   (atLocation ajanB j1)
   (atLocation ajanC j1)
)

(:goal (and
    (atLocation ajanA j20)
    (atLocation ajanB j20)
    (atLocation ajanC j20)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)

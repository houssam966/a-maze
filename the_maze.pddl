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
;                                     j11        j19 --- >**j20** 
;                                      
;
;

(define (problem theMaze) (:domain maze)
(:objects 
ajanA ajanB ajanC - Player
j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 j16 j17 j18 j19 j20 - Junction
 dragon - Monster
 basilisk - Monster
 i - Inventory
 shield - Shield
 b - Box
 f - Floor
 g - Gold
 key - Key
 banana - Food
 sword  - Weapon
 axe  - Weapon

)

(:init
;normal direction
    (isConnected j1 j2) 
    (isConnected j2 j3)
    (isConnected j3 j4)
    (isConnected j3 j5)
    (isConnected j2 j4)
    (isConnected j4 j5)
    (isConnected j4 j7)
    (isConnected j5 j6)
    (isConnected j6 j7)
    (isConnected j6 j9)
    (isConnected j7 j12)
    (isConnected j7 j8)
    (isConnected j8 j9)
    (isConnected j8 j13)
    (isConnected j9 j10)
    (isConnected j13 j14)
    (isConnected j14 j15)
    (isConnected j15 j16)
    (isConnected j16 j17)
    (isConnected j17 j18)
    (isConnected j18 j19)
    (isConnected j19 j20)
    
  
 
    (isConnected j2 j1)
    (isConnected j3 j2)
    (isConnected j4 j2)
    (isConnected j5 j3)
    (isConnected j5 j4)
    (isConnected j7 j4)
    (isConnected j6 j5)
    (isConnected j12 j7)
    (isConnected j8 j7)
    (isConnected j9 j6)
    (isConnected j9 j8)
    (isConnected j10 j8)
    (isConnected j13 j8)
    (isConnected j14 j13)
    (isConnected j15 j14)
    (isConnected j16 j15)
    (isConnected j17 j16)
    (isConnected j18 j17)
    (isConnected j19 j18)
    

   (atLocation ajanA j1)
   (atLocation ajanB j1)
   (atLocation ajanC j1)
   (=(playerHealth) 100)
   (on ajanA f)
    (on ajanB f)
     (on ajanC f)
)

(:goal (and
    (atLocation ajanA j20)
    (atLocation ajanB j20)
    (atLocation ajanC j20)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)

; The aim of this problem is to get to the end point, j10
; This is a visual representation of the map of the maze (arrows denote one way):
;
;       j11
;         ^
;         |
;         |
; j1 --- j2 --- j3 --> j12
;                |      ^
;                |      |
;                |      |
;               j4 --- j5 --- j6 --- j7 --> j13
;                       |             |
;                       |             |
;                     j15 <-- j14 --- j8 --- j9 --- **j10**
;
;

(define (problem problem_big_maze)
(:domain maze)
(:objects
 j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 - Junction
 p - Player
 m - Monster
 i - Inventory
 shield - Shield
 key - Key
 banana - Food
 w - Weapon
 f - Floor
)
(:init

    ;Normal Direction
    (isConnected j1 j2)
    (isConnected j2 j3)

    (isConnected j3 j12)
    (isConnected j3 j4)

    (isConnected j4 j5)

    (isConnected j5 j6)
    (isConnected j5 j12)

    (isConnected j6 j7)

    (isConnected j7 j8)
    (isConnected j7 j13)

    (isConnected j8 j9)
    (isConnected j8 j14)

    (isConnected j9 j10)
    (isConnected j14 j15)
    (isConnected j15 j5)

    ;Reverse Direction
    (isConnected j2 j1)
    (isConnected j3 j2)
    (isConnected j4 j3)
    (isConnected j5 j4)
    (isConnected j6 j5)
    (isConnected j7 j6)
    (isConnected j8 j7)
    (isConnected j9 j8)
    (isConnected j10 j9)
    (isConnected j13 j7)
    (isConnected j14 j8)

    ;Player
    (=(playerHealth) 100)
    (atLocation p j1)
    (on p f) ;player on the floor initially so they can move between the junctions
)

(:goal  (atLocation p j10))

)

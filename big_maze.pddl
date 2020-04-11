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

(define (problem big_maze)
(:domain maze)
(:objects
 j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 - Junction
 p - Player
 v - Vendor
 m - Monster
 i - Inventory
 shield - Shield
 key - Key
 banana - Food
 w - Weapon
 f - Floor
 g - Gold
 b - Box
)
(:init

    ;Normal Direction
    (isConnected j1 j2)
    (= (distanceBetweenJunctions j1 j2) 2)
    (isConnected j2 j3)
    (= (distanceBetweenJunctions j2 j3) 2)

    (isConnected j3 j12)
    (= (distanceBetweenJunctions j3 j12) 3)
    (isConnected j3 j4)
    (= (distanceBetweenJunctions j3 j4) 2)

    (isConnected j4 j5)
    (= (distanceBetweenJunctions j4 j5) 2)

    (isConnected j5 j6)
    (= (distanceBetweenJunctions j5 j6) 2)
    (isConnected j5 j12)
    (= (distanceBetweenJunctions j5 j12) 4)

    (isConnected j6 j7)
    (= (distanceBetweenJunctions j6 j7) 2)

    (isConnected j7 j8)
    (= (distanceBetweenJunctions j7 j8) 3)
    (isConnected j7 j13)
    (= (distanceBetweenJunctions j7 j13) 3)

    (isConnected j8 j9)
    (= (distanceBetweenJunctions j8 j9) 2)
    (isConnected j8 j14)
    (= (distanceBetweenJunctions j8 j14) 2)

    (isConnected j9 j10)
    (= (distanceBetweenJunctions j9 j10) 5)
    (isConnected j14 j15)
    (= (distanceBetweenJunctions j14 j15) 4)
    (isConnected j15 j5)
    (= (distanceBetweenJunctions j15 j5) 3)

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

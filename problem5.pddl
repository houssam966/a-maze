
(define (problem problem_big_maze) 
(:domain maze)

;Map layout
;Key
;- / | = connection
; : = locked connection
;
;      j1----j2----j3----j4----j5
;      |     |     |     | 
;      |     |     |     | 
;j6----j7----j8----j9----j10
;      |     |     |     |
;      |     |     |     |
;      j11---j12---j13---j14
;                        :
;                        :
;                        j15


(:objects 
    j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 - Junction
    p - Player
    m1 m2 m3 - Monster
    i - Item
    in - Inventory
    s - Shield
    sting - Weapon
    k - Key
    b - Box
    f - Floor
    g -Gold
    apple banana - Food
    v - Vendor
)

(:init 

    (= playerHealth 10)
    (= playerWealth 0)
    (= monstersSlain 0)
    (= inventoryCount 0)
    (= maxInventorySize 5)

    (on p f)
    (on k f)
    (on sting f)
    (on apple f)
    (on banana f)
    (on m1 f)
    (on m2 f)
    (on m3 f)

    ;map
    (isConnected j1 j2)
    (isConnected j2 j1)
    (= (distanceBetweenJunctions j1 j2) 1)
    (= (distanceBetweenJunctions j2 j1) 1)

    (isConnected j1 j7)
    (isConnected j7 j1)
    (= (distanceBetweenJunctions j1 j7) 1)
    (= (distanceBetweenJunctions j7 j1) 1)

    (isConnected j2 j3)
    (isConnected j3 j2)
    (= (distanceBetweenJunctions j2 j3) 1)
    (= (distanceBetweenJunctions j3 j2) 1)

    (isConnected j2 j8)
    (isConnected j8 j2)
    (= (distanceBetweenJunctions j2 j8) 1)
    (= (distanceBetweenJunctions j8 j2) 1)

    (isConnected j3 j4)
    (isConnected j4 j3)
    (= (distanceBetweenJunctions j3 j4) 1)
    (= (distanceBetweenJunctions j4 j3) 1)

    (isConnected j3 j9)
    (isConnected j9 j3)
    (= (distanceBetweenJunctions j3 j9) 1)
    (= (distanceBetweenJunctions j9 j3) 1)

    (isConnected j4 j5)
    (isConnected j5 j4)
    (= (distanceBetweenJunctions j4 j5) 1)
    (= (distanceBetweenJunctions j5 j4) 1)

    (isConnected j4 j10)
    (isConnected j10 j4)
    (= (distanceBetweenJunctions j4 j10) 1)
    (= (distanceBetweenJunctions j10 j4) 1)

    (isConnected j6 j7)
    (isConnected j7 j6)
    (= (distanceBetweenJunctions j6 j7) 1)
    (= (distanceBetweenJunctions j7 j6) 1)

    (isConnected j7 j8)
    (isConnected j8 j7)
    (= (distanceBetweenJunctions j7 j8) 1)
    (= (distanceBetweenJunctions j8 j7) 1)

    (isConnected j7 j11)
    (isConnected j11 j7)
    (= (distanceBetweenJunctions j7 j11) 1)
    (= (distanceBetweenJunctions j11 j7) 1)

    (isConnected j8 j9)
    (isConnected j9 j8)
    (= (distanceBetweenJunctions j8 j9) 1)
    (= (distanceBetweenJunctions j9 j8) 1)

    (isConnected j8 j12)
    (isConnected j12 j8)
    (= (distanceBetweenJunctions j8 j12) 1)
    (= (distanceBetweenJunctions j12 j8) 1)

    (isConnected j9 j10)
    (isConnected j10 j9)
    (= (distanceBetweenJunctions j9 j10) 1)
    (= (distanceBetweenJunctions j10 j9) 1)

    (isConnected j9 j13)
    (isConnected j13 j9)
    (= (distanceBetweenJunctions j9 j13) 1)
    (= (distanceBetweenJunctions j13 j9) 1)

    (isConnected j10 j14)
    (isConnected j14 j10)
    (= (distanceBetweenJunctions j10 j14) 1)
    (= (distanceBetweenJunctions j14 j10) 1)

    (isConnected j11 j12)
    (isConnected j12 j11)
    (= (distanceBetweenJunctions j11 j12) 1)
    (= (distanceBetweenJunctions j12 j11) 1)

    (isConnected j12 j13)
    (isConnected j13 j12)
    (= (distanceBetweenJunctions j12 j13) 1)
    (= (distanceBetweenJunctions j13 j12) 1)

    (isConnected j13 j14)
    (isConnected j14 j13)
    (= (distanceBetweenJunctions j13 j14) 1)
    (= (distanceBetweenJunctions j14 j13) 1)

    (isLocked j14 j15)
    (= (distanceBetweenJunctions j14 j15) 1)

    (atLocation p j6)

    ;sword
    (= (weaponDamage sting) 1)
    (atLocation sting j7)


    ;monsters
    (= (monsterStrength m1) 1)
    (= (monsterHealth m1) 1)
    (atLocation m1 j10)

    (= (monsterStrength m2) 2)
    (= (monsterHealth m2) 1)
    (atLocation m2 j8)

    (= (monsterStrength m3) 1)
    (= (monsterHealth m3) 1)
    (atLocation m3 j12)

    ;food
    (atLocation apple j5)
    (= (foodValue apple) 3)

    (atLocation banana j13)
    (= (foodValue banana) 5)

    ;key
    (atLocation k j2)
)

;the player just has to escape the maze
(:goal (and (atLocation p j15))
    
)
)
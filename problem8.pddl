(define (problem problem_big_maze2) 
(:domain maze)
;this maze is an extended version of big_maze
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
;                        |
;                        |
;     j16---j17---j18---j19
;     |                  |
;     |                  |
;     j20---j21---------j22
;            :
;            :
;           j23


(:objects 
    j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 j16 j17 j18 j19 j20 j21 j22 j23 - Junction
    p - Player
    m1 m2 m3 - Monster
    i - Item
    in - Inventory
    s - Shield
    sting - Weapon
    k1 k2 - Key
    b - Box
    f - Floor
    g -Gold
    apple banana - Food
    v - Vendor
)

(:init 

    (= playerHealth 17)
    (= playerWealth 0)
    (= monstersSlain 0)
    (= inventoryCount 0)
    (= maxInventorySize 5)

    (on p f)
    (on k1 f)
    (on k2 f)
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

    (isConnected j15 j19)
    (isConnected j19 j15)
    (= (distanceBetweenJunctions j15 j19) 1)
    (= (distanceBetweenJunctions j19 j15) 1)

    (isconnected j19 j18)
    (isConnected j18 j18)
    (= (distanceBetweenJunctions j19 j18) 1)
    (= (distanceBetweenJunctions j18 j19) 1)

    (isCOnnected j19 j22)
    (isConnected j22 j19)
    (= (distanceBetweenJunctions j19 j22) 1)
    (= (distanceBetweenJunctions j22 j19) 1)

    (isConnected j18 j17)
    (isConnected j17 j18)
    (= (distanceBetweenJunctions j18 j17) 1)
    (= (distanceBetweenJunctions j17 j18) 1)

    (isConnected j17 j16)
    (isConnected j16 j17)
    (= (distanceBetweenJunctions j17 j16) 1)
    (= (distanceBetweenJunctions j16 j17) 1)

    (isConnected j16 j20)
    (isConnected j20 j16)
    (= (distanceBetweenJunctions j16 j20) 1)
    (= (distanceBetweenJunctions j20 j16) 1)

    (isConnected j20 j21)
    (isConnected j21 j20)
    (= (distanceBetweenJunctions j20 j21) 1)
    (= (distanceBetweenJunctions j21 j20) 1)

    (isConnected j21 j22)
    (isConnected j22 j21)
    (= (distanceBetweenJunctions j21 j22) 1)
    (= (distanceBetweenJunctions j22 j21) 1)

    (isLocked j21 j23)
    (= (distanceBetweenJunctions j21 j23) 1)



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
    (atLocation k1 j2)

    (atLocation k2 j16)
)

;the player just has to escape the maze
(:goal (and (atLocation p j23))
    
)
)
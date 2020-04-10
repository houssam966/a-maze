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
    sting - Sword
    k1 k2 - Key
    b - Box
    f - Floor
    g -Gold
    apple banana - Food
)

(:init 

    (= playerHealth 1)
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

    (isConnected j1 j7)
    (isConnected j7 j1)

    (isConnected j2 j3)
    (isConnected j3 j2)

    (isConnected j2 j8)
    (isConnected j8 j2)

    (isConnected j3 j4)
    (isConnected j4 j3)

    (isConnected j3 j9)
    (isConnected j9 j3)

    (isConnected j4 j5)
    (isConnected j5 j4)

    (isConnected j4 j10)
    (isConnected j10 j4)

    (isConnected j6 j7)
    (isConnected j7 j6)

    (isConnected j7 j8)
    (isConnected j8 j7)

    (isConnected j7 j11)
    (isConnected j11 j7)

    (isConnected j8 j9)
    (isConnected j9 j8)

    (isConnected j8 j12)
    (isConnected j12 j8)

    (isConnected j9 j10)
    (isConnected j10 j9)

    (isConnected j9 j13)
    (isConnected j13 j9)

    (isConnected j10 j14)
    (isConnected j14 j10)

    (isConnected j11 j12)
    (isConnected j12 j11)

    (isConnected j12 j13)
    (isConnected j13 j12)

    (isConnected j13 j14)
    (isConnected j14 j13)

    (isLocked j14 j15)

    (isConnected j15 j19)
    (isConnected j19 j15)

    (isconnected j19 j18)
    (isConnected j18 j18)

    (isCOnnected j19 j22)
    (isConnected j22 j19)

    (isConnected j18 j17)
    (isConnected j17 j18)

    (isConnected j17 j16)
    (isConnected j16 j17)

    (isConnected j16 j20)
    (isConnected j20 j16)

    (isConnected j20 j21)
    (isConnected j21 j20)

    (isConnected j21 j22)
    (isConnected j22 j21)

    (isLocked j21 j23)



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
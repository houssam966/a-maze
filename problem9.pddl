(define (problem problem_shape_maze)
(:domain maze)

;Map layout
;Key
; -- / \ | = connection
; : = locked route

;    j1---j2---j3---j4---j5---j6
;    :
;    :
;    j7----j8---j9      j14
;    |          |       / \
;    |          |      /   \
;    j10--j11--j12---j13   j15
;    :
;    :
;    j16---j17---j18---j19---j20
;                             |
;                             |
;    j25---j24---j23---j22---j21


(:objects
    j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 j16 j17 j18 j19 j20 j21 j22 j23 j24 j25 - Junction
    p - Player
    m1 m2 m3 m4 m5 - Monster
    specialItem - Item
    in - Inventory
    s - Shield
    k1 k2 - Key
    b - Box
    f - Floor
    g1 g2 g3 - Gold
    apple banana carrot - Food
    sword - Weapon
)

(:init 

    (= playerHealth 2)
    (= playerWealth 0)
    (= monstersSlain 0)
    (= inventoryCount 0)
    (= maxInventorySize 5)

    (on p f)
    (on specialItem f)
    (on k1 f)
    (on k2 f)
    (on g1 f)
    (on g2 f)
    (on g3 f)
    (on sword f)
    (on apple f)
    (on banana f)
    (on carrot f)
    (on m1 f)
    (on m2 f)
    (on m3 f)
    (on m4 f)
    (on m5 f)

    ;map
    (isConnected j1 j2)
    (isConnected j2 j1)

    (isConnected j2 j3)
    (isConnected j3 j2)

    (isConnected j3 j4)
    (isConnected j4 j3)

    (isConnected j4 j5)
    (isConnected j5 j4)

    (isConnected j5 j6)
    (isConnected j6 j5)

    (isLocked j1 j7)
    (isConnected j7 j1)

    (isConnected j7 j8)
    (isConnected j8 j7)

    (isConnected j7 j10)
    (isConnected j10 j7)

    (isConnected j8 j9)
    (isConnected j9 j8)

    (isConnected j9 j12)
    (isConnected j12 j9)

    (isConnected j10 j11)
    (isConnected j11 j10)

    (isConnected j11 j12)
    (isConnected j12 j11)

    (isConnected j12 j13)
    (isConnected j13 j12)

    (isConnected j13 j14)
    (isConnected j14 j13)

    (isConnected j14 j15)
    (isConnected j15 j14)

    (isLocked j10 j16)
    (isConnected j16 j10)

    (isConnected j16 j17)
    (isConnected j17 j16)

    (isConnected j17 j18)
    (isConnected j18 j17)

    (isConnected j18 j19)
    (isConnected j19 j18)

    (isConnected j19 j20)
    (isConnected j20 j19)

    (isConnected j20 j21)
    (isConnected j21 j20)

    (isConnected j21 j22)
    (isConnected j22 j21)

    (isConnected j22 j23)
    (isConnected j23 j22)

    (isConnected j23 j24)
    (isConnected j24 j23)

    (isConnected j24 j25)
    (isConnected j25 j24)

    (= (weaponDamage sword) 1)
    (atLocation sword j2)

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

    (= (monsterStrength m4) 1)
    (= (monsterHealth m4) 1)
    (atLocation m4 j17)

    (= (monsterStrength m5) 1)
    (= (monsterHealth m5) 1)
    (atLocation m5 j22)

    ;food
    (atLocation apple j5)
    (= (foodValue apple) 3)

    (atLocation banana j13)
    (= (foodValue banana) 5)

    (atLocation carrot j19)
    (= (foodValue carrot) 5)

    (atLocation k1 j6)
    (atLocation k2 j15)

    (atLocation specialItem j25)
    (atLocation p j1)

    (atLocation g1 j8)
    (atLocation g2 j12)
    (atLocation g3 j21)

)
;the player must retrieve the special item, and escape at j6
(:goal (and 
    (atLocation p j6)
    (carryItem p specialItem)
    )
)


)


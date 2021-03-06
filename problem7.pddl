
(define (problem problem_mario) 
(:domain maze)


;map

;             j0
;    DK       |
;    j1-------j2-------j3
;             :        |
;    j4----j5-j6-------j7
;    |     |           :
;    j8----j9--j10-----j11
;          :   |       |
;  j12----j13-j14-----j15
;   |      |
;  j16----j17---------j18
;          :           |
;  j19----j20---------j21


(:objects 
    mario - Player
    j0 j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 j16 j17 j18 j19 j20 j21 - Junction

    barrel1 barrel2 barrel3 flame1 flame2 DK - Monster
    i - Item
    k1 k2 k3 - Key
    in - Inventory
    s - Shield
    mallet - Weapon
    b - Box
    f - Floor
    g -Gold
    v - Vendor

    mushroom1 mushroom2 - Food
)

(:init 

    (= playerHealth 15)
    (= playerWealth 0)
    (= monstersSlain 0)
    (= inventoryCount 0)
    (= maxInventorySize 5)

    (on mario f)
    (on mallet f)
    (on mushroom1 f)
    (on mushroom2 f)
    (on barrel1 f)
    (on barrel2 f)
    (on barrel3 f)
    (on flame1 f)
    (on flame2 f)
    (on DK f)

    ;ladder junctions are 1-way
    (isConnected j19 j20)
    (isConnected j20 j19)
    (= (distanceBetweenJunctions j19 j20) 0)
    (= (distanceBetweenJunctions j20 j19) 0)

    (isConnected j20 j21)
    (isConnected j21 j20)
    (= (distanceBetweenJunctions j20 j21) 0)
    (= (distanceBetweenJunctions j21 j20) 0)

    (isLocked j20 j17)
    (= (distanceBetweenJunctions j20 j17) 0)

    (isConnected j21 j18)
    (= (distanceBetweenJunctions j21 j18) 0)

    (isConnected j18 j17)
    (isConnected j17 j18)
    (= (distanceBetweenJunctions j18 j17) 0)
    (= (distanceBetweenJunctions j17 j18) 0)

    (isConnected j17 j16)
    (isConnected j16 j17)
    (= (distanceBetweenJunctions j17 j16) 0)
    (= (distanceBetweenJunctions j16 j17) 0)

    (isConnected j17 j13)
    (isConnected j13 j17)
    (= (distanceBetweenJunctions j17 j13) 0)
    (= (distanceBetweenJunctions j13 j17) 0)

    ;
    (isConnected j16 j12)
    (= (distanceBetweenJunctions j16 j12) 0)

    (isConnected j12 j13)
    (isConnected j13 j12)
    (= (distanceBetweenJunctions j12 j13) 0)
    (= (distanceBetweenJunctions j13 j12) 0)

    (isConnected j13 j14)
    (isConnected j14 j13)
    (= (distanceBetweenJunctions j13 j14) 0)
    (= (distanceBetweenJunctions j14 j13) 0)

    (isLocked j13 j9)
    (= (distanceBetweenJunctions j13 j9) 0)

    (isConnected j14 j10)
    (= (distanceBetweenJunctions j14 j10) 0)
    (isConnected j14 j15)
    (isConnected j15 j14)
    (= (distanceBetweenJunctions j14 j15) 0)
    (= (distanceBetweenJunctions j15 j14) 0)

    (isConnected j15 j11)
    (= (distanceBetweenJunctions j15 j11) 0)

    (isConnected j11 j10)
    (isConnected j10 j11)
    (= (distanceBetweenJunctions j11 j10) 0)
    (= (distanceBetweenJunctions j10 j11) 0)

    (isLocked j11 j7)
    (= (distanceBetweenJunctions j11 j7) 0)

    (isConnected j10 j9)
    (isConnected j9 j10)
    (= (distanceBetweenJunctions j10 j9) 0)
    (= (distanceBetweenJunctions j9 j10) 0)

    (isConnected j9 j8)
    (isConnected j8 j9)
    (= (distanceBetweenJunctions j9 j8) 0)
    (= (distanceBetweenJunctions j8 j9) 0)

    (isConnected j9 j5)
    (= (distanceBetweenJunctions j9 j5) 0)

    (isConnected j8 j4)
    (= (distanceBetweenJunctions j8 j4) 0)

    (isConnected j4 j5)
    (isConnected j5 j4)
    (= (distanceBetweenJunctions j4 j5) 0)
    (= (distanceBetweenJunctions j5 j4) 0)

    (isConnected j5 j6)
    (isConnected j6 j5)
    (= (distanceBetweenJunctions j5 j6) 0)
    (= (distanceBetweenJunctions j6 j5) 0)

    (isConnected j6 j7)
    (isConnected j7 j6)
    (= (distanceBetweenJunctions j6 j7) 0)
    (= (distanceBetweenJunctions j7 j6) 0)

    (isLocked j6 j2)
    (= (distanceBetweenJunctions j6 j2) 0)

    (isConnected j7 j3)
    (= (distanceBetweenJunctions j7 j3) 0)

    (isConnected j3 j2)
    (isConnected j2 j3)
    (= (distanceBetweenJunctions j3 j2) 0)
    (= (distanceBetweenJunctions j2 j3) 0)

    (isConnected j2 j1)
    (isConnected j1 j2)
    (= (distanceBetweenJunctions j2 j1) 0)
    (= (distanceBetweenJunctions j1 j2) 0)


    (isConnected j2 j0)
    (= (distanceBetweenJunctions j2 j0) 0)

    (atLocation mario j19)

    ;monsters
    (= (monsterHealth barrel1) 1)
    (= (monsterStrength barrel1) 1)

    (= (monsterHealth barrel2) 1)
    (= (monsterStrength barrel2) 1)

    (= (monsterHealth barrel3) 1)
    (= (monsterStrength barrel3) 1)

    (= (monsterHealth flame1) 1)
    (= (monsterStrength flame1) 1)

    (= (monsterHealth flame2) 1)
    (= (monsterStrength flame2) 1)

    (= (monsterHealth DK) 2)
    (= (monsterStrength DK) 1)


    (atLocation barrel1 j17)
    (atLocation barrel2 j13)
    (atLocation barrel3 j15)
    (atLocation flame1 j10)
    (atLocation flame2 j5)
    (atLocation DK j1)
    
    (= (weaponDamage mallet) 1)
    (atLocation mallet j14)

    (atLocation k1 j16)
    (atLocation k2 j20)
    (atLocation k3 j6)

    (= (foodValue mushroom1) 1)
    (atLocation mushroom1 j20)

    (= (foodValue mushroom2) 1)
    (atLocation mushroom2 j17)

)

;the player must reach j0 with the highest health possible
(:goal (and
    (atLocation mario j0)
    (isMonsterDead DK)
    )
)

(:metric maximize (playerHealth))

)
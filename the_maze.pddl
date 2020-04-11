; The aim of this problem is to get to the diamond to the point, j20
; This is a visual representation of the map of the maze (dots denote one way):
;
;                                j14    -      j15
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
ajan  - Player
j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 j16 j17 j18 j19 j20 - Junction
dragon giant witch - Monster
i - Inventory
shield - Shield
box - Box
floor - Floor
tree tree2 - Platform
gold - Gold
key - Key
banana apple cake - Food
sword axe knife - Weapon
diamond - Item
v - Vendor

)

(:init
    (=(inventoryCount) 0)
    (=(maxInventorySize) 6)
    ;Platform Levels
    (=(platformLevel floor) 0)
    (=(platformLevel box) 1)
    (=(platformLevel tree) 2)
    (=(platformLevel tree2) 2)
;normal direction
    (isConnected j1 j2) 
    (= (distanceBetweenJunctions j1 j2) 1)
    (isConnected j2 j3)
    (= (distanceBetweenJunctions j2 j3) 1)
    (isConnected j3 j4)
     (= (distanceBetweenJunctions j3 j4) 1)
    (isConnected j3 j5)
     (= (distanceBetweenJunctions j3 j5) 1)
    (isConnected j2 j4)
     (= (distanceBetweenJunctions j2 j4) 1)
    (isConnected j4 j5)
     (= (distanceBetweenJunctions j4 j5) 1)
    (isConnected j4 j7)
     (= (distanceBetweenJunctions j4 j7) 1)
    (isConnected j5 j6)
     (= (distanceBetweenJunctions  j5 j6) 1)
    (isConnected j6 j7)
     (= (distanceBetweenJunctions j6 j7) 1)
    (isConnected j6 j9)
     (= (distanceBetweenJunctions j6 j9) 1)
    (isLocked j7 j12)
     (= (distanceBetweenJunctions j7 j12) 1)
    (isConnected j7 j8)
     (= (distanceBetweenJunctions j7 j8) 1)
    (isConnected j8 j9)
     (= (distanceBetweenJunctions j8 j9) 1)
    (isConnected j8 j13)
     (= (distanceBetweenJunctions j8 j13) 1)
    (isConnected j9 j10)
     (= (distanceBetweenJunctions j9 j10) 1)
     (isLocked j10 j11)
     (= (distanceBetweenJunctions j10 j11) 1)
    (isConnected j13 j14)
     (= (distanceBetweenJunctions j13 j14) 1)
    (isConnected j14 j15)
     (= (distanceBetweenJunctions j14 j15) 1)
    (isConnected j15 j16)
     (= (distanceBetweenJunctions j15 j16) 1)
   (isLocked j16 j17)
     (= (distanceBetweenJunctions j16 j17) 1)
    (isConnected j17 j18)
     (= (distanceBetweenJunctions j17 j18) 1)
    (isConnected j18 j19)
     (= (distanceBetweenJunctions j18 j19) 1)
    (isConnected j19 j20)
     (= (distanceBetweenJunctions j19 j20) 1)
     
;other direction   
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
    (isConnected j11 j10)
    (isConnected j13 j8)
    (isConnected j14 j13)
    (isConnected j15 j14)
    (isConnected j16 j15)
    (isConnected j17 j16)
    (isConnected j18 j17)
    (isConnected j19 j18)
;player
   (atLocation ajan j1)
   (=(playerHealth) 80)
   (on ajan floor)
;diamond 
    (atLocation diamond j12)
    (on diamond floor)
    ;banana
    (atLocation banana j4)
    (on banana tree)
    (=(foodValue banana) 50)
    ;apple
    (atLocation apple j5)
    (on apple box)
    (=(foodValue apple) 50)

    (atLocation cake j6)
    (on cake floor)
    (=(foodValue cake) 50)
    ; ;key
    ; (atLocation key j12)
    ; (on key box)
    ;box
    (atLocation box j5)
    (on box floor)
    ;tree
    (atLocation tree j4)
    ; (atLocation tree2 j12)
    ;monster
    (not(isMonsterDead dragon))
    (=(monstersSlain) 0)    ;without this it doesnt work
    (=(monsterHealth dragon) 20)
    (=(monsterStrength dragon) 50)
    (atLocation dragon j16)
    ;monster2
    (not(isMonsterDead giant))
    (=(monsterHealth giant) 20)
    (=(monsterStrength giant) 50)
    (atLocation giant j7)
    ;monster
    (not(isMonsterDead witch))
    (=(monsterHealth witch) 20)
    (=(monsterStrength witch) 50)
    (atLocation witch j10)
     ;Weapons
    (=(weaponDamage sword) 30)
    (atLocation sword j4)
    (on sword floor) 
     Weapons
    (=(weaponDamage axe) 30)
    (atLocation axe j4)
    (on axe floor) 
     ;Weapons
    (=(weaponDamage knife) 30)
    (atLocation knife j4)
    (on knife floor) 

   
)

(:goal (and
    (atLocation ajan j20)
    (atLocation diamond j20)
    ; (carryItem ajan banana)
    ;  (carryItem ajan apple)
    (isMonsterDead dragon)
    (isMonsterDead giant)
    (isMonsterDead witch)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)

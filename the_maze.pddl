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
g1 - Gold
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
   ;v
   (atLocation v j3)
   (sellItem v sword)
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
    ;gold1
    (atLocation g1 j2)
    (on g1 floor)
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
    ; (=(weaponDamage sword) 30)
    ; (atLocation sword j4)
    ; (on sword floor) 
     ;Weapons
    (=(weaponDamage axe) 30)
    (atLocation axe j4)
    (on axe floor) 
     ;Weapons
    (=(weaponDamage knife) 30)
    (atLocation knife j11)
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



; Plan computed:
;    Time: (ACTION) [action Duration; action Cost]
;  0.0000: (GOTO AJAN J1 J2 FLOOR) [D:1.00; C:1.00]
;  1.0000: (GOTO AJAN J2 J4 FLOOR) [D:1.00; C:1.00]
;  2.0000: (PICKUP AJAN SWORD J4 FLOOR) [D:1.00; C:1.00]
;  3.0000: (GOTO AJAN J4 J5 FLOOR) [D:1.00; C:1.00]
;  4.0000: (PUSH AJAN BOX J5 J3 FLOOR) [D:1.00; C:1.00]
;  5.0000: (PUSH AJAN BOX J3 J5 FLOOR) [D:1.00; C:1.00]
;  6.0000: (GOTO AJAN J5 J3 FLOOR) [D:1.00; C:1.00]
;  7.0000: (GOTO AJAN J3 J5 FLOOR) [D:1.00; C:1.00]
;  8.0000: (PUSH AJAN BOX J5 J3 FLOOR) [D:1.00; C:1.00]
;  9.0000: (PUSH AJAN BOX J3 J5 FLOOR) [D:1.00; C:1.00]
;  10.0000: (PUSH AJAN BOX J5 J6 FLOOR) [D:1.00; C:1.00]
;  11.0000: (PUSH AJAN BOX J6 J5 FLOOR) [D:1.00; C:1.00]
;  12.0000: (GOTO AJAN J5 J6 FLOOR) [D:1.00; C:1.00]
;  13.0000: (GOTO AJAN J6 J9 FLOOR) [D:1.00; C:1.00]
;  14.0000: (GOTO AJAN J9 J6 FLOOR) [D:1.00; C:1.00]
;  15.0000: (GOTO AJAN J6 J5 FLOOR) [D:1.00; C:1.00]
;  16.0000: (PUSH AJAN BOX J5 J6 FLOOR) [D:1.00; C:1.00]
;  17.0000: (PUSH AJAN BOX J6 J5 FLOOR) [D:1.00; C:1.00]
;  18.0000: (PUSH AJAN BOX J5 J4 FLOOR) [D:1.00; C:1.00]
;  19.0000: (GOTO AJAN J4 J5 FLOOR) [D:1.00; C:1.00]
;  20.0000: (GOTO AJAN J5 J6 FLOOR) [D:1.00; C:1.00]
;  21.0000: (PICKUP AJAN CAKE J6 FLOOR) [D:1.00; C:1.00]
;  22.0000: (GOTO AJAN J6 J9 FLOOR) [D:1.00; C:1.00]
;  23.0000: (GOTO AJAN J9 J10 FLOOR) [D:1.00; C:1.00]
;  24.0000: (FINALATTACK AJAN WITCH SWORD KEY J10) [D:1.00; C:1.00]
;  25.0000: (GOTO AJAN J10 J8 FLOOR) [D:1.00; C:1.00]
;  26.0000: (GOTO AJAN J8 J7 FLOOR) [D:1.00; C:1.00]
;  27.0000: (GOTO AJAN J7 J4 FLOOR) [D:1.00; C:1.00]
;  28.0000: (PUSH AJAN BOX J4 J5 FLOOR) [D:1.00; C:1.00]
;  29.0000: (PUSH AJAN BOX J5 J4 FLOOR) [D:1.00; C:1.00]
;  30.0000: (DROP AJAN KEY J4 FLOOR) [D:1.00; C:1.00]
;  31.0000: (PICKUP AJAN KEY J4 FLOOR) [D:1.00; C:1.00]
;  32.0000: (DROP AJAN KEY J4 FLOOR) [D:1.00; C:1.00]
;  32.0000: (GRAB AJAN BOX FLOOR APPLE J4) [D:1.00; C:1.00]
;  33.0000: (EATFOOD AJAN APPLE) [D:1.00; C:1.00]
;  34.0000: (PUSH AJAN BOX J4 J7 FLOOR) [D:1.00; C:1.00]
;  35.0000: (EATFOOD AJAN CAKE) [D:1.00; C:1.00]
;  36.0000: (GOTO AJAN J7 J4 FLOOR) [D:1.00; C:1.00]
;  37.0000: (PICKUP AJAN KEY J4 FLOOR) [D:1.00; C:1.00]
;  38.0000: (PICKUP AJAN AXE J4 FLOOR) [D:1.00; C:1.00]
;  39.0000: (GOTO AJAN J4 J7 FLOOR) [D:1.00; C:1.00]
;  40.0000: (DROP AJAN KEY J7 FLOOR) [D:1.00; C:1.00]
;  41.0000: (PICKUP AJAN KEY J7 FLOOR) [D:1.00; C:1.00]
;  42.0000: (DROP AJAN KEY J7 FLOOR) [D:1.00; C:1.00]
;  43.0000: (PICKUP AJAN KEY J7 FLOOR) [D:1.00; C:1.00]
;  44.0000: (DROP AJAN KEY J7 FLOOR) [D:1.00; C:1.00]
;  45.0000: (PICKUP AJAN KEY J7 FLOOR) [D:1.00; C:1.00]
;  46.0000: (DROP AJAN KEY J7 FLOOR) [D:1.00; C:1.00]
;  47.0000: (PICKUP AJAN KEY J7 FLOOR) [D:1.00; C:1.00]
;  48.0000: (DROP AJAN KEY J7 FLOOR) [D:1.00; C:1.00]
;  49.0000: (PICKUP AJAN KEY J7 FLOOR) [D:1.00; C:1.00]
;  50.0000: (DROP AJAN KEY J7 FLOOR) [D:1.00; C:1.00]
;  51.0000: (PICKUP AJAN KEY J7 FLOOR) [D:1.00; C:1.00]
;  52.0000: (UNLOCKROUTE AJAN KEY J7 J12) [D:1.00; C:1.00]
;  53.0000: (PUSH AJAN BOX J7 J12 FLOOR) [D:1.00; C:1.00]
;  54.0000: (PICKUP AJAN DIAMOND J12 FLOOR) [D:1.00; C:1.00]
;  55.0000: (PUSH AJAN BOX J12 J7 FLOOR) [D:1.00; C:1.00]
;  56.0000: (FINALATTACK AJAN GIANT AXE KEY J7) [D:1.00; C:1.00]
;  57.0000: (PUSH AJAN BOX J7 J8 FLOOR) [D:1.00; C:1.00]
;  58.0000: (PUSH AJAN BOX J8 J9 FLOOR) [D:1.00; C:1.00]
;  59.0000: (PUSH AJAN BOX J9 J10 FLOOR) [D:1.00; C:1.00]
;  60.0000: (UNLOCKROUTE AJAN KEY J10 J11) [D:1.00; C:1.00]
;  61.0000: (PUSH AJAN BOX J10 J8 FLOOR) [D:1.00; C:1.00]
;  62.0000: (PUSH AJAN BOX J8 J13 FLOOR) [D:1.00; C:1.00]
;  63.0000: (PUSH AJAN BOX J13 J14 FLOOR) [D:1.00; C:1.00]
;  64.0000: (PUSH AJAN BOX J14 J15 FLOOR) [D:1.00; C:1.00]
;  65.0000: (GOTO AJAN J15 J14 FLOOR) [D:1.00; C:1.00]
;  66.0000: (GOTO AJAN J14 J13 FLOOR) [D:1.00; C:1.00]
;  67.0000: (GOTO AJAN J13 J8 FLOOR) [D:1.00; C:1.00]
;  68.0000: (GOTO AJAN J8 J9 FLOOR) [D:1.00; C:1.00]
;  69.0000: (GOTO AJAN J9 J10 FLOOR) [D:1.00; C:1.00]
;  70.0000: (GOTO AJAN J10 J11 FLOOR) [D:1.00; C:1.00]
;  71.0000: (PICKUP AJAN KNIFE J11 FLOOR) [D:1.00; C:1.00]
;  72.0000: (GOTO AJAN J11 J10 FLOOR) [D:1.00; C:1.00]
;  73.0000: (GOTO AJAN J10 J8 FLOOR) [D:1.00; C:1.00]
;  74.0000: (GOTO AJAN J8 J13 FLOOR) [D:1.00; C:1.00]
;  75.0000: (GOTO AJAN J13 J8 FLOOR) [D:1.00; C:1.00]
;  76.0000: (GOTO AJAN J8 J13 FLOOR) [D:1.00; C:1.00]
;  77.0000: (GOTO AJAN J13 J8 FLOOR) [D:1.00; C:1.00]
;  78.0000: (GOTO AJAN J8 J13 FLOOR) [D:1.00; C:1.00]
;  79.0000: (GOTO AJAN J13 J14 FLOOR) [D:1.00; C:1.00]
;  80.0000: (GOTO AJAN J14 J15 FLOOR) [D:1.00; C:1.00]
;  81.0000: (PUSH AJAN BOX J15 J16 FLOOR) [D:1.00; C:1.00]
;  82.0000: (FINALATTACK AJAN DRAGON KNIFE KEY J16) [D:1.00; C:1.00]
;  83.0000: (UNLOCKROUTE AJAN KEY J16 J17) [D:1.00; C:1.00]
;  84.0000: (PUSH AJAN BOX J16 J17 FLOOR) [D:1.00; C:1.00]
;  85.0000: (PUSH AJAN BOX J17 J18 FLOOR) [D:1.00; C:1.00]
;  86.0000: (PUSH AJAN BOX J18 J19 FLOOR) [D:1.00; C:1.00]
;  87.0000: (PUSH AJAN BOX J19 J20 FLOOR) [D:1.00; C:1.00]
;  88.0000: (DROP AJAN DIAMOND J20 FLOOR) [D:1.00; C:1.00]
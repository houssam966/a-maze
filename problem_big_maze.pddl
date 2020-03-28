; The aim of this problem is
;
;       j11
;         |
;         |
; j1 --- j2 --- j3 --- j12
;                |      |
;                |      |
;               j4 --- j5 --- j6 --- j7 --- j13
;                       |             |
;                       |             |
;                     j10 --- j9 --- j8 --- j14 --- **j15**
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
 box - Box
 key - Key
 banana - Food
 sword  - Sword
 knife - Knife
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
    (isConnected j10 j5)

    (isConnected j14 j15)

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
    (isConnected j11 j2)

    (isConnected j12 j4)
    (isConnected j12 j5)

    (isConnected j13 j7)
    (isConnected j14 j8)
    (isConnected j15 j14)

    ;Locations
    (atLocation p j1)
    (atLocation sword j1)
    (atLocation shield j1)
    (atLocation knife j1)
    ;(atLocation m j2)

    ;Player
    (canCarry p)
    (isPlayerAlive p)
    (=(playerHealth) 100)
    ;(=(inventoryCount) 0)
    ;(=(maxInventorySize) 3)

    ;Monster
    (not(isMonsterDead m))
    (=(monstersSlain) 0)    ;without this it doesnt work
    (=(monsterHealth m) 20)
    (=(monsterStrength m) 10)

    ;BUG
    ;For some reason, weapons should do more damage than the monster's health
    ;and am guessing because the attack action doesnt work, just the final attack works

    ;Weapons
    (=(weaponDamage sword) 20)
    ;BUG
    ;for some reason, if the sword does less damage than the knife
    ;and less than the monsters health, it doesnt work.
    ;but if you get rid of it, it works

    (=(weaponDamage knife) 5)
    ; (not(isInInventory sword i))
    ; (not(isInInventory knife i))
    ; (not(isInInventory shield i))
)

(:goal  (atLocation p j15))

)

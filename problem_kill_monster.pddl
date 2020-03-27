; The aim of this problem is to kill the monster at j2 and proceed to the final location, j3
; using the weapons available at j1
(define (problem problem_kill_monster)
(:domain maze)
(:objects
 j1 j2 j3 - Junction
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

    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)

    (atLocation p j1)
    (atLocation sword j1)
    (atLocation shield j1)
    (atLocation knife j1)
    (atLocation m j2)

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

(:goal  (and (isMonsterDead m) (atLocation p j3)))

)

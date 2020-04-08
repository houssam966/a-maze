; The aim of this problem is to kill the monster at j2 and proceed to the final location, j3

; using the weapons available at j1
(define (problem problem_kill_monster)
(:domain maze)
(:objects
 j1 j2 j3 - Junction
 p - Player
 m - Monster
 m2 - Monster
 i - Inventory
 shield - Shield
 b - Box
 f - Floor
 g - Gold
 key - Key
 banana - Food
 sword  - Sword
 sword2  - Sword
 knife - Knife
)
(:init

    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)

    ;Player
    (=(playerHealth) 70)
    (atLocation p j1)
    (on p f) ;player on the floor initially so they can move between the junctions
    (=(inventoryCount) 0)
    (=(maxInventorySize) 2)

    (not(isMonsterDead m2))
    (=(monsterHealth m2) 20)
    (=(monsterStrength m2) 20)
    (atLocation m2 j2)

    ;Monster
    (not(isMonsterDead m))
    (=(monstersSlain) 0)    ;without this it doesnt work
    (=(monsterHealth m) 20)
    (=(monsterStrength m) 20)
    (atLocation m j2)
    ;BUG
    ;For some reason, weapons should do more damage than the monster's health
    ;and am guessing because the attack action doesnt work, just the final attack works


    ;Weapons
    (=(weaponDamage sword) 10)
    (atLocation sword j1)
    (atLocation banana j1)

    (=(foodValue banana) 20)
    (on sword f) ;sword on the floor so player can pickup
    (=(weaponDamage sword2) 10)
    (atLocation sword2 j1)
    (on sword2 f) ;sword on the floor so player can pickup
    ;(not(ateBanana))
)

(:goal  (and  (isMonsterDead m) (isMonsterDead m2)  (atLocation p j3)))
)

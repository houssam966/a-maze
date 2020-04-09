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
 sword3  - Sword
 knife - Knife
)
(:init

    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)

    ;Player
    (=(playerHealth) 30)
    (atLocation p j1)
    (on p f) ;player on the floor initially so they can move between the junctions
    (=(inventoryCount) 0)
    (=(maxInventorySize) 5)

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
    (=(weaponDamage sword) 20)
    (atLocation sword j2)
    (atLocation banana j1)
    (=(foodValue banana) 20)
   
    
)

(:goal  (and  (isMonsterDead m)  (atLocation p j3)))
)

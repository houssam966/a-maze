; The aim of this problem is to kill the monster at j2 and proceed to the final location, j3
; using the weapons available at j1
(define (problem problem_kill_monster)
(:domain maze)
(:objects
 j1 j2 j3 - Junction
 tyrion - Player
 dragon - Monster
 basilisk - Monster
 i - Inventory
 shield - Shield
 b - Box
 f - Floor
 g - Gold
 key - Key
 banana - Food
 sword  - Weapon
 axe  - Weapon
)
(:init

    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)

    ;Player
    (=(playerHealth) 30)
    (atLocation tyrion j1)
    (on tyrion f) ;player on the floor initially so they can move between the junctions
    (=(inventoryCount) 0)
    (=(maxInventorySize) 5)

    ;Monsters
    (not(isMonsterDead dragon))
    (=(monstersSlain) 0)    ;without this it doesnt work
    (=(monsterHealth dragon) 20)
    (=(monsterStrength dragon) 20)
    (atLocation dragon j2)

    (not(isMonsterDead basilisk))
    (=(monsterHealth basilisk) 20)
    (=(monsterStrength basilisk) 20)
    (atLocation basilisk j2)

    ;Weapons
    (=(weaponDamage sword) 30)
    (atLocation sword j1)
    (on sword f) ;sword on the floor so player can pickup

    (=(weaponDamage axe) 20)
    (atLocation axe j1)
    (on axe f)

    ;food
    (atLocation banana j1)
    (=(foodValue banana) 20)
    (on banana f )

)

(:goal  (and (not(carryItem tyrion banana))
    (not(atLocation banana j1))
    (isMonsterDead dragon) (isMonsterDead basilisk)
    (atLocation tyrion j3)))
)

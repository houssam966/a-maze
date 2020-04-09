(define (problem problem_eat)
(:domain maze)
(:objects
 j1 j2 j3 j4 - Junction
 p - Player
 m m1 - Monster
 k - Key
 in - Inventory
 s - Shield
 banana - Food
 f - Floor
 sword knife - Weapon
 box - Box
 g - Gold
 tree - Platform
)
(:init
    (=(platformLevel f) 0)
    (=(platformLevel box) 1)
    (=(platformLevel tree) 2)
    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j4)
    (atLocation p j1)

    (atLocation banana j2)
    (on banana f)
    (=(foodValue banana) 30)
    ; (atLocation tree j2)
    ; (atLocation box j2)
    ; (on box f)
    ; weapon
     (atLocation sword j2)
     (on sword f) ;weapon on the floor
    (= (weaponDamage sword) 30)

       ; weapon
     (atLocation knife j3)
     (on knife f) ;weapon on the floor
    (= (weaponDamage knife) 30)
    ; monster 1
    (atLocation m j3)
    (on m f)
     (not(isMonsterDead m))
    (= (monsterStrength m) 30)
    (= (monsterHealth m) 15)
    ; monster 1
    (atLocation m1 j4)
    (on m1 f)
     (not(isMonsterDead m1))
    (= (monsterStrength m1) 30)
    (= (monsterHealth m1) 15)

    (on p f) ;player initially on the floor
     (= (playerHealth ) 30)
     (= (playerWealth ) 0)
     (= (monstersSlain ) 0)
     (= (inventoryCount ) 0)
     (= (maxInventorySize ) 5)
)

(:goal (and
(atLocation p j4)
(isMonsterDead m)
(isMonsterDead m1)


))
)

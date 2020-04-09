(define (problem problem_eat)
(:domain maze)
(:objects
 j1 j2 j3 j4 j5 - Junction
 p - Player
 m m1 - Monster
 k - Key
 in - Inventory
 s - Shield
 banana - Food
 f - Floor
 w - Weapon
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
    (isConnected j4 j5)
    (atLocation p j1)
   
    (atLocation banana j2)
    (on banana f) 
    ; (=(foodValue banana) 20)
    ; (atLocation tree j2)
    ; (atLocation box j2)
    ; (on box f) 
    ; weapon
     (atLocation w j2)
     (on w f) ;weapon on the floor
    (= (weaponDamage w) 50)
    ; monster 1
    (atLocation m j3)
    (on m f) 
     (not(isMonsterDead m))
    (= (monsterStrength m) 50)
    (= (monsterHealth m) 15)

    ; monster 2
    (atLocation m1 j4)
    (on m1 f) 
     (not(isMonsterDead m1))
    (= (monsterStrength m1) 50)
    (= (monsterHealth m1) 15)

    (on p f) ;player initially on the floor  
     (= (playerHealth ) 50)
     (= (playerWealth ) 0)
     (= (monstersSlain ) 0)
     (= (inventoryCount ) 0)
     (= (maxInventorySize ) 5)
     (= (foodValue banana) 70)
)

(:goal (and 
(atLocation p j5)  
(isMonsterDead m)
(isMonsterDead m1)


))
)

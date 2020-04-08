(define (problem pickup_drop)
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
    (atLocation p j1)
   
    (atLocation banana j2)
    (on banana f) 
    ; (atLocation tree j2)
    ; (atLocation box j2)
    ; (on box f) 
    ; weapon
     (atLocation w j2)
     (on w f) ;weapon on the floor
    (= (weaponDamage w) 30)
    ; monster 1
    (atLocation m j3)
    (on m f) 
    (= (monsterStrength m) 30)
    (= (monsterHealth m) 15)

    (on p f) ;player initially on the floor  
     (= (playerHealth ) 0)
     (= (playerWealth ) 0)
     (= (monstersSlain ) 0)
     (= (inventoryCount ) 0)
     (= (maxInventorySize ) 5)
    ;  (= (foodValue banana) 50)
)

(:goal (and 
(atLocation p j4)  
(isMonsterDead m)


))
)

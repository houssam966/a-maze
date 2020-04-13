(define (problem take)
(:domain maze)
(:objects
 j1 j2 j3 j4 - Junction
 p - Player
 m - Monster
 k - Key
 b - Box
 f - Floor
 tree - Platform
 in - Inventory
 s - Shield
 banana - Food
 w - Weapon
 g - Gold
 v - Vendor
)

(:init
    ;junction
    (isConnected j1 j2)
    
    ;player
    (atLocation p j1) 
    (on p f)

    ;box
    (atLocation b j1)
    (on b f)
    (isUnlocked b)

    ;weapon
    (atLocation w j1)
    (inBox b w)
 
    (=(playerHealth) 100)  
    (=(inventoryCount) 0)
    (=(maxInventorySize) 10) 
)

(:goal  (and  (carryItem p w) (not (inBox b w)))
)
)
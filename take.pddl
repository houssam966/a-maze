(define (problem unlockBox)
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
    (inBox b w)
    (isUnlocked b)
 
    (=(playerHealth) 100)  
    (=(inventoryCount) 0)
    (=(maxInventorySize) 10) 
)

(:goal  (and  (carryItem p w) (not (inBox b w)))
)
)
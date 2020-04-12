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
    (carryItem p k)

    ;box
    (atLocation b j1)
    (on b f)
    (not(isUnlocked b))
 
    (=(playerHealth) 100)   
)

(:goal  (and  (isUnlocked b) (not(carryItem p k)))
)
)
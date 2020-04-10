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
 i - Inventory
 s - Shield
 banana - Food
 w - Weapon
 g - Gold
)

(:init
    (isConnected j1 j2)
    (on p f)
    (on b f)
    (not (canTake i))
    (carryItem p k)  
    (atLocation p j1) 
    (atLocation b j1)
    (not (isUnlocked b))
    (=(playerHealth) 100)
)

(:goal  (and (not (carryItem p k)) (isUnlocked b))
)
)

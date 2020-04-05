
(define (problem push_box)
(:domain maze)
(:objects
 j1 j2 j3 - Junction
 p - Player
 m - Monster
 key  - Key
 box - Box
 in - Inventory
 s - Shield
 f - Floor
 banana - Food
 w - Weapon
 g - Gold
)
(:init
    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)

    ;Platform Levels
    (=(platformLevel f) 0)
    (=(platformLevel box) 1)

    ;Box
    (atLocation box j2)
    (on box f)
    ;Player
    (=(playerHealth) 100)
    (atLocation p j1)
    (on p f) ;player on the floor initially so they can move between the junctions
    (=(inventoryCount) 0)
    (=(maxInventorySize) 10)
)

(:goal (and (atLocation p j3) (atLocation box j3)) )
)

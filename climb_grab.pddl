(define (problem climb_grab)
(:domain maze)
(:objects
 j1 j2 j3 j4 - Junction
 p - Player
 m - Monster
 key - Key
 box - Box
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
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)

    ;Platform Levels
    (=(platformLevel f) 0)
    (=(platformLevel box) 1)
    (=(platformLevel tree) 2)

    ;Box
    (atLocation box j2)
    (on box f)  ;box on the floor so player can push it if need be
    ;Tree
    (atLocation tree j2)
    ;Key
    (atLocation key j2)
    (on key box)
    ;Banana
    (atLocation banana j2)
    (on banana tree)

    ;Player
    (=(playerHealth) 100)
    (atLocation p j1)
    (on p f) ;player on the floor initially so they can move between the junctions
    (=(inventoryCount) 0)
    (=(maxInventorySize) 2)
)

(:goal  (and
            (atLocation p j3)
            (carryItem p banana)
            (carryItem p key)
        )
)
)

;This problem tests the ability of a player to pickup/grab items from differnet platforms
; in this case tree, box and floor. Also tests the ability to climb and descend from platforms based on their levels
(define (problem pick_up_all)
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
    (isConnected j3 j4)
    (isConnected j4 j3)

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
    ;Weapon
    (atLocation w j4)
    (on w f)
    ;shield
    (atLocation s j3)
    (on s f)
    ;gold
    (atLocation g j1)
    (on g f)

    ;Player
    (=(playerHealth) 100)
    (atLocation p j1)
    (on p f) ;player on the floor initially so they can move between the junctions
    (=(inventoryCount) 0)
    (=(maxInventorySize) 10)
)

(:goal  (and
            (atLocation p j4)
            (carryItem p w)
            (carryItem p key)
            (carryItem p banana)
            (atLocation g j3)
            (atLocation s j2)
        )
)
)

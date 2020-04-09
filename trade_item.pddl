; This problem tests the ability to exchange gold for an item
(define (problem trade_item)
(:domain maze)

(:objects
 j1 j2 j3 j4 - Junction
 p - Player
 v - Vendor
 m - Monster
 f - Floor
 i - Inventory
 s - Shield
 k - Key
 box - Box
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
    (= (platformLevel f) 0)

    ;food
    (atLocation banana j4)
    (on banana f)
    ;shield
    (atLocation s j3)
    (on s f)
    ;gold
    (atLocation g j1)
    (on g f)
    ;weapon
    (= (weaponDamage w) 30)

    ;Player
    (= (playerHealth) 100)
    (= (playerWealth) 0)
    (atLocation p j1)
    (on p f) ;player on the floor initially so they can move between the junctions
    (= (inventoryCount) 0)
    (= (maxInventorySize) 10)
    (= (monstersSlain) 0)

    ;Vendor
    (atLocation v j2)
    (sellItem v w)
)

(:goal  (and
            (atLocation p j4)
            (carryItem p w)
            (carryItem p banana)
            (carryItem p s)
        )
)
 )

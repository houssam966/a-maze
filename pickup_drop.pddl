(define (problem pickup_drop)
(:domain maze)
(:objects
 j1 j2 j3 - Junction
 p - Player
 v - Vendor
 m - Monster
 k - Key
 in - Inventory
 s - Shield
 banana - Food
 f - Floor
 w - Weapon
 b - Box
 g - Gold
)
(:init
    (isConnected j1 j2)
    (isConnected j2 j1)
    (= (distanceBetweenJunctions j1 j2) 2)
    (isConnected j2 j3)
    (isConnected j3 j2)
    (= (distanceBetweenJunctions j2 j3) 2)

    (atLocation p j1)
    (atLocation k j2)
    (atLocation w j2)
    (on p f) ;player initially on the floor
    (on k f) ;key on the floor
    (on w f) ;weapon on the floor
    (=(playerHealth) 100)
    (=(inventoryCount) 0)
    (=(maxInventorySize) 2)
)

(:goal (and (atLocation p j3) (atLocation k j3) (atLocation w j3)))

)

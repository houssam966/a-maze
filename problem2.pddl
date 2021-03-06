(define (problem pick_up_drop)
(:domain maze)
(:objects
 j1 j2 j3 - Junction
 p - Player
 m - Monster
 i - Item
 in - Inventory
 s - Shield
 k - Key
 b - Box
 f - Floor
 g -Gold
 banana - Food
 w - Weapon
 v - Vendor
)
(:init
    (= playerHealth 1)
    (= playerWealth 0)
    (= monstersSlain 0)
    (= inventoryCount 0)


    (isConnected j1 j2)
     (= (distanceBetweenJunctions j1 j2) 1)
    (isConnected j2 j1)
    (isConnected j2 j3)
     (= (distanceBetweenJunctions j2 j3) 1)
    (isConnected j3 j2)
    (atLocation p j1)
    (atLocation k j3)
    (on p f)
    (on k f)
)

(:goal
    (and(atLocation p j3)
    (atLocation k j3))
))

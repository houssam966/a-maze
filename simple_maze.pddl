(define (problem simple_maze)
(:domain maze)
(:objects
 j1 j2 j3 - Junction
 p - Player
 v - Vendor
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
)
(:init
    (isConnected j1 j2)
    (isConnected j2 j1)
    (= (distanceBetweenJunctions j1 j2) 2)
    (isConnected j2 j3)
    (isConnected j3 j2)
    (= (distanceBetweenJunctions j2 j3) 2)

    (=(playerHealth) 100)
    (atLocation p j1)
    (on p f)
)

(:goal
    (atLocation p j3)
))

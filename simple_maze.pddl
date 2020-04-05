(define (problem simple_maze)
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
)
(:init
    (= playerHealth 1)
    (= playerWealth 0)
    (= monstersSlain 0)
    (= inventoryCount 0)

    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)
    (atLocation p j1)
    (on p f)
)

(:goal
    (atLocation p j3)
))

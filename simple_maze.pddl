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
 banana - Food
 w - Weapon
)
(:init
    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)
    (isPlayerAlive p)
    (atLocation p j1)
)

(:goal
    (atLocation p j3)
))

(define (problem pickup_drop)
(:domain maze)
(:objects
 j1 j2 j3 - Junction
 p - Player
 m - Monster
 i - Item
 in - Inventory
 s - Shield
 banana - Food
 w - Weapon
 b - Box
)
(:init
    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)
    (canCarry p )
    (atLocation p j1)
    (atLocation i j1)
    (isPlayerAlive p)
)

(:goal  (and (atLocation p j3) (atLocation i j3))
)

)

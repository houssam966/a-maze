(define (problem pickup_drop)
(:domain maze)
(:objects
 j1 j2 j3 - Junction
 p - Player
 m - Monster
 k - Key
 in - Inventory
 s - Shield
 banana - Food
 w - Weapon
 b - Box
 g - Gold
)
(:init
    (onFloor p)
    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)
    (canCarry p )
    (atLocation p j1)
    (atLocation k j2)
    (isPlayerAlive p)
)

(:goal  (and (atLocation p j3) (atLocation k j3))
)

)

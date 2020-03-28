
(define (problem push_box)
(:domain maze)
(:objects
 j1 j2 j3 - Junction
 p - Player
 m - Monster
 key  - Key
 box - Box
 in - Inventory
 s - Shield
 banana - Food
 w - Weapon
)
(:init
    (onFloor p)
    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)
    (isClear box)
    (canCarry p)
    (atLocation p j1)
    (atLocation key j3)
    (atLocation box j2)
    (isPlayerAlive p)
)

(:goal (and (atLocation p j3)
    (atLocation box j3)
    (atLocation key j2)
     )

))

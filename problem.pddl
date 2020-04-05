(define (problem simple_problem)
(:domain maze)
(:objects
 j1 j2 j3 - Junction
 p - Player
 m - Monster
 i - Item
 in - Inventory
 s - Shield
 w - Weapon
 banana - Food
)
(:init
    (= playerHealth 1)
    (= playerWealth 0)
    (= monstersSlain 0)
    (= inventoryCount 0)

    (onFloor p)
    (canCarry p)

    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)
    (atLocation p j1)
)

(:goal
    (atLocation p j3)
))

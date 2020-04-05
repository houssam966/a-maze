(define (problem problem_pickup_drop) 
(:domain maze)
(:objects 
 j1 j2 j3 - Junction
 p - Player
 m - Monster
 key - Item 
 in - Inventory
 s - Shield
 banana - Food
 w - Weapon
 b - Box
)
(:init
    (= playerHealth 1)
    (= playerWealth 0)
    (= monstersSlain 0)
    (= inventoryCount 0)

    (onFloor p)

    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)
    (canCarry p )
    (atLocation p j1)
    (atLocation key j1)
)

(:goal (and (atLocation p j3)
    (atLocation key j3))
    
))
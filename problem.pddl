(define (problem simple_problem)
(:domain maze)
(:objects
 j1 j2 j3 - Junction
 p - Player
 m - Monster
 i - Item
 i - Inventory
 S - Shield
 banana - Food
)
(:init
    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)
    (atLocation p j1)
)

(:goal
    (atLocation p j3)
))

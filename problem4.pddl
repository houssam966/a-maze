
(define (problem simple_problem) 
(:domain maze)
(:objects 
 j1 j2 j3 - Junction
 p - Player
 m - Monster
 i - Item
 k - Key
 box - Box
 i - Inventory
 S - Shield
 banana - Food
)
(:init
    (onFloor p)
    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)
    (isClear box)
    (canCarry p)
    (carryItem p i)
    (atLocation p j1)
    (atLocation i j3)
    (atLocation k j2)
    (atLocation box j1)
)

(:goal (and (atLocation p j3)
    (atLocation box j3)
    (atLocation i j2)
    (hasKey p k)
     )
    
))
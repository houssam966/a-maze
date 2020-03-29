(define (problem pick_up_all)
(:domain maze)
(:objects
 j1 j2 j3 j4 - Junction
 p - Player
 m - Monster
 key - Key
 box - Box
 in - Inventory
 s - Shield
 banana - Food
 w - Weapon
 g - Gold
)

(:init
    (onFloor p)
    (onBox key box)
    (onBox w box)
    (isConnected j1 j2)
    (isConnected j2 j1)
    (isConnected j2 j3)
    (isConnected j3 j2)
    (isConnected j3 j4)
    (isConnected j4 j3)
    ; (isClear box)
    (canCarry p)
    (atLocation p j1)
    (atLocation key j2)
    (atLocation box j1)
    (atLocation w j4)
    (atLocation g j1)
    (isPlayerAlive p)
    (atLocation s j3)
)

(:goal (and (atLocation p j4)
            (atLocation box j3)
            (atLocation s j2)
            (atLocation g j3)
            (carryItem p key)
            (carryItem p w)
            

     )

))
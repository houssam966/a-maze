(define (problem problem_jump_grab)
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
    (onCeiling key)
    (onCeiling w )
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
    (atLocation w j3)
    (isPlayerAlive p)
    (atLocation s j3)
   ; This line causes segmentation fault


)

(:goal (and (atLocation p j4)
            (atLocation box j3)
            (atLocation s j2)
            (carryItem p key)
            (carryItem p w)
     )

))
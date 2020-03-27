(define (problem simple_problem)
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
    (=(weaponDamage w) 10)
    (=(monsterHealth m) 10)
    (=(monsterStrength m) 10)
    (=(playerHealth) 100)
)

(:goal
    (atLocation p j3)
))

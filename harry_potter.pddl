; The aim of this problem is to obtain some of the items,
; kill all the monsters and get to the end position
; This is a visual representation of the map of the maze:
;
;      j1 --- j2            j5         
;              |          /  |    
;              |        /    |      
;             j3 --- j4 --- j6                               
;                           |
;                           |
;                           j7    j9
;                            |    / \           j19 ----- **j20**
;                            |  /    \         /              
;                 j13       j8      j10       /
;                /   \               /       /
;               /     \             /       j18
;            j14       j12 ----- j11       /         
;             |         |                 /
;             |         |                /
;            j15 ----- j16 ---------- j17       
;                                      
;
;

(define (problem harry_potter)
(:domain maze)

(:objects 
j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 j16 j17 j18 j19 j20 - Junction
harry - Player
hagrid silente sirius - Vendor
voldemort bellatrix dragon - Monster
i - Inventory
cloak - Shield
key - Key
chicken burger pizza - Food
sword potion wand - Weapon
horcrux broom snitch - Item
floor - Floor
box - Box
tree - Platform
gold1 gold2 gold3 - Gold
)

(:init 
    ;Normal Direction
    (isConnected j1 j2) 
    (= (distanceBetweenJunctions j1 j2) 1)
    (isConnected j2 j3) 
    (= (distanceBetweenJunctions j2 j3) 1)
    (isConnected j3 j4) 
    (= (distanceBetweenJunctions j3 j4) 1)
    (isConnected j4 j5) 
    (= (distanceBetweenJunctions j4 j5) 1)
    (isConnected j5 j6) 
    (= (distanceBetweenJunctions j5 j6) 1)
    (isConnected j6 j7) 
    (= (distanceBetweenJunctions j6 j7) 1)
    (isConnected j7 j8) 
    (= (distanceBetweenJunctions j7 j8) 1)
    (isConnected j8 j9) 
    (= (distanceBetweenJunctions j8 j9) 1)
    (isConnected j9 j10) 
    (= (distanceBetweenJunctions j9 j10) 1)
    (isConnected j10 j11) 
    (= (distanceBetweenJunctions j10 j11) 1)
    (isConnected j11 j12) 
    (= (distanceBetweenJunctions j11 j12) 1)
    (isConnected j12 j13) 
    (= (distanceBetweenJunctions j12 j13) 1)
    (isConnected j13 j14) 
    (= (distanceBetweenJunctions j13 j14) 1)
    (isConnected j14 j15) 
    (= (distanceBetweenJunctions j14 j15) 1)
    (isConnected j15 j16) 
    (= (distanceBetweenJunctions j15 j16) 1)
    (isConnected j16 j17) 
    (= (distanceBetweenJunctions j16 j17) 1)
    (isConnected j17 j18) 
    (= (distanceBetweenJunctions j17 j18) 1)
    (isConnected j18 j19) 
    (= (distanceBetweenJunctions j18 j19) 1)
    (isConnected j19 j20) 
    (= (distanceBetweenJunctions j19 j20) 1)

    ;Reverse Direction
    (isConnected j2 j1) 
    (isConnected j3 j2) 
    (isConnected j4 j3) 
    (isConnected j5 j4) 
    (isConnected j6 j5) 
    (isConnected j7 j6) 
    (isConnected j8 j7) 
    (isConnected j9 j8) 
    (isConnected j10 j9) 
    (isConnected j11 j10) 
    (isConnected j12 j11) 
    (isConnected j13 j12) 
    (isConnected j14 j13) 
    (isConnected j15 j14) 
    (isConnected j16 j15) 
    (isConnected j17 j16) 
    (isConnected j18 j17) 
    (isConnected j19 j18) 
    (isConnected j20 j19)

    (= (inventoryCount) 0)
    (= (maxInventorySize) 10)

    ;Platform Levels
    (= (platformLevel floor) 0)
    (= (platformLevel box) 1)
    (= (platformLevel tree) 2)

    ;player
    (atLocation harry j1)
    (= (playerHealth) 100)
    (on harry floor)

    ;vendors
    (atLocation sirius j3)
    (sellItem silente cloak)
    (atLocation hagrid j8)
    (sellItem hagrid sword)
    (= (weaponDamage sword) 50)
    (atLocation silente j16)
    (sellItem silente wand)
    (= (weaponDamage wand) 100)

    ;items
    (atLocation potion j5)
    (= (weaponDamage potion) 30)
    (on potion floor)
    (atLocation horcrux j13)
    (on horcrux floor)
    (atLocation snitch j10)
    (on snitch tree)
    (atLocation broom j17)
    (on broom box)
    (atLocation chicken j4)
    (on chicken floor)
    (= (foodValue chicken) 30)
    (atLocation burger j9)
    (on burger floor)
    (= (foodValue burger) 40)
    (atLocation pizza j18)
    (on pizza floor)
    (= (foodValue pizza) 50)

    ;gold
    (atLocation gold1 j2)
    (on gold1 floor)
    (atLocation gold2 j6)
    (on gold2 floor)
    (atLocation gold3 j14)
    (on gold3 floor)

    ;box
    (atLocation box j17)
    (on box floor)
    ;tree
    (atLocation tree j10)

    ;monsters
     (not (isMonsterDead dragon))
     (= (monsterHealth dragon) 30)
     (= (monsterStrength dragon) 30)
     (atLocation dragon j7)

     (not (isMonsterDead bellatrix))
     (= (monsterHealth bellatrix) 50)
     (= (monsterStrength bellatrix) 50)
     (atLocation bellatrix j12)

     (not (isMonsterDead voldemort))
     (= (monsterHealth voldemort) 100)
     (= (monsterStrength voldemort) 60)
     (atLocation voldemort j19)

     (= (monstersSlain) 0)
)

(:goal (and
    (atLocation harry j20)
    (carryItem harry broom)
    (carryItem harry horcrux)
    (carryItem harry snitch)
    (isMonsterDead dragon)
    (isMonsterDead bellatrix)
    (isMonsterDead voldemort)    
))
)

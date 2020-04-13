;       
; j1 ---> j2 ---> j3 <-- j6
;                ---
;                 |      |
;                 |      |
;                 |      |
;                j4 --- >j5 --- j7 --- j8 --> j9 --> j10<-----j13---->j14
;                                                    ---      |
;                                                     |       |
;                                                     |       |
;                                                     |------->j12
;                                                    j11

 (define (problem problemE)
 (:domain maze)
 (:objects
  j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 - Junction
  polarBear - Player
  ice - Floor
  fisherman1 fisherman2 - Vendor
  furrier1 furrier2 furrier3 - Monster
  i - Inventory
  shield - Shield
  key - Key
  family - Item
  bonito seaBass - Food ;item
  spear - Weapon
  f - Floor 
  gold - Gold
  treasure1 treasure2 treasure3 treasure4 - Box
 )

 (:init

     ;One ways
     (isConnected j1 j2)
     (isConnected j2 j3)
     (isConnected j3 j4)
     (isConnected j4 j5)
     (isConnected j6 j3)
     (isConnected j5 j7)
     (isConnected j7 j8)
     (isConnected j8 j9)
     (isConnected j9 j10)
     (isConnected j10 j11)
     (isConnected j11 j12)
     (isConnected j12 j13)
     (isConnected j13 j10)
     (isConnected j13 j14)
     (isConnected j14 j15)

     ;Reversed way
     (isConnected j5 j6)
     (isConnected j6 j5)

     ;locked junctions
     (isLocked j9 j10)

     ;Distance between junctions
     (= (distanceBetweenJunctions j1 j2) 1)
     (= (distanceBetweenJunctions j2 j3) 1)
     (= (distanceBetweenJunctions j3 j4) 1)
     (= (distanceBetweenJunctions j4 j5) 1)
     (= (distanceBetweenJunctions j5 j6) 1)
     (= (distanceBetweenJunctions j6 j3) 1)
     (= (distanceBetweenJunctions j5 j7) 1)
     (= (distanceBetweenJunctions j7 j8) 1)
     (= (distanceBetweenJunctions j8 j9) 1)
     (= (distanceBetweenJunctions j9 j10) 1)
     (= (distanceBetweenJunctions j10 j11) 1)
     (= (distanceBetweenJunctions j12 j13) 1)
     (= (distanceBetweenJunctions j13 j10) 1)
     (= (distanceBetweenJunctions j13 j14) 1)
     (= (distanceBetweenJunctions j14 j15) 1)

     ;Inventory
     (=(inventoryCount) 0)
     (=(maxInventorySize) 20)
    
     ;Platform Levels
     (=(platformLevel ice) 0)
     (=(platformLevel treasure1) 1)
     (=(platformLevel treasure2) 1)
     (=(platformLevel treasure3) 1)
     (=(platformLevel treasure4) 1)
   
     ;Player
     (atLocation polarBear j1)
     (on polarBear ice)
     (=(playerHealth) 50)
    
     ;Monster
     (atLocation furrier1 j4)
     (on furrier1 ice)
     (not(isMonsterDead furrier1))
     (=(monstersSlain) 0)
     (=(monsterHealth furrier1) 20)
     (=(monsterStrength furrier1) 10)

     (atLocation furrier2 j8)
     (on furrier2 ice)
     (not(isMonsterDead furrier2))
     (=(monsterHealth furrier2) 20)
     (=(monsterStrength furrier2) 10)

     (atLocation furrier3 j13)
     (on furrier3 ice)
     (not(isMonsterDead furrier3))
     (=(monsterHealth furrier3) 20)    
     (=(monsterStrength furrier3) 10)

     ;Box
     (atLocation treasure1 j2)
     (on treasure1 ice)
     (on key treasure1)

     (atLocation treasure2 j3)
     (on treasure2 ice)
     (not(isUnlocked treasure2))
     (inBox treasure2 seaBass)

     (atLocation treasure3 j5)
     (on treasure3 ice)
     (on gold treasure3)

     (atLocation treasure4 j10)
     (on treasure4 ice)
     (not(isUnlocked treasure4))
     (inBox treasure4 gold)

     ;weapon
     (atLocation spear j6)
     (on spear ice)
     (=(weaponDamage spear)30)

     ;Vendor
     (atLocation fisherman1 j7)
     (sellItem fisherman1 bonito)

     (atLocation fisherman2 j12) 
     (sellItem fisherman2 bonito)

     ;Key
     (atLocation key j11)

     ;Food
     (atLocation bonito j14)
 )
 (:goal (and  (atLocation polarBear j15) (carryItem polarBear bonito) (isUnlocked treasure4) 
         (not(inBox treasure2 seaBass))(isMonsterDead furrier1)) 
 )
 )

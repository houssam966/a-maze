
(define (problem problem_fight) 
(:domain maze)

;Map
;key
;  - = connection
;this map is linear
;
; j0-j1-j2-j3-j4-j5-j6-j7-j8-j9-j10-j11-j12-j13-j14-j15-j16-j17-j18-j19-j20-j21
;

(:objects 
    j0 j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 j16 j17 j18 j19 j20 j21 - Junction

    hagger - Player

    twoP1 twoP2 twoP3 dug1 dug2 dug3 billBull1 billBull2 bred andoreJr axl1 axl2 hollywood elGado poison slash simons jake andore belger - Monster
    i - Item
    s - Shield
    apple pizza barbecue - Food
    in - Inventory
    diamond watch - Gold
    k - Key
    b - Box
    f - Floor
    leadPipe - Weapon
    v - Vendor

)

(:init

    (= playerHealth 100)
    (= playerWealth 0)
    (= monstersSlain 0)
    (= inventoryCount 0)
    (= maxInventorySize 5)

    (on hagger f)
    (on leadPipe f)
    (on apple f)
    (on pizza f)
    (on barbecue f)
    (on diamond f)
    (on watch f)

    (on twoP1 f)
    (on twoP2 f)
    (on twoP3 f)
    (on dug1 f)
    (on dug2 f)
    (on dug3 f)
    (on billBull1 f)
    (on billBull2 f)
    (on bred f)
    (on andoreJr f)
    (on axl1 f)
    (on axl2 f)
    (on hollywood f)
    (on elGado f)
    (on poison f)
    (on slash f)
    (on simons f)
    (on jake f)
    (on andore f)
    (on belger f)


    (isConnected j0 j1)
    (= (distanceBetweenJunctions j0 j1) 0)
    (isConnected j1 j2)
    (= (distanceBetweenJunctions j1 j2) 0)
    (isConnected j2 j3)
    (= (distanceBetweenJunctions j2 j3) 0)
    (isConnected j3 j4)
    (= (distanceBetweenJunctions j3 j4) 0)
    (isConnected j4 j5)
    (= (distanceBetweenJunctions j4 j5) 0)
    (isConnected j5 j6)
    (= (distanceBetweenJunctions j5 j6) 0)
    (isConnected j6 j7)
    (= (distanceBetweenJunctions j6 j7) 0)
    (isConnected j7 j8)
    (= (distanceBetweenJunctions j7 j8) 0)
    (isConnected j8 j9)
    (= (distanceBetweenJunctions j8 j9) 0)
    (isConnected j9 j10)
    (= (distanceBetweenJunctions j9 j10) 0)
    (isConnected j10 j11)
    (= (distanceBetweenJunctions j10 j11) 0)
    (isConnected j11 j12)
    (= (distanceBetweenJunctions j11 j12) 0)
    (isConnected j12 j13)
    (= (distanceBetweenJunctions j12 j13) 0)
    (isConnected j13 j14)
    (= (distanceBetweenJunctions j13 j14) 0)
    (isConnected j14 j15)
    (= (distanceBetweenJunctions j14 j15) 0)
    (isConnected j15 j16)
    (= (distanceBetweenJunctions j15 j16) 0)
    (isConnected j16 j17)
    (= (distanceBetweenJunctions j16 j17) 0)
    (isConnected j17 j18)
    (= (distanceBetweenJunctions j17 j18) 0)
    (isConnected j18 j19)
    (= (distanceBetweenJunctions j18 j19) 0)
    (isConnected j19 j20)
    (= (distanceBetweenJunctions j19 j20) 0)
    (isConnected j20 j21)
    (= (distanceBetweenJunctions j20 j21) 0)

    (atLocation hagger j0)

    ;weapon
    (= (weaponDamage leadPipe) 30)
    (atLocation leadPipe j0)


    ;enemies
    ;health
    (= (monsterHealth twoP1) 10)
    (= (monsterHealth twoP2) 10)
    (= (monsterHealth twoP3) 10)

    (= (monsterStrength twoP1) 10)
    (= (monsterStrength twoP2) 10)
    (= (monsterStrength twoP3) 10)

    (= (monsterHealth dug1) 15)
    (= (monsterHealth dug2) 15)
    (= (monsterHealth dug3) 15)

    (= (monsterStrength dug1) 15)
    (= (monsterStrength dug2) 15)
    (= (monsterStrength dug3) 15)

    (= (monsterHealth billBull1) 20)
    (= (monsterHealth billBull2) 20)
    (= (monsterStrength billBull1) 20)
    (= (monsterStrength billBull2) 20)

    (= (monsterHealth bred) 15)
    (= (monsterStrength bred) 15)

    (= (monsterHealth andoreJr) 40)
    (= (monsterStrength andoreJr) 40)
    
    (= (monsterHealth axl1) 20)
    (= (monsterHealth axl2) 20)
    (= (monsterStrength axl1) 20)
    (= (monsterStrength axl2) 20)

    (= (monsterHealth hollywood) 15)
    (= (monsterStrength hollywood) 15)

    (= (monsterHealth elGado) 15)
    (= (monsterStrength elGado) 15)

    (= (monsterHealth poison) 15)
    (= (monsterStrength poison) 15)

    (= (monsterHealth slash) 15)
    (= (monsterStrength slash) 15)

    (= (monsterHealth simons) 10)
    (= (monsterStrength simons) 10)

    (= (monsterHealth jake) 10)
    (= (monsterStrength jake) 10)

    (= (monsterHealth andore) 45)
    (= (monsterStrength andore) 45)

    (= (monsterHealth belger) 50)
    (= (monsterStrength belger) 50)

    (atLocation twoP1 j1)
    (atLocation twoP2 j2)
    (atLocation twoP3 j3)
    (atLocation dug1 j4)
    (atLocation dug2 j5)
    (atLocation dug3 j6)
    (atLocation billBull1 j7)
    (atLocation billBull2 j8)
    (atLocation bred j9)
    (atLocation andoreJr j10)
    (atLocation axl1 j11)
    (atLocation axl2 j12)
    (atLocation hollywood j13)
    (atLocation elGado j14)
    (atLocation poison j15)
    (atLocation slash j16)
    (atLocation simons j17)
    (atLocation jake j18)
    (atLocation andore j19)
    (atLocation belger j20)



    (= (foodValue apple) 30)
    (atLocation apple j4)
    (= (foodValue pizza) 50)
    (atLocation pizza j8)
    (= (foodValue barbecue) 100)
    (atLocation barbecue j15)
)

;hagger must beat up every gang member and reach the end of the room
(:goal (and 
    (atLocation hagger j21)
    (isMonsterDead twoP1)
    (isMonsterDead twoP2)
    (isMonsterDead twoP3)
    (isMonsterDead dug1)
    (isMonsterDead dug2)
    (isMonsterDead dug3)
    (isMonsterDead billBull1)
    (isMonsterDead billBull2)
    (isMonsterDead bred)
    (isMonsterDead andoreJr)
    (isMonsterDead axl1)
    (isMonsterDead axl2)
    (isMonsterDead hollywood)
    (isMonsterDead elGado)
    (isMonsterDead poison)
    (isMonsterDead slash)
    (isMonsterDead simons)
    (isMonsterDead jake)
    (isMonsterDead andore)
    (isMonsterDead belger)
    )    
    
)

)
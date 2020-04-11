; The aim of this problem is to get to the end point, j500
; This is a visual representation of the map of the maze:
;
; j1 --- j2 --- j3 -- j4 ......... j499 -- j500
;
;

(define (problem minecraft)
(:domain maze)
(:objects
j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 j16 j17 j18 j19 j20 j21 j22 j23 j24 j25 j26 j27 j28 j29 j30
j31 j32 j33 j34 j35 j36 j37 j38 j39 j40 j41 j42 j43 j44 j45 j46 j47 j48 j49 j50 j51 j52 j53 j54 j55 j56 j57 j58 j59 j60
j61 j62 j63 j64 j65 j66 j67 j68 j69 j70 j71 j72 j73 j74 j75 j76 j77 j78 j79 j80 j81 j82 j83 j84 j85 j86 j87 j88 j89 j90
j91 j92 j93 j94 j95 j96 j97 j98 j99 j100 - Junction
 p - Player
 v - Vendor
 enderDragon wither - Monster
 i - Inventory
 shield - Shield
 key - Key
 chicken - Food
 diamondSword bow - Weapon
 f - Floor
 g - Gold
 b - Box
)

(:init

    ;Normal Direction
    (isConnected j1 j2)
    (isConnected j2 j3)
    (isConnected j3 j4)
    (isConnected j4 j5)
    (isConnected j5 j6)
    (isConnected j6 j7)
    (isConnected j7 j8)
    (isConnected j8 j9)
    (isConnected j9 j10)
    (isConnected j10 j11)
    (isConnected j11 j12)
    (isConnected j12 j13)
    (isConnected j13 j14)
    (isConnected j14 j15)
    (isConnected j15 j16)
    (isConnected j16 j17)
    (isConnected j17 j18)
    (isConnected j18 j19)
    (isConnected j19 j20)
    (isConnected j20 j21)
    (isConnected j21 j22)
    (isConnected j22 j23)
    (isConnected j23 j24)
    (isConnected j24 j25)
    (isConnected j25 j26)
    (isConnected j26 j27)
    (isConnected j27 j28)
    (isConnected j28 j29)
    (isConnected j29 j30)
    (isConnected j30 j31)
    (isConnected j31 j32)
    (isConnected j32 j33)
    (isConnected j33 j34)
    (isConnected j34 j35)
    (isConnected j35 j36)
    (isConnected j36 j37)
    (isConnected j37 j38)
    (isConnected j38 j39)
    (isConnected j39 j40)
    (isConnected j40 j41)
    (isConnected j41 j42)
    (isConnected j42 j43)
    (isConnected j43 j44)
    (isConnected j44 j45)
    (isConnected j45 j46)
    (isConnected j46 j47)
    (isConnected j47 j48)
    (isConnected j48 j49)
    (isConnected j49 j50)
    (isConnected j50 j51)
    (isConnected j51 j52)
    (isConnected j52 j53)
    (isConnected j53 j54)
    (isConnected j54 j55)
    (isConnected j55 j56)
    (isConnected j56 j57)
    (isConnected j57 j58)
    (isConnected j58 j59)
    (isConnected j59 j60)
    (isConnected j60 j61)
    (isConnected j61 j62)
    (isConnected j62 j63)
    (isConnected j63 j64)
    (isConnected j64 j65)
    (isConnected j65 j66)
    (isConnected j66 j67)
    (isConnected j67 j68)
    (isConnected j68 j69)
    (isConnected j69 j70)
    (isConnected j70 j71)
    (isConnected j71 j72)
    (isConnected j72 j73)
    (isConnected j73 j74)
    (isConnected j74 j75)
    (isConnected j75 j76)
    (isConnected j76 j77)
    (isConnected j77 j78)
    (isConnected j78 j79)
    (isConnected j79 j80)
    (isConnected j80 j81)
    (isConnected j81 j82)
    (isConnected j82 j83)
    (isConnected j83 j84)
    (isConnected j84 j85)
    (isConnected j85 j86)
    (isConnected j86 j87)
    (isConnected j87 j88)
    (isConnected j88 j89)
    (isConnected j89 j90)
    (isConnected j90 j91)
    (isConnected j91 j92)
    (isConnected j92 j93)
    (isConnected j93 j94)
    (isConnected j94 j95)
    (isConnected j95 j96)
    (isConnected j96 j97)
    (isConnected j97 j98)
    (isConnected j98 j99)
    (isConnected j99 j100)

    ; ;Reverse Direction
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
    (isConnected j21 j20)
    (isConnected j22 j21)
    (isConnected j23 j22)
    (isConnected j24 j23)
    (isConnected j25 j24)
    (isConnected j26 j25)
    (isConnected j27 j26)
    (isConnected j28 j27)
    (isConnected j29 j28)
    (isConnected j30 j29)
    (isConnected j31 j30)
    (isConnected j32 j31)
    (isConnected j33 j32)
    (isConnected j34 j33)
    (isConnected j35 j34)
    (isConnected j36 j35)
    (isConnected j37 j36)
    (isConnected j38 j37)
    (isConnected j39 j38)
    (isConnected j40 j39)
    (isConnected j41 j40)
    (isConnected j42 j41)
    (isConnected j43 j42)
    (isConnected j44 j43)
    (isConnected j45 j44)
    (isConnected j46 j45)
    (isConnected j47 j46)
    (isConnected j48 j47)
    (isConnected j49 j48)
    (isConnected j50 j49)
    (isConnected j51 j50)
    (isConnected j52 j51)
    (isConnected j53 j52)
    (isConnected j54 j53)
    (isConnected j55 j54)
    (isConnected j56 j55)
    (isConnected j57 j56)
    (isConnected j58 j57)
    (isConnected j59 j58)
    (isConnected j60 j59)
    (isConnected j61 j60)
    (isConnected j62 j61)
    (isConnected j63 j62)
    (isConnected j64 j63)
    (isConnected j65 j64)
    (isConnected j66 j65)
    (isConnected j67 j66)
    (isConnected j68 j67)
    (isConnected j69 j68)
    (isConnected j70 j69)
    (isConnected j71 j70)
    (isConnected j72 j71)
    (isConnected j73 j72)
    (isConnected j74 j73)
    (isConnected j75 j74)
    (isConnected j76 j75)
    (isConnected j77 j76)
    (isConnected j78 j77)
    (isConnected j79 j78)
    (isConnected j80 j79)
    (isConnected j81 j80)
    (isConnected j82 j81)
    (isConnected j83 j82)
    (isConnected j84 j83)
    (isConnected j85 j84)
    (isConnected j86 j85)
    (isConnected j87 j86)
    (isConnected j88 j87)
    (isConnected j89 j88)
    (isConnected j90 j89)
    (isConnected j91 j90)
    (isConnected j92 j91)
    (isConnected j93 j92)
    (isConnected j94 j93)
    (isConnected j95 j94)
    (isConnected j96 j95)
    (isConnected j97 j96)
    (isConnected j98 j97)
    (isConnected j99 j98)
    (isConnected j100 j99)

    ;Distances
    (= (distanceBetweenJunctions j1 j2) 2)
    (= (distanceBetweenJunctions j2 j1) 2)
    (= (distanceBetweenJunctions j2 j3) 2)
    (= (distanceBetweenJunctions j3 j2) 2)
    (= (distanceBetweenJunctions j3 j4) 2)
    (= (distanceBetweenJunctions j4 j3) 2)
    (= (distanceBetweenJunctions j4 j5) 2)
    (= (distanceBetweenJunctions j5 j4) 2)
    (= (distanceBetweenJunctions j5 j6) 2)
    (= (distanceBetweenJunctions j6 j5) 2)
    (= (distanceBetweenJunctions j6 j7) 2)
    (= (distanceBetweenJunctions j7 j6) 2)
    (= (distanceBetweenJunctions j7 j8) 2)
    (= (distanceBetweenJunctions j8 j7) 2)
    (= (distanceBetweenJunctions j8 j9) 2)
    (= (distanceBetweenJunctions j9 j8) 2)
    (= (distanceBetweenJunctions j9 j10) 2)
    (= (distanceBetweenJunctions j10 j9) 2)
    (= (distanceBetweenJunctions j10 j11) 2)
    (= (distanceBetweenJunctions j11 j10) 2)
    (= (distanceBetweenJunctions j11 j12) 2)
    (= (distanceBetweenJunctions j12 j11) 2)
    (= (distanceBetweenJunctions j12 j13) 2)
    (= (distanceBetweenJunctions j13 j12) 2)
    (= (distanceBetweenJunctions j13 j14) 2)
    (= (distanceBetweenJunctions j14 j13) 2)
    (= (distanceBetweenJunctions j14 j15) 2)
    (= (distanceBetweenJunctions j15 j14) 2)
    (= (distanceBetweenJunctions j15 j16) 2)
    (= (distanceBetweenJunctions j16 j15) 2)
    (= (distanceBetweenJunctions j16 j17) 2)
    (= (distanceBetweenJunctions j17 j16) 2)
    (= (distanceBetweenJunctions j17 j18) 2)
    (= (distanceBetweenJunctions j18 j17) 2)
    (= (distanceBetweenJunctions j18 j19) 2)
    (= (distanceBetweenJunctions j19 j18) 2)
    (= (distanceBetweenJunctions j19 j20) 2)
    (= (distanceBetweenJunctions j20 j19) 2)
    (= (distanceBetweenJunctions j20 j21) 2)
    (= (distanceBetweenJunctions j21 j20) 2)
    (= (distanceBetweenJunctions j21 j22) 2)
    (= (distanceBetweenJunctions j22 j21) 2)
    (= (distanceBetweenJunctions j22 j23) 2)
    (= (distanceBetweenJunctions j23 j22) 2)
    (= (distanceBetweenJunctions j23 j24) 2)
    (= (distanceBetweenJunctions j24 j23) 2)
    (= (distanceBetweenJunctions j24 j25) 2)
    (= (distanceBetweenJunctions j25 j24) 2)
    (= (distanceBetweenJunctions j25 j26) 2)
    (= (distanceBetweenJunctions j26 j25) 2)
    (= (distanceBetweenJunctions j26 j27) 2)
    (= (distanceBetweenJunctions j27 j26) 2)
    (= (distanceBetweenJunctions j27 j28) 2)
    (= (distanceBetweenJunctions j28 j27) 2)
    (= (distanceBetweenJunctions j28 j29) 2)
    (= (distanceBetweenJunctions j29 j28) 2)
    (= (distanceBetweenJunctions j29 j30) 2)
    (= (distanceBetweenJunctions j30 j29) 2)
    (= (distanceBetweenJunctions j30 j31) 2)
    (= (distanceBetweenJunctions j31 j30) 2)
    (= (distanceBetweenJunctions j31 j32) 2)
    (= (distanceBetweenJunctions j32 j31) 2)
    (= (distanceBetweenJunctions j32 j33) 2)
    (= (distanceBetweenJunctions j33 j32) 2)
    (= (distanceBetweenJunctions j33 j34) 2)
    (= (distanceBetweenJunctions j34 j33) 2)
    (= (distanceBetweenJunctions j34 j35) 2)
    (= (distanceBetweenJunctions j35 j34) 2)
    (= (distanceBetweenJunctions j35 j36) 2)
    (= (distanceBetweenJunctions j36 j35) 2)
    (= (distanceBetweenJunctions j36 j37) 2)
    (= (distanceBetweenJunctions j37 j36) 2)
    (= (distanceBetweenJunctions j37 j38) 2)
    (= (distanceBetweenJunctions j38 j37) 2)
    (= (distanceBetweenJunctions j38 j39) 2)
    (= (distanceBetweenJunctions j39 j38) 2)
    (= (distanceBetweenJunctions j39 j40) 2)
    (= (distanceBetweenJunctions j40 j39) 2)
    (= (distanceBetweenJunctions j40 j41) 2)
    (= (distanceBetweenJunctions j41 j40) 2)
    (= (distanceBetweenJunctions j41 j42) 2)
    (= (distanceBetweenJunctions j42 j41) 2)
    (= (distanceBetweenJunctions j42 j43) 2)
    (= (distanceBetweenJunctions j43 j42) 2)
    (= (distanceBetweenJunctions j43 j44) 2)
    (= (distanceBetweenJunctions j44 j43) 2)
    (= (distanceBetweenJunctions j44 j45) 2)
    (= (distanceBetweenJunctions j45 j44) 2)
    (= (distanceBetweenJunctions j45 j46) 2)
    (= (distanceBetweenJunctions j46 j45) 2)
    (= (distanceBetweenJunctions j46 j47) 2)
    (= (distanceBetweenJunctions j47 j46) 2)
    (= (distanceBetweenJunctions j47 j48) 2)
    (= (distanceBetweenJunctions j48 j47) 2)
    (= (distanceBetweenJunctions j48 j49) 2)
    (= (distanceBetweenJunctions j49 j48) 2)
    (= (distanceBetweenJunctions j49 j50) 2)
    (= (distanceBetweenJunctions j50 j49) 2)
    (= (distanceBetweenJunctions j50 j51) 2)
    (= (distanceBetweenJunctions j51 j50) 2)
    (= (distanceBetweenJunctions j51 j52) 2)
    (= (distanceBetweenJunctions j52 j51) 2)
    (= (distanceBetweenJunctions j52 j53) 2)
    (= (distanceBetweenJunctions j53 j52) 2)
    (= (distanceBetweenJunctions j53 j54) 2)
    (= (distanceBetweenJunctions j54 j53) 2)
    (= (distanceBetweenJunctions j54 j55) 2)
    (= (distanceBetweenJunctions j55 j54) 2)
    (= (distanceBetweenJunctions j55 j56) 2)
    (= (distanceBetweenJunctions j56 j55) 2)
    (= (distanceBetweenJunctions j56 j57) 2)
    (= (distanceBetweenJunctions j57 j56) 2)
    (= (distanceBetweenJunctions j57 j58) 2)
    (= (distanceBetweenJunctions j58 j57) 2)
    (= (distanceBetweenJunctions j58 j59) 2)
    (= (distanceBetweenJunctions j59 j58) 2)
    (= (distanceBetweenJunctions j59 j60) 2)
    (= (distanceBetweenJunctions j60 j59) 2)
    (= (distanceBetweenJunctions j60 j61) 2)
    (= (distanceBetweenJunctions j61 j60) 2)
    (= (distanceBetweenJunctions j61 j62) 2)
    (= (distanceBetweenJunctions j62 j61) 2)
    (= (distanceBetweenJunctions j62 j63) 2)
    (= (distanceBetweenJunctions j63 j62) 2)
    (= (distanceBetweenJunctions j63 j64) 2)
    (= (distanceBetweenJunctions j64 j63) 2)
    (= (distanceBetweenJunctions j64 j65) 2)
    (= (distanceBetweenJunctions j65 j64) 2)
    (= (distanceBetweenJunctions j65 j66) 2)
    (= (distanceBetweenJunctions j66 j65) 2)
    (= (distanceBetweenJunctions j66 j67) 2)
    (= (distanceBetweenJunctions j67 j66) 2)
    (= (distanceBetweenJunctions j67 j68) 2)
    (= (distanceBetweenJunctions j68 j67) 2)
    (= (distanceBetweenJunctions j68 j69) 2)
    (= (distanceBetweenJunctions j69 j68) 2)
    (= (distanceBetweenJunctions j69 j70) 2)
    (= (distanceBetweenJunctions j70 j69) 2)
    (= (distanceBetweenJunctions j70 j71) 2)
    (= (distanceBetweenJunctions j71 j70) 2)
    (= (distanceBetweenJunctions j71 j72) 2)
    (= (distanceBetweenJunctions j72 j71) 2)
    (= (distanceBetweenJunctions j72 j73) 2)
    (= (distanceBetweenJunctions j73 j72) 2)
    (= (distanceBetweenJunctions j73 j74) 2)
    (= (distanceBetweenJunctions j74 j73) 2)
    (= (distanceBetweenJunctions j74 j75) 2)
    (= (distanceBetweenJunctions j75 j74) 2)
    (= (distanceBetweenJunctions j75 j76) 2)
    (= (distanceBetweenJunctions j76 j75) 2)
    (= (distanceBetweenJunctions j76 j77) 2)
    (= (distanceBetweenJunctions j77 j76) 2)
    (= (distanceBetweenJunctions j77 j78) 2)
    (= (distanceBetweenJunctions j78 j77) 2)
    (= (distanceBetweenJunctions j78 j79) 2)
    (= (distanceBetweenJunctions j79 j78) 2)
    (= (distanceBetweenJunctions j79 j80) 2)
    (= (distanceBetweenJunctions j80 j79) 2)
    (= (distanceBetweenJunctions j80 j81) 2)
    (= (distanceBetweenJunctions j81 j80) 2)
    (= (distanceBetweenJunctions j81 j82) 2)
    (= (distanceBetweenJunctions j82 j81) 2)
    (= (distanceBetweenJunctions j82 j83) 2)
    (= (distanceBetweenJunctions j83 j82) 2)
    (= (distanceBetweenJunctions j83 j84) 2)
    (= (distanceBetweenJunctions j84 j83) 2)
    (= (distanceBetweenJunctions j84 j85) 2)
    (= (distanceBetweenJunctions j85 j84) 2)
    (= (distanceBetweenJunctions j85 j86) 2)
    (= (distanceBetweenJunctions j86 j85) 2)
    (= (distanceBetweenJunctions j86 j87) 2)
    (= (distanceBetweenJunctions j87 j86) 2)
    (= (distanceBetweenJunctions j87 j88) 2)
    (= (distanceBetweenJunctions j88 j87) 2)
    (= (distanceBetweenJunctions j88 j89) 2)
    (= (distanceBetweenJunctions j89 j88) 2)
    (= (distanceBetweenJunctions j89 j90) 2)
    (= (distanceBetweenJunctions j90 j89) 2)
    (= (distanceBetweenJunctions j90 j91) 2)
    (= (distanceBetweenJunctions j91 j90) 2)
    (= (distanceBetweenJunctions j91 j92) 2)
    (= (distanceBetweenJunctions j92 j91) 2)
    (= (distanceBetweenJunctions j92 j93) 2)
    (= (distanceBetweenJunctions j93 j92) 2)
    (= (distanceBetweenJunctions j93 j94) 2)
    (= (distanceBetweenJunctions j94 j93) 2)
    (= (distanceBetweenJunctions j94 j95) 2)
    (= (distanceBetweenJunctions j95 j94) 2)
    (= (distanceBetweenJunctions j95 j96) 2)
    (= (distanceBetweenJunctions j96 j95) 2)
    (= (distanceBetweenJunctions j96 j97) 2)
    (= (distanceBetweenJunctions j97 j96) 2)
    (= (distanceBetweenJunctions j97 j98) 2)
    (= (distanceBetweenJunctions j98 j97) 2)
    (= (distanceBetweenJunctions j98 j99) 2)
    (= (distanceBetweenJunctions j99 j98) 2)
    (= (distanceBetweenJunctions j99 j100) 2)
    (= (distanceBetweenJunctions j100 j99) 2)

    ;locked junctions
    (isLocked j50 j51)
    (isLocked j99 j100)

    ;Player
    (=(playerHealth) 130)
    (atLocation p j1)
    (on p f) ;player on the floor initially so they can move between the junctions
    (=(inventoryCount) 0)
    (=(maxInventorySize) 5)

    ;Monsters
    (not(isMonsterDead enderDragon))
    (=(monstersSlain) 0)    ;without this it doesnt work
    (=(monsterHealth enderDragon) 100)
    (=(monsterStrength enderDragon) 20)
    (atLocation enderDragon j99)

    (not(isMonsterDead wither))
    (=(monsterHealth wither) 50)
    (=(monsterStrength wither) 20)
    (atLocation wither j50)

    ;Weapons
    (=(weaponDamage diamondSword) 100)
    (atLocation diamondSword j51)
    (on diamondSword f) ;sword on the floor so player can pickup

    (=(weaponDamage bow) 50)
    (atLocation bow j1)
    (on bow f)

    ;food
    (atLocation chicken j60)
    (=(foodValue chicken) 100)
    (on chicken f )
)

(:goal (and (atLocation p j100) (isMonsterDead enderDragon) (isMonsterDead wither) ))

)

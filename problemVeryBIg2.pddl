(define (problem problem_huge_maze)
(:domain maze)

;map


;    j0
;    :
;    :
;    j1---j2---j3---j4---j5---j6---j7---j8---j9---j10
;    |    |    |    |    |    |    |    |    |    |
;   j11--j12--j13--j14--j15--j16--j17--j18--j19--j20
;    |    |    |    |    |    |    |    |    |    |
;   j21--j22--j23--j24--j25--j26--j27--j28--j29--j30
;    |    |    |    |    |    |    |    |    |    |
;   j31--j32--j33--j34--j35--j36--j37--j38--j39--j40
;    |    |    |    |    |    |    |    |    |    |
;   j41--j42--j43--j44--j45--j46--j47--j48--j49--j50
;    |    |    |    |    |    |    |    |    |    |
;   j51--j52--j53--j54--j55--j56--j57--j58--j59--j60
;    |    |    |    |    |    |    |    |    |    |
;   j61--j62--j63--j64--j65--j66--j67--j68--j69--j70
;    |    |    |    |    |    |    |    |    |    |
;   j71--j72--j73--j74--j75--j76--j77--j78--j79--j80
;    |    |    |    |    |    |    |    |    |    |
;   j81--j82--j83--j84--j85--j86--j87--j78--j89--j90
;    |    |    |    |    |    |    |    |    |    |
;   j91--j92--j93--j94--j95--j96--j97--j97--j99--j100
;                                                 |
;                                                 |
;                                                j101

(:objects

   j0 j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 j16 j17 j18 j19 j20 j21 j22 j23 j24 j25 j26 j27 j28 j29 j30 j31 j32 j33 j34 j35 j36 j37 j38 j39 j40 j41 j42 j43 j44 j45 j46 j47 j48 j49 j50 j51 j52 j53 j54 j55 j56 j57 j58 j59 j60 j61 j62 j63 j64 j65 j66 j67 j68 j69 j70 j71 j72 j73 j74 j75 j76 j77 j78 j79 j80 j81 j82 j83 j84 j85 j86 j87 j88 j89 j90 j91 j92 j93 j94 j95 j96 j97 j98 j99 j100 j101 j102 j103 j104 j105 j106 j107 j108 j109 j110 j111 j112 j113 j114 j115 j116 j117 j118 j119 j120 j121 j122 j123 j124 j125 j126 j127 j128 j129 j130 j131 j132 j133 j134 j135 j136 j137 j138 j139 j140 j141 j142 j143 j144 j145 j146 j147 j148 j149 j150 j151 j152 j153 j154 j155 j156 j157 j158 j159 j160 j161 j162 j163 j164 j165 j166 j167 j168 j169 j170 j171 j172 j173 j174 j175 j176 j177 j178 j179 j180 j181 j182 j183 j184 j185 j186 j187 j188 j189 j190 j191 j192 j193 j194 j195 j196 j197 j198 j199 j200 - Junction
    p - Player
    m1 m2 m3 m4 m5 - Monster
    specialItem - Item
    in - Inventory
    s - Shield
    k1 - Key
    b - Box
    f - Floor
    g1 g2 g3 - Gold
    apple banana carrot - Food
    sword - Weapon
)


(:init
    
    (= playerHealth 2)
    (= playerWealth 0)
    (= monstersSlain 0)
    (= inventoryCount 0)
    (= maxInventorySize 5)

    (on p f)
    (on specialItem f)
    (on k1 f)
    (on g1 f)
    (on g2 f)
    (on g3 f)
    (on sword f)
    (on apple f)
    (on banana f)
    (on carrot f)
    (on m1 f)
    (on m2 f)
    (on m3 f)
    (on m4 f)
    (on m5 f)

    ;map
 
    (isLocked j0 j1)
    (isConnected j1 j0)

    (isConnected j1 j2)
    (isConnected j2 j1)

    (isConnected j2 j3)
    (isConnected j3 j2)

    (isConnected j3 j4)
    (isConnected j4 j3)

    (isConnected j4 j5)
    (isConnected j5 j4)

    (isConnected j5 j6)
    (isConnected j6 j5)

    (isConnected j6 j7)
    (isConnected j7 j6)

    (isConnected j7 j8)
    (isConnected j8 j7)

    (isConnected j8 j9)
    (isConnected j9 j8)

    (isConnected j9 j10)
    (isConnected j10 j9)

    (isConnected j1 j11)
    (isConnected j11 j1)

    (isConnected j2 j12)
    (isConnected j12 j2)

    (isConnected j3 j13)
    (isConnected j13 j3)

    (isConnected j4 j14)
    (isConnected j14 j4)

    (isConnected j5 j15)
    (isConnected j15 j5)

    (isConnected j6 j16)
    (isConnected j16 j6)

    (isConnected j7 j17)
    (isConnected j17 j7)

    (isConnected j8 j18)
    (isConnected j18 j8)

    (isConnected j9 j19)
    (isConnected j19 j9)

    (isConnected j10 j20)
    (isConnected j20 j10)



    (isConnected j11 j12)
    (isConnected j12 j11)


    (isConnected j12 j13)
    (isConnected j13 j12)


    (isConnected j13 j14)
    (isConnected j14 j13)


    (isConnected j14 j15)
    (isConnected j15 j14)


    (isConnected j15 j16)
    (isConnected j16 j15)


    (isConnected j16 j17)
    (isConnected j17 j16)


    (isConnected j17 j18)
    (isConnected j18 j17)


    (isConnected j18 j19)
    (isConnected j19 j18)


    (isConnected j19 j20)
    (isConnected j20 j19)


    (isConnected j10 j20)
    (isConnected j20 j10)


    (isConnected j11 j21)
    (isConnected j21 j11)


    (isConnected j12 j22)
    (isConnected j22 j12)


    (isConnected j13 j23)
    (isConnected j23 j13)


    (isConnected j14 j24)
    (isConnected j24 j14)


    (isConnected j15 j25)
    (isConnected j25 j15)


    (isConnected j16 j26)
    (isConnected j26 j16)


    (isConnected j17 j27)
    (isConnected j27 j17)


    (isConnected j18 j28)
    (isConnected j28 j18)


    (isConnected j19 j29)
    (isConnected j29 j19)





    (isConnected j21 j22)
    (isConnected j22 j21)


    (isConnected j22 j23)
    (isConnected j23 j22)


    (isConnected j23 j24)
    (isConnected j24 j23)


    (isConnected j24 j25)
    (isConnected j25 j24)


    (isConnected j25 j26)
    (isConnected j26 j25)


    (isConnected j26 j27)
    (isConnected j27 j26)


    (isConnected j27 j28)
    (isConnected j28 j27)


    (isConnected j28 j29)
    (isConnected j29 j28)


    (isConnected j29 j30)
    (isConnected j30 j29)


    (isConnected j20 j30)
    (isConnected j30 j20)


    (isConnected j21 j31)
    (isConnected j31 j21)


    (isConnected j22 j32)
    (isConnected j32 j22)


    (isConnected j23 j33)
    (isConnected j33 j23)


    (isConnected j24 j34)
    (isConnected j34 j24)


    (isConnected j25 j35)
    (isConnected j35 j25)


    (isConnected j26 j36)
    (isConnected j36 j26)


    (isConnected j27 j37)
    (isConnected j37 j27)


    (isConnected j28 j38)
    (isConnected j38 j28)


    (isConnected j29 j39)
    (isConnected j39 j29)





    (isConnected j31 j32)
    (isConnected j32 j31)


    (isConnected j32 j33)
    (isConnected j33 j32)


    (isConnected j33 j34)
    (isConnected j34 j33)


    (isConnected j34 j35)
    (isConnected j35 j34)


    (isConnected j35 j36)
    (isConnected j36 j35)


    (isConnected j36 j37)
    (isConnected j37 j36)


    (isConnected j37 j38)
    (isConnected j38 j37)


    (isConnected j38 j39)
    (isConnected j39 j38)


    (isConnected j39 j40)
    (isConnected j40 j39)


    (isConnected j30 j40)
    (isConnected j40 j30)


    (isConnected j31 j41)
    (isConnected j41 j31)


    (isConnected j32 j42)
    (isConnected j42 j32)


    (isConnected j33 j43)
    (isConnected j43 j33)


    (isConnected j34 j44)
    (isConnected j44 j34)


    (isConnected j35 j45)
    (isConnected j45 j35)


    (isConnected j36 j46)
    (isConnected j46 j36)


    (isConnected j37 j47)
    (isConnected j47 j37)


    (isConnected j38 j48)
    (isConnected j48 j38)


    (isConnected j39 j49)
    (isConnected j49 j39)





    (isConnected j41 j42)
    (isConnected j42 j41)


    (isConnected j42 j43)
    (isConnected j43 j42)


    (isConnected j43 j44)
    (isConnected j44 j43)


    (isConnected j44 j45)
    (isConnected j45 j44)


    (isConnected j45 j46)
    (isConnected j46 j45)


    (isConnected j46 j47)
    (isConnected j47 j46)


    (isConnected j47 j48)
    (isConnected j48 j47)


    (isConnected j48 j49)
    (isConnected j49 j48)


    (isConnected j49 j50)
    (isConnected j50 j49)


    (isConnected j40 j50)
    (isConnected j50 j40)


    (isConnected j41 j51)
    (isConnected j51 j41)


    (isConnected j42 j52)
    (isConnected j52 j42)


    (isConnected j43 j53)
    (isConnected j53 j43)


    (isConnected j44 j54)
    (isConnected j54 j44)


    (isConnected j45 j55)
    (isConnected j55 j45)


    (isConnected j46 j56)
    (isConnected j56 j46)


    (isConnected j47 j57)
    (isConnected j57 j47)


    (isConnected j48 j58)
    (isConnected j58 j48)


    (isConnected j49 j59)
    (isConnected j59 j49)





    (isConnected j51 j52)
    (isConnected j52 j51)


    (isConnected j52 j53)
    (isConnected j53 j52)


    (isConnected j53 j54)
    (isConnected j54 j53)


    (isConnected j54 j55)
    (isConnected j55 j54)


    (isConnected j55 j56)
    (isConnected j56 j55)


    (isConnected j56 j57)
    (isConnected j57 j56)


    (isConnected j57 j58)
    (isConnected j58 j57)


    (isConnected j58 j59)
    (isConnected j59 j58)


     (isConnected j59 j60)
    (isConnected j60 j59)


    (isConnected j50 j60)
    (isConnected j60 j50)


    (isConnected j51 j61)
    (isConnected j61 j51)


    (isConnected j52 j62)
    (isConnected j62 j52)


    (isConnected j53 j63)
    (isConnected j63 j53)


    (isConnected j54 j64)
    (isConnected j64 j54)


    (isConnected j55 j65)
    (isConnected j65 j55)


    (isConnected j56 j66)
    (isConnected j66 j56)


    (isConnected j57 j67)
    (isConnected j67 j57)


    (isConnected j58 j68)
    (isConnected j68 j58)


    (isConnected j59 j69)
    (isConnected j69 j59)





    (isConnected j61 j62)
    (isConnected j62 j61)


    (isConnected j62 j63)
    (isConnected j63 j62)


    (isConnected j63 j64)
    (isConnected j64 j63)


    (isConnected j64 j65)
    (isConnected j65 j64)


    (isConnected j65 j66)
    (isConnected j66 j65)


    (isConnected j66 j67)
    (isConnected j67 j66)


    (isConnected j67 j68)
    (isConnected j68 j67)


    (isConnected j68 j69)
    (isConnected j69 j68)


    (isConnected j69 j70)
    (isConnected j70 j69)


    (isConnected j60 j70)
    (isConnected j70 j60)


    (isConnected j61 j71)
    (isConnected j71 j61)


    (isConnected j62 j72)
    (isConnected j72 j62)


    (isConnected j63 j73)
    (isConnected j73 j63)


    (isConnected j64 j74)
    (isConnected j74 j64)


    (isConnected j65 j75)
    (isConnected j75 j65)


    (isConnected j66 j76)
    (isConnected j76 j66)


    (isConnected j67 j77)
    (isConnected j77 j67)


    (isConnected j68 j78)
    (isConnected j78 j68)


    (isConnected j69 j79)
    (isConnected j79 j69)





    (isConnected j71 j72)
    (isConnected j72 j71)


    (isConnected j72 j73)
    (isConnected j73 j72)


    (isConnected j73 j74)
    (isConnected j74 j73)


    (isConnected j74 j75)
    (isConnected j75 j74)


    (isConnected j75 j76)
    (isConnected j76 j75)


    (isConnected j76 j77)
    (isConnected j77 j76)


    (isConnected j77 j78)
    (isConnected j78 j77)


    (isConnected j78 j79)
    (isConnected j79 j78)


    (isConnected j79 j80)
    (isConnected j80 j79)


    (isConnected j70 j80)
    (isConnected j80 j70)


    (isConnected j71 j81)
    (isConnected j81 j71)


    (isConnected j72 j82)
    (isConnected j82 j72)


    (isConnected j73 j83)
    (isConnected j83 j73)


    (isConnected j74 j84)
    (isConnected j84 j74)


    (isConnected j75 j85)
    (isConnected j85 j75)


    (isConnected j76 j86)
    (isConnected j86 j76)


    (isConnected j77 j87)
    (isConnected j87 j77)


    (isConnected j78 j88)
    (isConnected j88 j78)


    (isConnected j79 j89)
    (isConnected j89 j79)





    (isConnected j81 j82)
    (isConnected j82 j81)


    (isConnected j82 j83)
    (isConnected j83 j82)


    (isConnected j83 j84)
    (isConnected j84 j83)


    (isConnected j84 j85)
    (isConnected j85 j84)


    (isConnected j85 j86)
    (isConnected j86 j85)


    (isConnected j86 j87)
    (isConnected j87 j86)


    (isConnected j87 j88)
    (isConnected j88 j87)


    (isConnected j88 j89)
    (isConnected j89 j88)


    (isConnected j89 j90)
    (isConnected j90 j89)


    (isConnected j80 j90)
    (isConnected j90 j80)


    (isConnected j81 j91)
    (isConnected j91 j81)


    (isConnected j82 j92)
    (isConnected j92 j82)


    (isConnected j83 j93)
    (isConnected j93 j83)


    (isConnected j84 j94)
    (isConnected j94 j84)


    (isConnected j85 j95)
    (isConnected j95 j85)


    (isConnected j86 j96)
    (isConnected j96 j86)


    (isConnected j87 j97)
    (isConnected j97 j87)


    (isConnected j88 j98)
    (isConnected j98 j88)


    (isConnected j89 j99)
    (isConnected j99 j89)





    (isConnected j91 j92)
    (isConnected j92 j91)


    (isConnected j92 j93)
    (isConnected j93 j92)


    (isConnected j93 j94)
    (isConnected j94 j93)


    (isConnected j94 j95)
    (isConnected j95 j94)


    (isConnected j95 j96)
    (isConnected j96 j95)


    (isConnected j96 j97)
    (isConnected j97 j96)


    (isConnected j97 j98)
    (isConnected j98 j97)


    (isConnected j98 j99)
    (isConnected j99 j98)


    (isConnected j99 j100)
    (isConnected j100 j99)


    (isConnected j90 j100)
    (isConnected j100 j90)

    (isConnected j100 j101)
    (isConnected j101 j100)


    (isConnected j101 j102)
    (isConnected j102 j101)

    (isConnected j102 j103)
    (isConnected j103 j102)

    (isConnected j103 j104)
    (isConnected j104 j103)

    (isConnected j104 j105)
    (isConnected j105 j104)

    (isConnected j105 j106)
    (isConnected j106 j105)

    (isConnected j106 j107)
    (isConnected j107 j106)

    (isConnected j107 j108)
    (isConnected j108 j107)

    (isConnected j108 j109)
    (isConnected j109 j108)

    (isConnected j109 j110)
    (isConnected j110 j109)

    (isConnected j110 j111)
    (isConnected j111 j110)







    (isConnected j111 j112)
    (isConnected j112 j111)


    (isConnected j112 j113)
    (isConnected j113 j112)


    (isConnected j113 j114)
    (isConnected j114 j113)


    (isConnected j114 j115)
    (isConnected j115 j114)


    (isConnected j115 j116)
    (isConnected j116 j115)


    (isConnected j116 j117)
    (isConnected j117 j116)


    (isConnected j117 j118)
    (isConnected j118 j117)


    (isConnected j118 j119)
    (isConnected j119 j118)


    (isConnected j119 j120)
    (isConnected j120 j119)


    (isConnected j110 j120)
    (isConnected j120 j110)


    (isConnected j111 j121)
    (isConnected j121 j111)


    (isConnected j112 j122)
    (isConnected j122 j112)


    (isConnected j113 j123)
    (isConnected j123 j113)


    (isConnected j114 j124)
    (isConnected j124 j114)


    (isConnected j115 j125)
    (isConnected j125 j115)


    (isConnected j116 j126)
    (isConnected j126 j116)


    (isConnected j117 j127)
    (isConnected j127 j117)


    (isConnected j118 j128)
    (isConnected j128 j118)


    (isConnected j119 j129)
    (isConnected j129 j119)





    (isConnected j121 j122)
    (isConnected j122 j121)


    (isConnected j122 j123)
    (isConnected j123 j122)


    (isConnected j123 j124)
    (isConnected j124 j123)


    (isConnected j124 j125)
    (isConnected j125 j124)


    (isConnected j125 j126)
    (isConnected j126 j125)


    (isConnected j126 j127)
    (isConnected j127 j126)


    (isConnected j127 j128)
    (isConnected j128 j127)


    (isConnected j128 j129)
    (isConnected j129 j128)


    (isConnected j129 j130)
    (isConnected j130 j129)


    (isConnected j120 j130)
    (isConnected j130 j120)


    (isConnected j121 j131)
    (isConnected j131 j121)


    (isConnected j122 j132)
    (isConnected j132 j122)


    (isConnected j123 j133)
    (isConnected j133 j123)


    (isConnected j124 j134)
    (isConnected j134 j124)


    (isConnected j125 j135)
    (isConnected j135 j125)


    (isConnected j126 j136)
    (isConnected j136 j126)


    (isConnected j127 j137)
    (isConnected j137 j127)


    (isConnected j128 j138)
    (isConnected j138 j128)


    (isConnected j129 j139)
    (isConnected j139 j129)





    (isConnected j131 j132)
    (isConnected j132 j131)


    (isConnected j132 j133)
    (isConnected j133 j132)


    (isConnected j133 j134)
    (isConnected j134 j133)


    (isConnected j134 j135)
    (isConnected j135 j134)


    (isConnected j135 j136)
    (isConnected j136 j135)


    (isConnected j136 j137)
    (isConnected j137 j136)


    (isConnected j137 j138)
    (isConnected j138 j137)


    (isConnected j138 j139)
    (isConnected j139 j138)


    (isConnected j139 j140)
    (isConnected j140 j139)


    (isConnected j130 j140)
    (isConnected j140 j130)


    (isConnected j131 j141)
    (isConnected j141 j131)


    (isConnected j132 j142)
    (isConnected j142 j132)


    (isConnected j133 j143)
    (isConnected j143 j133)


    (isConnected j134 j144)
    (isConnected j144 j134)


    (isConnected j135 j145)
    (isConnected j145 j135)


    (isConnected j136 j146)
    (isConnected j146 j136)


    (isConnected j137 j147)
    (isConnected j147 j137)


    (isConnected j138 j148)
    (isConnected j148 j138)


    (isConnected j139 j149)
    (isConnected j149 j139)





    (isConnected j141 j142)
    (isConnected j142 j141)


    (isConnected j142 j143)
    (isConnected j143 j142)


    (isConnected j143 j144)
    (isConnected j144 j143)


    (isConnected j144 j145)
    (isConnected j145 j144)


    (isConnected j145 j146)
    (isConnected j146 j145)


    (isConnected j146 j147)
    (isConnected j147 j146)


    (isConnected j147 j148)
    (isConnected j148 j147)


    (isConnected j148 j149)
    (isConnected j149 j148)


    (isConnected j149 j150)
    (isConnected j150 j149)


    (isConnected j140 j150)
    (isConnected j150 j140)


    (isConnected j141 j151)
    (isConnected j151 j141)


    (isConnected j142 j152)
    (isConnected j152 j142)


    (isConnected j143 j153)
    (isConnected j153 j143)


    (isConnected j144 j154)
    (isConnected j154 j144)


    (isConnected j145 j155)
    (isConnected j155 j145)


    (isConnected j146 j156)
    (isConnected j156 j146)


    (isConnected j147 j157)
    (isConnected j157 j147)


    (isConnected j148 j158)
    (isConnected j158 j148)


    (isConnected j149 j159)
    (isConnected j159 j149)





    (isConnected j151 j152)
    (isConnected j152 j151)


    (isConnected j152 j153)
    (isConnected j153 j152)


    (isConnected j153 j154)
    (isConnected j154 j153)


    (isConnected j154 j155)
    (isConnected j155 j154)


    (isConnected j155 j156)
    (isConnected j156 j155)


    (isConnected j156 j157)
    (isConnected j157 j156)


    (isConnected j157 j158)
    (isConnected j158 j157)


    (isConnected j158 j159)
    (isConnected j159 j158)


    (isConnected j159 j160)
    (isConnected j160 j159)


    (isConnected j150 j160)
    (isConnected j160 j150)


    (isConnected j151 j161)
    (isConnected j161 j151)


    (isConnected j152 j162)
    (isConnected j162 j152)


    (isConnected j153 j163)
    (isConnected j163 j153)


    (isConnected j154 j164)
    (isConnected j164 j154)


    (isConnected j155 j165)
    (isConnected j165 j155)


    (isConnected j156 j166)
    (isConnected j166 j156)


    (isConnected j157 j167)
    (isConnected j167 j157)


    (isConnected j158 j168)
    (isConnected j168 j158)


    (isConnected j159 j169)
    (isConnected j169 j159)





    (isConnected j161 j162)
    (isConnected j162 j161)


    (isConnected j162 j163)
    (isConnected j163 j162)


    (isConnected j163 j164)
    (isConnected j164 j163)


    (isConnected j164 j165)
    (isConnected j165 j164)


    (isConnected j165 j166)
    (isConnected j166 j165)


    (isConnected j166 j167)
    (isConnected j167 j166)


    (isConnected j167 j168)
    (isConnected j168 j167)


    (isConnected j168 j169)
    (isConnected j169 j168)


    (isConnected j169 j170)
    (isConnected j170 j169)


    (isConnected j160 j170)
    (isConnected j170 j160)


    (isConnected j161 j171)
    (isConnected j171 j161)


    (isConnected j162 j172)
    (isConnected j172 j162)


    (isConnected j163 j173)
    (isConnected j173 j163)


    (isConnected j164 j174)
    (isConnected j174 j164)


    (isConnected j165 j175)
    (isConnected j175 j165)


    (isConnected j166 j176)
    (isConnected j176 j166)


    (isConnected j167 j177)
    (isConnected j177 j167)


    (isConnected j168 j178)
    (isConnected j178 j168)


    (isConnected j169 j179)
    (isConnected j179 j169)





    (isConnected j171 j172)
    (isConnected j172 j171)


    (isConnected j172 j173)
    (isConnected j173 j172)


    (isConnected j173 j174)
    (isConnected j174 j173)


    (isConnected j174 j175)
    (isConnected j175 j174)


    (isConnected j175 j176)
    (isConnected j176 j175)


    (isConnected j176 j177)
    (isConnected j177 j176)


    (isConnected j177 j178)
    (isConnected j178 j177)


    (isConnected j178 j179)
    (isConnected j179 j178)


    (isConnected j179 j180)
    (isConnected j180 j179)


    (isConnected j170 j180)
    (isConnected j180 j170)


    (isConnected j171 j181)
    (isConnected j181 j171)


    (isConnected j172 j182)
    (isConnected j182 j172)


    (isConnected j173 j183)
    (isConnected j183 j173)


    (isConnected j174 j184)
    (isConnected j184 j174)


    (isConnected j175 j185)
    (isConnected j185 j175)


    (isConnected j176 j186)
    (isConnected j186 j176)


    (isConnected j177 j187)
    (isConnected j187 j177)


    (isConnected j178 j188)
    (isConnected j188 j178)


    (isConnected j179 j189)
    (isConnected j189 j179)





    (isConnected j181 j182)
    (isConnected j182 j181)


    (isConnected j182 j183)
    (isConnected j183 j182)


    (isConnected j183 j184)
    (isConnected j184 j183)


    (isConnected j184 j185)
    (isConnected j185 j184)


    (isConnected j185 j186)
    (isConnected j186 j185)


    (isConnected j186 j187)
    (isConnected j187 j186)


    (isConnected j187 j188)
    (isConnected j188 j187)


    (isConnected j188 j189)
    (isConnected j189 j188)


    (isConnected j189 j190)
    (isConnected j190 j189)


    (isConnected j180 j190)
    (isConnected j190 j180)


    (isConnected j181 j191)
    (isConnected j191 j181)


    (isConnected j182 j192)
    (isConnected j192 j182)


    (isConnected j183 j193)
    (isConnected j193 j183)


    (isConnected j184 j194)
    (isConnected j194 j184)


    (isConnected j185 j195)
    (isConnected j195 j185)


    (isConnected j186 j196)
    (isConnected j196 j186)


    (isConnected j187 j197)
    (isConnected j197 j187)


    (isConnected j188 j198)
    (isConnected j198 j188)


    (isConnected j189 j199)
    (isConnected j199 j189)





    (isConnected j191 j192)
    (isConnected j192 j191)


    (isConnected j192 j193)
    (isConnected j193 j192)


    (isConnected j193 j194)
    (isConnected j194 j193)


    (isConnected j194 j195)
    (isConnected j195 j194)


    (isConnected j195 j196)
    (isConnected j196 j195)


    (isConnected j196 j197)
    (isConnected j197 j196)


    (isConnected j197 j198)
    (isConnected j198 j197)


    (isConnected j198 j199)
    (isConnected j199 j198)


    (isConnected j199 j200)
    (isConnected j200 j199)




    (= (weaponDamage sword) 1)
    (atLocation sword j2)

    ;monsters
    (= (monsterStrength m1) 1)
    (= (monsterHealth m1) 1)
    (atLocation m1 j10)

    (= (monsterStrength m2) 2)
    (= (monsterHealth m2) 1)
    (atLocation m2 j8)

    (= (monsterStrength m3) 1)
    (= (monsterHealth m3) 1)
    (atLocation m3 j12)

    (= (monsterStrength m4) 1)
    (= (monsterHealth m4) 1)
    (atLocation m4 j17)

    (= (monsterStrength m5) 1)
    (= (monsterHealth m5) 1)
    (atLocation m5 j22)

    ;food
    (atLocation apple j5)
    (= (foodValue apple) 3)

    (atLocation banana j13)
    (= (foodValue banana) 5)

    (atLocation carrot j19)
    (= (foodValue carrot) 5)

    (atLocation k1 j101)

    (atLocation specialItem j0)
    (atLocation p j1)

    (atLocation g1 j8)
    (atLocation g2 j12)
    (atLocation g3 j21)
    
    
)

;the player must retrieve the key from j101, then take
;the item from j0 to j101
(:goal (and
    (atLocation p j200)
    (atLocation specialItem j200)
))

)
; The aim of this problem is to get to the end point, j500
; This is a visual representation of the map of the maze:
;
; j1 --- j2 --- j3 -- j4 ......... j499 -- j500
;
;

(define (problem huge)
(:domain maze)
(:objects
 j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 j16 j17 j18 j19 j20 j21 j22 j23 j24 j25 j26 j27 j28 j29 j30
j31 j32 j33 j34 j35 j36 j37 j38 j39 j40 j41 j42 j43 j44 j45 j46 j47 j48 j49 j50 j51 j52 j53 j54 j55 j56 j57 j58 j59 j60
j61 j62 j63 j64 j65 j66 j67 j68 j69 j70 j71 j72 j73 j74 j75 j76 j77 j78 j79 j80 j81 j82 j83 j84 j85 j86 j87 j88 j89 j90
j91 j92 j93 j94 j95 j96 j97 j98 j99 j100 j101 j102 j103 j104 j105 j106 j107 j108 j109 j110 j111 j112 j113 j114 j115 j116 j117 j118 j119 j120
j121 j122 j123 j124 j125 j126 j127 j128 j129 j130 j131 j132 j133 j134 j135 j136 j137 j138 j139 j140 j141 j142 j143 j144 j145 j146 j147 j148 j149 j150
j151 j152 j153 j154 j155 j156 j157 j158 j159 j160 j161 j162 j163 j164 j165 j166 j167 j168 j169 j170 j171 j172 j173 j174 j175 j176 j177 j178 j179 j180
j181 j182 j183 j184 j185 j186 j187 j188 j189 j190 j191 j192 j193 j194 j195 j196 j197 j198 j199 j200 - Junction
 p - Player
 v - Vendor
 m - Monster
 i - Inventory
 shield - Shield
 key - Key
 banana - Food
 w - Weapon
 f - Floor
 g - Gold
 b - Box
)
(:init


;;Normal Direction
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
 (isConnected j100 j101)
 (isConnected j101 j102)
 (isConnected j102 j103)
 (isConnected j103 j104)
 (isConnected j104 j105)
 (isConnected j105 j106)
 (isConnected j106 j107)
 (isConnected j107 j108)
 (isConnected j108 j109)
 (isConnected j109 j110)
 (isConnected j110 j111)
 (isConnected j111 j112)
 (isConnected j112 j113)
 (isConnected j113 j114)
 (isConnected j114 j115)
 (isConnected j115 j116)
 (isConnected j116 j117)
 (isConnected j117 j118)
 (isConnected j118 j119)
 (isConnected j119 j120)
 (isConnected j120 j121)
 (isConnected j121 j122)
 (isConnected j122 j123)
 (isConnected j123 j124)
 (isConnected j124 j125)
 (isConnected j125 j126)
 (isConnected j126 j127)
 (isConnected j127 j128)
 (isConnected j128 j129)
 (isConnected j129 j130)
 (isConnected j130 j131)
 (isConnected j131 j132)
 (isConnected j132 j133)
 (isConnected j133 j134)
 (isConnected j134 j135)
 (isConnected j135 j136)
 (isConnected j136 j137)
 (isConnected j137 j138)
 (isConnected j138 j139)
 (isConnected j139 j140)
 (isConnected j140 j141)
 (isConnected j141 j142)
 (isConnected j142 j143)
 (isConnected j143 j144)
 (isConnected j144 j145)
 (isConnected j145 j146)
 (isConnected j146 j147)
 (isConnected j147 j148)
 (isConnected j148 j149)
 (isConnected j149 j150)
 (isConnected j150 j151)
 (isConnected j151 j152)
 (isConnected j152 j153)
 (isConnected j153 j154)
 (isConnected j154 j155)
 (isConnected j155 j156)
 (isConnected j156 j157)
 (isConnected j157 j158)
 (isConnected j158 j159)
 (isConnected j159 j160)
 (isConnected j160 j161)
 (isConnected j161 j162)
 (isConnected j162 j163)
 (isConnected j163 j164)
 (isConnected j164 j165)
 (isConnected j165 j166)
 (isConnected j166 j167)
 (isConnected j167 j168)
 (isConnected j168 j169)
 (isConnected j169 j170)
 (isConnected j170 j171)
 (isConnected j171 j172)
 (isConnected j172 j173)
 (isConnected j173 j174)
 (isConnected j174 j175)
 (isConnected j175 j176)
 (isConnected j176 j177)
 (isConnected j177 j178)
 (isConnected j178 j179)
 (isConnected j179 j180)
 (isConnected j180 j181)
 (isConnected j181 j182)
 (isConnected j182 j183)
 (isConnected j183 j184)
 (isConnected j184 j185)
 (isConnected j185 j186)
 (isConnected j186 j187)
 (isConnected j187 j188)
 (isConnected j188 j189)
 (isConnected j189 j190)
 (isConnected j190 j191)
 (isConnected j191 j192)
 (isConnected j192 j193)
 (isConnected j193 j194)
 (isConnected j194 j195)
 (isConnected j195 j196)
 (isConnected j196 j197)
 (isConnected j197 j198)
 (isConnected j198 j199)
 (isConnected j199 j200)
;;Reverse Direction
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
 (isConnected j101 j100)
 (isConnected j102 j101)
 (isConnected j103 j102)
 (isConnected j104 j103)
 (isConnected j105 j104)
 (isConnected j106 j105)
 (isConnected j107 j106)
 (isConnected j108 j107)
 (isConnected j109 j108)
 (isConnected j110 j109)
 (isConnected j111 j110)
 (isConnected j112 j111)
 (isConnected j113 j112)
 (isConnected j114 j113)
 (isConnected j115 j114)
 (isConnected j116 j115)
 (isConnected j117 j116)
 (isConnected j118 j117)
 (isConnected j119 j118)
 (isConnected j120 j119)
 (isConnected j121 j120)
 (isConnected j122 j121)
 (isConnected j123 j122)
 (isConnected j124 j123)
 (isConnected j125 j124)
 (isConnected j126 j125)
 (isConnected j127 j126)
 (isConnected j128 j127)
 (isConnected j129 j128)
 (isConnected j130 j129)
 (isConnected j131 j130)
 (isConnected j132 j131)
 (isConnected j133 j132)
 (isConnected j134 j133)
 (isConnected j135 j134)
 (isConnected j136 j135)
 (isConnected j137 j136)
 (isConnected j138 j137)
 (isConnected j139 j138)
 (isConnected j140 j139)
 (isConnected j141 j140)
 (isConnected j142 j141)
 (isConnected j143 j142)
 (isConnected j144 j143)
 (isConnected j145 j144)
 (isConnected j146 j145)
 (isConnected j147 j146)
 (isConnected j148 j147)
 (isConnected j149 j148)
 (isConnected j150 j149)
 (isConnected j151 j150)
 (isConnected j152 j151)
 (isConnected j153 j152)
 (isConnected j154 j153)
 (isConnected j155 j154)
 (isConnected j156 j155)
 (isConnected j157 j156)
 (isConnected j158 j157)
 (isConnected j159 j158)
 (isConnected j160 j159)
 (isConnected j161 j160)
 (isConnected j162 j161)
 (isConnected j163 j162)
 (isConnected j164 j163)
 (isConnected j165 j164)
 (isConnected j166 j165)
 (isConnected j167 j166)
 (isConnected j168 j167)
 (isConnected j169 j168)
 (isConnected j170 j169)
 (isConnected j171 j170)
 (isConnected j172 j171)
 (isConnected j173 j172)
 (isConnected j174 j173)
 (isConnected j175 j174)
 (isConnected j176 j175)
 (isConnected j177 j176)
 (isConnected j178 j177)
 (isConnected j179 j178)
 (isConnected j180 j179)
 (isConnected j181 j180)
 (isConnected j182 j181)
 (isConnected j183 j182)
 (isConnected j184 j183)
 (isConnected j185 j184)
 (isConnected j186 j185)
 (isConnected j187 j186)
 (isConnected j188 j187)
 (isConnected j189 j188)
 (isConnected j190 j189)
 (isConnected j191 j190)
 (isConnected j192 j191)
 (isConnected j193 j192)
 (isConnected j194 j193)
 (isConnected j195 j194)
 (isConnected j196 j195)
 (isConnected j197 j196)
 (isConnected j198 j197)
 (isConnected j199 j198)
 (isConnected j200 j199)
;;Distances
(= (distanceBetweenJunctions j1 j2 ) 2)
(= (distanceBetweenJunctions j2 j1 ) 2)
(= (distanceBetweenJunctions j2 j3 ) 2)
(= (distanceBetweenJunctions j3 j2 ) 2)
(= (distanceBetweenJunctions j3 j4 ) 2)
(= (distanceBetweenJunctions j4 j3 ) 2)
(= (distanceBetweenJunctions j4 j5 ) 2)
(= (distanceBetweenJunctions j5 j4 ) 2)
(= (distanceBetweenJunctions j5 j6 ) 2)
(= (distanceBetweenJunctions j6 j5 ) 2)
(= (distanceBetweenJunctions j6 j7 ) 2)
(= (distanceBetweenJunctions j7 j6 ) 2)
(= (distanceBetweenJunctions j7 j8 ) 2)
(= (distanceBetweenJunctions j8 j7 ) 2)
(= (distanceBetweenJunctions j8 j9 ) 2)
(= (distanceBetweenJunctions j9 j8 ) 2)
(= (distanceBetweenJunctions j9 j10 ) 2)
(= (distanceBetweenJunctions j10 j9 ) 2)
(= (distanceBetweenJunctions j10 j11 ) 2)
(= (distanceBetweenJunctions j11 j10 ) 2)
(= (distanceBetweenJunctions j11 j12 ) 2)
(= (distanceBetweenJunctions j12 j11 ) 2)
(= (distanceBetweenJunctions j12 j13 ) 2)
(= (distanceBetweenJunctions j13 j12 ) 2)
(= (distanceBetweenJunctions j13 j14 ) 2)
(= (distanceBetweenJunctions j14 j13 ) 2)
(= (distanceBetweenJunctions j14 j15 ) 2)
(= (distanceBetweenJunctions j15 j14 ) 2)
(= (distanceBetweenJunctions j15 j16 ) 2)
(= (distanceBetweenJunctions j16 j15 ) 2)
(= (distanceBetweenJunctions j16 j17 ) 2)
(= (distanceBetweenJunctions j17 j16 ) 2)
(= (distanceBetweenJunctions j17 j18 ) 2)
(= (distanceBetweenJunctions j18 j17 ) 2)
(= (distanceBetweenJunctions j18 j19 ) 2)
(= (distanceBetweenJunctions j19 j18 ) 2)
(= (distanceBetweenJunctions j19 j20 ) 2)
(= (distanceBetweenJunctions j20 j19 ) 2)
(= (distanceBetweenJunctions j20 j21 ) 2)
(= (distanceBetweenJunctions j21 j20 ) 2)
(= (distanceBetweenJunctions j21 j22 ) 2)
(= (distanceBetweenJunctions j22 j21 ) 2)
(= (distanceBetweenJunctions j22 j23 ) 2)
(= (distanceBetweenJunctions j23 j22 ) 2)
(= (distanceBetweenJunctions j23 j24 ) 2)
(= (distanceBetweenJunctions j24 j23 ) 2)
(= (distanceBetweenJunctions j24 j25 ) 2)
(= (distanceBetweenJunctions j25 j24 ) 2)
(= (distanceBetweenJunctions j25 j26 ) 2)
(= (distanceBetweenJunctions j26 j25 ) 2)
(= (distanceBetweenJunctions j26 j27 ) 2)
(= (distanceBetweenJunctions j27 j26 ) 2)
(= (distanceBetweenJunctions j27 j28 ) 2)
(= (distanceBetweenJunctions j28 j27 ) 2)
(= (distanceBetweenJunctions j28 j29 ) 2)
(= (distanceBetweenJunctions j29 j28 ) 2)
(= (distanceBetweenJunctions j29 j30 ) 2)
(= (distanceBetweenJunctions j30 j29 ) 2)
(= (distanceBetweenJunctions j30 j31 ) 2)
(= (distanceBetweenJunctions j31 j30 ) 2)
(= (distanceBetweenJunctions j31 j32 ) 2)
(= (distanceBetweenJunctions j32 j31 ) 2)
(= (distanceBetweenJunctions j32 j33 ) 2)
(= (distanceBetweenJunctions j33 j32 ) 2)
(= (distanceBetweenJunctions j33 j34 ) 2)
(= (distanceBetweenJunctions j34 j33 ) 2)
(= (distanceBetweenJunctions j34 j35 ) 2)
(= (distanceBetweenJunctions j35 j34 ) 2)
(= (distanceBetweenJunctions j35 j36 ) 2)
(= (distanceBetweenJunctions j36 j35 ) 2)
(= (distanceBetweenJunctions j36 j37 ) 2)
(= (distanceBetweenJunctions j37 j36 ) 2)
(= (distanceBetweenJunctions j37 j38 ) 2)
(= (distanceBetweenJunctions j38 j37 ) 2)
(= (distanceBetweenJunctions j38 j39 ) 2)
(= (distanceBetweenJunctions j39 j38 ) 2)
(= (distanceBetweenJunctions j39 j40 ) 2)
(= (distanceBetweenJunctions j40 j39 ) 2)
(= (distanceBetweenJunctions j40 j41 ) 2)
(= (distanceBetweenJunctions j41 j40 ) 2)
(= (distanceBetweenJunctions j41 j42 ) 2)
(= (distanceBetweenJunctions j42 j41 ) 2)
(= (distanceBetweenJunctions j42 j43 ) 2)
(= (distanceBetweenJunctions j43 j42 ) 2)
(= (distanceBetweenJunctions j43 j44 ) 2)
(= (distanceBetweenJunctions j44 j43 ) 2)
(= (distanceBetweenJunctions j44 j45 ) 2)
(= (distanceBetweenJunctions j45 j44 ) 2)
(= (distanceBetweenJunctions j45 j46 ) 2)
(= (distanceBetweenJunctions j46 j45 ) 2)
(= (distanceBetweenJunctions j46 j47 ) 2)
(= (distanceBetweenJunctions j47 j46 ) 2)
(= (distanceBetweenJunctions j47 j48 ) 2)
(= (distanceBetweenJunctions j48 j47 ) 2)
(= (distanceBetweenJunctions j48 j49 ) 2)
(= (distanceBetweenJunctions j49 j48 ) 2)
(= (distanceBetweenJunctions j49 j50 ) 2)
(= (distanceBetweenJunctions j50 j49 ) 2)
(= (distanceBetweenJunctions j50 j51 ) 2)
(= (distanceBetweenJunctions j51 j50 ) 2)
(= (distanceBetweenJunctions j51 j52 ) 2)
(= (distanceBetweenJunctions j52 j51 ) 2)
(= (distanceBetweenJunctions j52 j53 ) 2)
(= (distanceBetweenJunctions j53 j52 ) 2)
(= (distanceBetweenJunctions j53 j54 ) 2)
(= (distanceBetweenJunctions j54 j53 ) 2)
(= (distanceBetweenJunctions j54 j55 ) 2)
(= (distanceBetweenJunctions j55 j54 ) 2)
(= (distanceBetweenJunctions j55 j56 ) 2)
(= (distanceBetweenJunctions j56 j55 ) 2)
(= (distanceBetweenJunctions j56 j57 ) 2)
(= (distanceBetweenJunctions j57 j56 ) 2)
(= (distanceBetweenJunctions j57 j58 ) 2)
(= (distanceBetweenJunctions j58 j57 ) 2)
(= (distanceBetweenJunctions j58 j59 ) 2)
(= (distanceBetweenJunctions j59 j58 ) 2)
(= (distanceBetweenJunctions j59 j60 ) 2)
(= (distanceBetweenJunctions j60 j59 ) 2)
(= (distanceBetweenJunctions j60 j61 ) 2)
(= (distanceBetweenJunctions j61 j60 ) 2)
(= (distanceBetweenJunctions j61 j62 ) 2)
(= (distanceBetweenJunctions j62 j61 ) 2)
(= (distanceBetweenJunctions j62 j63 ) 2)
(= (distanceBetweenJunctions j63 j62 ) 2)
(= (distanceBetweenJunctions j63 j64 ) 2)
(= (distanceBetweenJunctions j64 j63 ) 2)
(= (distanceBetweenJunctions j64 j65 ) 2)
(= (distanceBetweenJunctions j65 j64 ) 2)
(= (distanceBetweenJunctions j65 j66 ) 2)
(= (distanceBetweenJunctions j66 j65 ) 2)
(= (distanceBetweenJunctions j66 j67 ) 2)
(= (distanceBetweenJunctions j67 j66 ) 2)
(= (distanceBetweenJunctions j67 j68 ) 2)
(= (distanceBetweenJunctions j68 j67 ) 2)
(= (distanceBetweenJunctions j68 j69 ) 2)
(= (distanceBetweenJunctions j69 j68 ) 2)
(= (distanceBetweenJunctions j69 j70 ) 2)
(= (distanceBetweenJunctions j70 j69 ) 2)
(= (distanceBetweenJunctions j70 j71 ) 2)
(= (distanceBetweenJunctions j71 j70 ) 2)
(= (distanceBetweenJunctions j71 j72 ) 2)
(= (distanceBetweenJunctions j72 j71 ) 2)
(= (distanceBetweenJunctions j72 j73 ) 2)
(= (distanceBetweenJunctions j73 j72 ) 2)
(= (distanceBetweenJunctions j73 j74 ) 2)
(= (distanceBetweenJunctions j74 j73 ) 2)
(= (distanceBetweenJunctions j74 j75 ) 2)
(= (distanceBetweenJunctions j75 j74 ) 2)
(= (distanceBetweenJunctions j75 j76 ) 2)
(= (distanceBetweenJunctions j76 j75 ) 2)
(= (distanceBetweenJunctions j76 j77 ) 2)
(= (distanceBetweenJunctions j77 j76 ) 2)
(= (distanceBetweenJunctions j77 j78 ) 2)
(= (distanceBetweenJunctions j78 j77 ) 2)
(= (distanceBetweenJunctions j78 j79 ) 2)
(= (distanceBetweenJunctions j79 j78 ) 2)
(= (distanceBetweenJunctions j79 j80 ) 2)
(= (distanceBetweenJunctions j80 j79 ) 2)
(= (distanceBetweenJunctions j80 j81 ) 2)
(= (distanceBetweenJunctions j81 j80 ) 2)
(= (distanceBetweenJunctions j81 j82 ) 2)
(= (distanceBetweenJunctions j82 j81 ) 2)
(= (distanceBetweenJunctions j82 j83 ) 2)
(= (distanceBetweenJunctions j83 j82 ) 2)
(= (distanceBetweenJunctions j83 j84 ) 2)
(= (distanceBetweenJunctions j84 j83 ) 2)
(= (distanceBetweenJunctions j84 j85 ) 2)
(= (distanceBetweenJunctions j85 j84 ) 2)
(= (distanceBetweenJunctions j85 j86 ) 2)
(= (distanceBetweenJunctions j86 j85 ) 2)
(= (distanceBetweenJunctions j86 j87 ) 2)
(= (distanceBetweenJunctions j87 j86 ) 2)
(= (distanceBetweenJunctions j87 j88 ) 2)
(= (distanceBetweenJunctions j88 j87 ) 2)
(= (distanceBetweenJunctions j88 j89 ) 2)
(= (distanceBetweenJunctions j89 j88 ) 2)
(= (distanceBetweenJunctions j89 j90 ) 2)
(= (distanceBetweenJunctions j90 j89 ) 2)
(= (distanceBetweenJunctions j90 j91 ) 2)
(= (distanceBetweenJunctions j91 j90 ) 2)
(= (distanceBetweenJunctions j91 j92 ) 2)
(= (distanceBetweenJunctions j92 j91 ) 2)
(= (distanceBetweenJunctions j92 j93 ) 2)
(= (distanceBetweenJunctions j93 j92 ) 2)
(= (distanceBetweenJunctions j93 j94 ) 2)
(= (distanceBetweenJunctions j94 j93 ) 2)
(= (distanceBetweenJunctions j94 j95 ) 2)
(= (distanceBetweenJunctions j95 j94 ) 2)
(= (distanceBetweenJunctions j95 j96 ) 2)
(= (distanceBetweenJunctions j96 j95 ) 2)
(= (distanceBetweenJunctions j96 j97 ) 2)
(= (distanceBetweenJunctions j97 j96 ) 2)
(= (distanceBetweenJunctions j97 j98 ) 2)
(= (distanceBetweenJunctions j98 j97 ) 2)
(= (distanceBetweenJunctions j98 j99 ) 2)
(= (distanceBetweenJunctions j99 j98 ) 2)
(= (distanceBetweenJunctions j99 j100 ) 2)
(= (distanceBetweenJunctions j100 j99 ) 2)
(= (distanceBetweenJunctions j100 j101 ) 2)
(= (distanceBetweenJunctions j101 j100 ) 2)
(= (distanceBetweenJunctions j101 j102 ) 2)
(= (distanceBetweenJunctions j102 j101 ) 2)
(= (distanceBetweenJunctions j102 j103 ) 2)
(= (distanceBetweenJunctions j103 j102 ) 2)
(= (distanceBetweenJunctions j103 j104 ) 2)
(= (distanceBetweenJunctions j104 j103 ) 2)
(= (distanceBetweenJunctions j104 j105 ) 2)
(= (distanceBetweenJunctions j105 j104 ) 2)
(= (distanceBetweenJunctions j105 j106 ) 2)
(= (distanceBetweenJunctions j106 j105 ) 2)
(= (distanceBetweenJunctions j106 j107 ) 2)
(= (distanceBetweenJunctions j107 j106 ) 2)
(= (distanceBetweenJunctions j107 j108 ) 2)
(= (distanceBetweenJunctions j108 j107 ) 2)
(= (distanceBetweenJunctions j108 j109 ) 2)
(= (distanceBetweenJunctions j109 j108 ) 2)
(= (distanceBetweenJunctions j109 j110 ) 2)
(= (distanceBetweenJunctions j110 j109 ) 2)
(= (distanceBetweenJunctions j110 j111 ) 2)
(= (distanceBetweenJunctions j111 j110 ) 2)
(= (distanceBetweenJunctions j111 j112 ) 2)
(= (distanceBetweenJunctions j112 j111 ) 2)
(= (distanceBetweenJunctions j112 j113 ) 2)
(= (distanceBetweenJunctions j113 j112 ) 2)
(= (distanceBetweenJunctions j113 j114 ) 2)
(= (distanceBetweenJunctions j114 j113 ) 2)
(= (distanceBetweenJunctions j114 j115 ) 2)
(= (distanceBetweenJunctions j115 j114 ) 2)
(= (distanceBetweenJunctions j115 j116 ) 2)
(= (distanceBetweenJunctions j116 j115 ) 2)
(= (distanceBetweenJunctions j116 j117 ) 2)
(= (distanceBetweenJunctions j117 j116 ) 2)
(= (distanceBetweenJunctions j117 j118 ) 2)
(= (distanceBetweenJunctions j118 j117 ) 2)
(= (distanceBetweenJunctions j118 j119 ) 2)
(= (distanceBetweenJunctions j119 j118 ) 2)
(= (distanceBetweenJunctions j119 j120 ) 2)
(= (distanceBetweenJunctions j120 j119 ) 2)
(= (distanceBetweenJunctions j120 j121 ) 2)
(= (distanceBetweenJunctions j121 j120 ) 2)
(= (distanceBetweenJunctions j121 j122 ) 2)
(= (distanceBetweenJunctions j122 j121 ) 2)
(= (distanceBetweenJunctions j122 j123 ) 2)
(= (distanceBetweenJunctions j123 j122 ) 2)
(= (distanceBetweenJunctions j123 j124 ) 2)
(= (distanceBetweenJunctions j124 j123 ) 2)
(= (distanceBetweenJunctions j124 j125 ) 2)
(= (distanceBetweenJunctions j125 j124 ) 2)
(= (distanceBetweenJunctions j125 j126 ) 2)
(= (distanceBetweenJunctions j126 j125 ) 2)
(= (distanceBetweenJunctions j126 j127 ) 2)
(= (distanceBetweenJunctions j127 j126 ) 2)
(= (distanceBetweenJunctions j127 j128 ) 2)
(= (distanceBetweenJunctions j128 j127 ) 2)
(= (distanceBetweenJunctions j128 j129 ) 2)
(= (distanceBetweenJunctions j129 j128 ) 2)
(= (distanceBetweenJunctions j129 j130 ) 2)
(= (distanceBetweenJunctions j130 j129 ) 2)
(= (distanceBetweenJunctions j130 j131 ) 2)
(= (distanceBetweenJunctions j131 j130 ) 2)
(= (distanceBetweenJunctions j131 j132 ) 2)
(= (distanceBetweenJunctions j132 j131 ) 2)
(= (distanceBetweenJunctions j132 j133 ) 2)
(= (distanceBetweenJunctions j133 j132 ) 2)
(= (distanceBetweenJunctions j133 j134 ) 2)
(= (distanceBetweenJunctions j134 j133 ) 2)
(= (distanceBetweenJunctions j134 j135 ) 2)
(= (distanceBetweenJunctions j135 j134 ) 2)
(= (distanceBetweenJunctions j135 j136 ) 2)
(= (distanceBetweenJunctions j136 j135 ) 2)
(= (distanceBetweenJunctions j136 j137 ) 2)
(= (distanceBetweenJunctions j137 j136 ) 2)
(= (distanceBetweenJunctions j137 j138 ) 2)
(= (distanceBetweenJunctions j138 j137 ) 2)
(= (distanceBetweenJunctions j138 j139 ) 2)
(= (distanceBetweenJunctions j139 j138 ) 2)
(= (distanceBetweenJunctions j139 j140 ) 2)
(= (distanceBetweenJunctions j140 j139 ) 2)
(= (distanceBetweenJunctions j140 j141 ) 2)
(= (distanceBetweenJunctions j141 j140 ) 2)
(= (distanceBetweenJunctions j141 j142 ) 2)
(= (distanceBetweenJunctions j142 j141 ) 2)
(= (distanceBetweenJunctions j142 j143 ) 2)
(= (distanceBetweenJunctions j143 j142 ) 2)
(= (distanceBetweenJunctions j143 j144 ) 2)
(= (distanceBetweenJunctions j144 j143 ) 2)
(= (distanceBetweenJunctions j144 j145 ) 2)
(= (distanceBetweenJunctions j145 j144 ) 2)
(= (distanceBetweenJunctions j145 j146 ) 2)
(= (distanceBetweenJunctions j146 j145 ) 2)
(= (distanceBetweenJunctions j146 j147 ) 2)
(= (distanceBetweenJunctions j147 j146 ) 2)
(= (distanceBetweenJunctions j147 j148 ) 2)
(= (distanceBetweenJunctions j148 j147 ) 2)
(= (distanceBetweenJunctions j148 j149 ) 2)
(= (distanceBetweenJunctions j149 j148 ) 2)
(= (distanceBetweenJunctions j149 j150 ) 2)
(= (distanceBetweenJunctions j150 j149 ) 2)
(= (distanceBetweenJunctions j150 j151 ) 2)
(= (distanceBetweenJunctions j151 j150 ) 2)
(= (distanceBetweenJunctions j151 j152 ) 2)
(= (distanceBetweenJunctions j152 j151 ) 2)
(= (distanceBetweenJunctions j152 j153 ) 2)
(= (distanceBetweenJunctions j153 j152 ) 2)
(= (distanceBetweenJunctions j153 j154 ) 2)
(= (distanceBetweenJunctions j154 j153 ) 2)
(= (distanceBetweenJunctions j154 j155 ) 2)
(= (distanceBetweenJunctions j155 j154 ) 2)
(= (distanceBetweenJunctions j155 j156 ) 2)
(= (distanceBetweenJunctions j156 j155 ) 2)
(= (distanceBetweenJunctions j156 j157 ) 2)
(= (distanceBetweenJunctions j157 j156 ) 2)
(= (distanceBetweenJunctions j157 j158 ) 2)
(= (distanceBetweenJunctions j158 j157 ) 2)
(= (distanceBetweenJunctions j158 j159 ) 2)
(= (distanceBetweenJunctions j159 j158 ) 2)
(= (distanceBetweenJunctions j159 j160 ) 2)
(= (distanceBetweenJunctions j160 j159 ) 2)
(= (distanceBetweenJunctions j160 j161 ) 2)
(= (distanceBetweenJunctions j161 j160 ) 2)
(= (distanceBetweenJunctions j161 j162 ) 2)
(= (distanceBetweenJunctions j162 j161 ) 2)
(= (distanceBetweenJunctions j162 j163 ) 2)
(= (distanceBetweenJunctions j163 j162 ) 2)
(= (distanceBetweenJunctions j163 j164 ) 2)
(= (distanceBetweenJunctions j164 j163 ) 2)
(= (distanceBetweenJunctions j164 j165 ) 2)
(= (distanceBetweenJunctions j165 j164 ) 2)
(= (distanceBetweenJunctions j165 j166 ) 2)
(= (distanceBetweenJunctions j166 j165 ) 2)
(= (distanceBetweenJunctions j166 j167 ) 2)
(= (distanceBetweenJunctions j167 j166 ) 2)
(= (distanceBetweenJunctions j167 j168 ) 2)
(= (distanceBetweenJunctions j168 j167 ) 2)
(= (distanceBetweenJunctions j168 j169 ) 2)
(= (distanceBetweenJunctions j169 j168 ) 2)
(= (distanceBetweenJunctions j169 j170 ) 2)
(= (distanceBetweenJunctions j170 j169 ) 2)
(= (distanceBetweenJunctions j170 j171 ) 2)
(= (distanceBetweenJunctions j171 j170 ) 2)
(= (distanceBetweenJunctions j171 j172 ) 2)
(= (distanceBetweenJunctions j172 j171 ) 2)
(= (distanceBetweenJunctions j172 j173 ) 2)
(= (distanceBetweenJunctions j173 j172 ) 2)
(= (distanceBetweenJunctions j173 j174 ) 2)
(= (distanceBetweenJunctions j174 j173 ) 2)
(= (distanceBetweenJunctions j174 j175 ) 2)
(= (distanceBetweenJunctions j175 j174 ) 2)
(= (distanceBetweenJunctions j175 j176 ) 2)
(= (distanceBetweenJunctions j176 j175 ) 2)
(= (distanceBetweenJunctions j176 j177 ) 2)
(= (distanceBetweenJunctions j177 j176 ) 2)
(= (distanceBetweenJunctions j177 j178 ) 2)
(= (distanceBetweenJunctions j178 j177 ) 2)
(= (distanceBetweenJunctions j178 j179 ) 2)
(= (distanceBetweenJunctions j179 j178 ) 2)
(= (distanceBetweenJunctions j179 j180 ) 2)
(= (distanceBetweenJunctions j180 j179 ) 2)
(= (distanceBetweenJunctions j180 j181 ) 2)
(= (distanceBetweenJunctions j181 j180 ) 2)
(= (distanceBetweenJunctions j181 j182 ) 2)
(= (distanceBetweenJunctions j182 j181 ) 2)
(= (distanceBetweenJunctions j182 j183 ) 2)
(= (distanceBetweenJunctions j183 j182 ) 2)
(= (distanceBetweenJunctions j183 j184 ) 2)
(= (distanceBetweenJunctions j184 j183 ) 2)
(= (distanceBetweenJunctions j184 j185 ) 2)
(= (distanceBetweenJunctions j185 j184 ) 2)
(= (distanceBetweenJunctions j185 j186 ) 2)
(= (distanceBetweenJunctions j186 j185 ) 2)
(= (distanceBetweenJunctions j186 j187 ) 2)
(= (distanceBetweenJunctions j187 j186 ) 2)
(= (distanceBetweenJunctions j187 j188 ) 2)
(= (distanceBetweenJunctions j188 j187 ) 2)
(= (distanceBetweenJunctions j188 j189 ) 2)
(= (distanceBetweenJunctions j189 j188 ) 2)
(= (distanceBetweenJunctions j189 j190 ) 2)
(= (distanceBetweenJunctions j190 j189 ) 2)
(= (distanceBetweenJunctions j190 j191 ) 2)
(= (distanceBetweenJunctions j191 j190 ) 2)
(= (distanceBetweenJunctions j191 j192 ) 2)
(= (distanceBetweenJunctions j192 j191 ) 2)
(= (distanceBetweenJunctions j192 j193 ) 2)
(= (distanceBetweenJunctions j193 j192 ) 2)
(= (distanceBetweenJunctions j193 j194 ) 2)
(= (distanceBetweenJunctions j194 j193 ) 2)
(= (distanceBetweenJunctions j194 j195 ) 2)
(= (distanceBetweenJunctions j195 j194 ) 2)
(= (distanceBetweenJunctions j195 j196 ) 2)
(= (distanceBetweenJunctions j196 j195 ) 2)
(= (distanceBetweenJunctions j196 j197 ) 2)
(= (distanceBetweenJunctions j197 j196 ) 2)
(= (distanceBetweenJunctions j197 j198 ) 2)
(= (distanceBetweenJunctions j198 j197 ) 2)
(= (distanceBetweenJunctions j198 j199 ) 2)
(= (distanceBetweenJunctions j199 j198 ) 2)
(= (distanceBetweenJunctions j199 j200 ) 2)
(= (distanceBetweenJunctions j200 j199 ) 2)

    ;Player
    (=(playerHealth) 9000)
    (atLocation p j1)
    (on p f) ;player on the floor initially so they can move between the junctions
)
(:goal  (atLocation p j200))


)

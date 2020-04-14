(define (problem problem_huge_maze)
(:domain maze)
;300 junctions
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

   j0 j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 j16 j17 j18 j19 j20 j21 j22 j23 j24 j25 j26 j27 j28 j29 j30 j31 j32 j33 j34 j35 j36 j37 j38 j39 j40 j41 j42 j43 j44 j45 j46 j47 j48 j49 j50 j51 j52 j53 j54 j55 j56 j57 j58 j59 j60 j61 j62 j63 j64 j65 j66 j67 j68 j69 j70 j71 j72 j73 j74 j75 j76 j77 j78 j79 j80 j81 j82 j83 j84 j85 j86 j87 j88 j89 j90 j91 j92 j93 j94 j95 j96 j97 j98 j99 j100 j101 j102 j103 j104 j105 j106 j107 j108 j109 j110 j111 j112 j113 j114 j115 j116 j117 j118 j119 j120 j121 j122 j123 j124 j125 j126 j127 j128 j129 j130 j131 j132 j133 j134 j135 j136 j137 j138 j139 j140 j141 j142 j143 j144 j145 j146 j147 j148 j149 j150 j151 j152 j153 j154 j155 j156 j157 j158 j159 j160 j161 j162 j163 j164 j165 j166 j167 j168 j169 j170 j171 j172 j173 j174 j175 j176 j177 j178 j179 j180 j181 j182 j183 j184 j185 j186 j187 j188 j189 j190 j191 j192 j193 j194 j195 j196 j197 j198 j199 j200 j201 j202 j203 j204 j205 j206 j207 j208 j209 j210 j211 j212 j213 j214 j215 j216 j217 j218 j219 j220 j221 j222 j223 j224 j225 j226 j227 j228 j229 j230 j231 j232 j233 j234 j235 j236 j237 j238 j239 j240 j241 j242 j243 j244 j245 j246 j247 j248 j249 j250 j251 j252 j253 j254 j255 j256 j257 j258 j259 j260 j261 j262 j263 j264 j265 j266 j267 j268 j269 j270 j271 j272 j273 j274 j275 j276 j277 j278 j279 j280 j281 j282 j283 j284 j285 j286 j287 j288 j289 j290 j291 j292 j293 j294 j295 j296 j297 j298 j299 j300 - Junction
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
    v - Vendor
)


(:init
    
    (= playerHealth 60)
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
 
    (isLocked j1 j0)
    (isConnected j0 j1)
    (= (distanceBetweenJunctions j0 j1) 1)    (= (distanceBetweenJunctions j1 j0) 1)



    (isConnected j1 j2)
    (isConnected j2 j1)
    (= (distanceBetweenJunctions j1 j2 ) 1)
    (= (distanceBetweenJunctions j2 j1 ) 1)


    (isConnected j2 j3)
    (isConnected j3 j2)
    (= (distanceBetweenJunctions j2 j3 ) 1)
    (= (distanceBetweenJunctions j3 j2 ) 1)


    (isConnected j3 j4)
    (isConnected j4 j3)
    (= (distanceBetweenJunctions j3 j4 ) 1)
    (= (distanceBetweenJunctions j4 j3 ) 1)


    (isConnected j4 j5)
    (isConnected j5 j4)
    (= (distanceBetweenJunctions j4 j5 ) 1)
    (= (distanceBetweenJunctions j5 j4 ) 1)


    (isConnected j5 j6)
    (isConnected j6 j5)
    (= (distanceBetweenJunctions j5 j6 ) 1)
    (= (distanceBetweenJunctions j6 j5 ) 1)


    (isConnected j6 j7)
    (isConnected j7 j6)
    (= (distanceBetweenJunctions j6 j7 ) 1)
    (= (distanceBetweenJunctions j7 j6 ) 1)


    (isConnected j7 j8)
    (isConnected j8 j7)
    (= (distanceBetweenJunctions j7 j8 ) 1)
    (= (distanceBetweenJunctions j8 j7 ) 1)


    (isConnected j8 j9)
    (isConnected j9 j8)
    (= (distanceBetweenJunctions j8 j9 ) 1)
    (= (distanceBetweenJunctions j9 j8 ) 1)


    (isConnected j9 j10)
    (isConnected j10 j9)
    (= (distanceBetweenJunctions j9 j10 ) 1)
    (= (distanceBetweenJunctions j10 j9 ) 1)




    (isConnected j1 j11)
    (isConnected j11 j1)
    (= (distanceBetweenJunctions j1 j11 ) 1)
    (= (distanceBetweenJunctions j11 j1 ) 1)


    (isConnected j2 j12)
    (isConnected j12 j2)
    (= (distanceBetweenJunctions j2 j12 ) 1)
    (= (distanceBetweenJunctions j12 j2 ) 1)


    (isConnected j3 j13)
    (isConnected j13 j3)
    (= (distanceBetweenJunctions j3 j13 ) 1)
    (= (distanceBetweenJunctions j13 j3 ) 1)


    (isConnected j4 j14)
    (isConnected j14 j4)
    (= (distanceBetweenJunctions j4 j14 ) 1)
    (= (distanceBetweenJunctions j14 j4 ) 1)


    (isConnected j5 j15)
    (isConnected j15 j5)
    (= (distanceBetweenJunctions j5 j15 ) 1)
    (= (distanceBetweenJunctions j15 j5 ) 1)


    (isConnected j6 j16)
    (isConnected j16 j6)
    (= (distanceBetweenJunctions j6 j16 ) 1)
    (= (distanceBetweenJunctions j16 j6 ) 1)


    (isConnected j7 j17)
    (isConnected j17 j7)
    (= (distanceBetweenJunctions j7 j17 ) 1)
    (= (distanceBetweenJunctions j17 j7 ) 1)


    (isConnected j8 j18)
    (isConnected j18 j8)
    (= (distanceBetweenJunctions j8 j18 ) 1)
    (= (distanceBetweenJunctions j18 j8 ) 1)


    (isConnected j9 j19)
    (isConnected j19 j9)
    (= (distanceBetweenJunctions j9 j19 ) 1)
    (= (distanceBetweenJunctions j19 j9 ) 1)





    (isConnected j10 j11)
    (isConnected j11 j10)
    (= (distanceBetweenJunctions j10 j11 ) 1)
    (= (distanceBetweenJunctions j11 j10 ) 1)


    (isConnected j11 j12)
    (isConnected j12 j11)
    (= (distanceBetweenJunctions j11 j12 ) 1)
    (= (distanceBetweenJunctions j12 j11 ) 1)


    (isConnected j12 j13)
    (isConnected j13 j12)
    (= (distanceBetweenJunctions j12 j13 ) 1)
    (= (distanceBetweenJunctions j13 j12 ) 1)


    (isConnected j13 j14)
    (isConnected j14 j13)
    (= (distanceBetweenJunctions j13 j14 ) 1)
    (= (distanceBetweenJunctions j14 j13 ) 1)


    (isConnected j14 j15)
    (isConnected j15 j14)
    (= (distanceBetweenJunctions j14 j15 ) 1)
    (= (distanceBetweenJunctions j15 j14 ) 1)


    (isConnected j15 j16)
    (isConnected j16 j15)
    (= (distanceBetweenJunctions j15 j16 ) 1)
    (= (distanceBetweenJunctions j16 j15 ) 1)


    (isConnected j16 j17)
    (isConnected j17 j16)
    (= (distanceBetweenJunctions j16 j17 ) 1)
    (= (distanceBetweenJunctions j17 j16 ) 1)


    (isConnected j17 j18)
    (isConnected j18 j17)
    (= (distanceBetweenJunctions j17 j18 ) 1)
    (= (distanceBetweenJunctions j18 j17 ) 1)


    (isConnected j18 j19)
    (isConnected j19 j18)
    (= (distanceBetweenJunctions j18 j19 ) 1)
    (= (distanceBetweenJunctions j19 j18 ) 1)


    (isConnected j19 j20)
    (isConnected j20 j19)
    (= (distanceBetweenJunctions j19 j20 ) 1)
    (= (distanceBetweenJunctions j20 j19 ) 1)


    (isConnected j10 j20)
    (isConnected j20 j10)
    (= (distanceBetweenJunctions j10 j20 ) 1)
    (= (distanceBetweenJunctions j20 j10 ) 1)


    (isConnected j11 j21)
    (isConnected j21 j11)
    (= (distanceBetweenJunctions j11 j21 ) 1)
    (= (distanceBetweenJunctions j21 j11 ) 1)


    (isConnected j12 j22)
    (isConnected j22 j12)
    (= (distanceBetweenJunctions j12 j22 ) 1)
    (= (distanceBetweenJunctions j22 j12 ) 1)


    (isConnected j13 j23)
    (isConnected j23 j13)
    (= (distanceBetweenJunctions j13 j23 ) 1)
    (= (distanceBetweenJunctions j23 j13 ) 1)


    (isConnected j14 j24)
    (isConnected j24 j14)
    (= (distanceBetweenJunctions j14 j24 ) 1)
    (= (distanceBetweenJunctions j24 j14 ) 1)


    (isConnected j15 j25)
    (isConnected j25 j15)
    (= (distanceBetweenJunctions j15 j25 ) 1)
    (= (distanceBetweenJunctions j25 j15 ) 1)


    (isConnected j16 j26)
    (isConnected j26 j16)
    (= (distanceBetweenJunctions j16 j26 ) 1)
    (= (distanceBetweenJunctions j26 j16 ) 1)


    (isConnected j17 j27)
    (isConnected j27 j17)
    (= (distanceBetweenJunctions j17 j27 ) 1)
    (= (distanceBetweenJunctions j27 j17 ) 1)


    (isConnected j18 j28)
    (isConnected j28 j18)
    (= (distanceBetweenJunctions j18 j28 ) 1)
    (= (distanceBetweenJunctions j28 j18 ) 1)


    (isConnected j19 j29)
    (isConnected j29 j19)
    (= (distanceBetweenJunctions j19 j29 ) 1)
    (= (distanceBetweenJunctions j29 j19 ) 1)





    (isConnected j20 j21)
    (isConnected j21 j20)
    (= (distanceBetweenJunctions j20 j21 ) 1)
    (= (distanceBetweenJunctions j21 j20 ) 1)


    (isConnected j21 j22)
    (isConnected j22 j21)
    (= (distanceBetweenJunctions j21 j22 ) 1)
    (= (distanceBetweenJunctions j22 j21 ) 1)


    (isConnected j22 j23)
    (isConnected j23 j22)
    (= (distanceBetweenJunctions j22 j23 ) 1)
    (= (distanceBetweenJunctions j23 j22 ) 1)


    (isConnected j23 j24)
    (isConnected j24 j23)
    (= (distanceBetweenJunctions j23 j24 ) 1)
    (= (distanceBetweenJunctions j24 j23 ) 1)


    (isConnected j24 j25)
    (isConnected j25 j24)
    (= (distanceBetweenJunctions j24 j25 ) 1)
    (= (distanceBetweenJunctions j25 j24 ) 1)


    (isConnected j25 j26)
    (isConnected j26 j25)
    (= (distanceBetweenJunctions j25 j26 ) 1)
    (= (distanceBetweenJunctions j26 j25 ) 1)


    (isConnected j26 j27)
    (isConnected j27 j26)
    (= (distanceBetweenJunctions j26 j27 ) 1)
    (= (distanceBetweenJunctions j27 j26 ) 1)


    (isConnected j27 j28)
    (isConnected j28 j27)
    (= (distanceBetweenJunctions j27 j28 ) 1)
    (= (distanceBetweenJunctions j28 j27 ) 1)


    (isConnected j28 j29)
    (isConnected j29 j28)
    (= (distanceBetweenJunctions j28 j29 ) 1)
    (= (distanceBetweenJunctions j29 j28 ) 1)


    (isConnected j29 j30)
    (isConnected j30 j29)
    (= (distanceBetweenJunctions j29 j30 ) 1)
    (= (distanceBetweenJunctions j30 j29 ) 1)


    (isConnected j20 j30)
    (isConnected j30 j20)
    (= (distanceBetweenJunctions j20 j30 ) 1)
    (= (distanceBetweenJunctions j30 j20 ) 1)


    (isConnected j21 j31)
    (isConnected j31 j21)
    (= (distanceBetweenJunctions j21 j31 ) 1)
    (= (distanceBetweenJunctions j31 j21 ) 1)


    (isConnected j22 j32)
    (isConnected j32 j22)
    (= (distanceBetweenJunctions j22 j32 ) 1)
    (= (distanceBetweenJunctions j32 j22 ) 1)


    (isConnected j23 j33)
    (isConnected j33 j23)
    (= (distanceBetweenJunctions j23 j33 ) 1)
    (= (distanceBetweenJunctions j33 j23 ) 1)


    (isConnected j24 j34)
    (isConnected j34 j24)
    (= (distanceBetweenJunctions j24 j34 ) 1)
    (= (distanceBetweenJunctions j34 j24 ) 1)


    (isConnected j25 j35)
    (isConnected j35 j25)
    (= (distanceBetweenJunctions j25 j35 ) 1)
    (= (distanceBetweenJunctions j35 j25 ) 1)


    (isConnected j26 j36)
    (isConnected j36 j26)
    (= (distanceBetweenJunctions j26 j36 ) 1)
    (= (distanceBetweenJunctions j36 j26 ) 1)


    (isConnected j27 j37)
    (isConnected j37 j27)
    (= (distanceBetweenJunctions j27 j37 ) 1)
    (= (distanceBetweenJunctions j37 j27 ) 1)


    (isConnected j28 j38)
    (isConnected j38 j28)
    (= (distanceBetweenJunctions j28 j38 ) 1)
    (= (distanceBetweenJunctions j38 j28 ) 1)


    (isConnected j29 j39)
    (isConnected j39 j29)
    (= (distanceBetweenJunctions j29 j39 ) 1)
    (= (distanceBetweenJunctions j39 j29 ) 1)





    (isConnected j30 j31)
    (isConnected j31 j30)
    (= (distanceBetweenJunctions j30 j31 ) 1)
    (= (distanceBetweenJunctions j31 j30 ) 1)


    (isConnected j31 j32)
    (isConnected j32 j31)
    (= (distanceBetweenJunctions j31 j32 ) 1)
    (= (distanceBetweenJunctions j32 j31 ) 1)


    (isConnected j32 j33)
    (isConnected j33 j32)
    (= (distanceBetweenJunctions j32 j33 ) 1)
    (= (distanceBetweenJunctions j33 j32 ) 1)


    (isConnected j33 j34)
    (isConnected j34 j33)
    (= (distanceBetweenJunctions j33 j34 ) 1)
    (= (distanceBetweenJunctions j34 j33 ) 1)


    (isConnected j34 j35)
    (isConnected j35 j34)
    (= (distanceBetweenJunctions j34 j35 ) 1)
    (= (distanceBetweenJunctions j35 j34 ) 1)


    (isConnected j35 j36)
    (isConnected j36 j35)
    (= (distanceBetweenJunctions j35 j36 ) 1)
    (= (distanceBetweenJunctions j36 j35 ) 1)


    (isConnected j36 j37)
    (isConnected j37 j36)
    (= (distanceBetweenJunctions j36 j37 ) 1)
    (= (distanceBetweenJunctions j37 j36 ) 1)


    (isConnected j37 j38)
    (isConnected j38 j37)
    (= (distanceBetweenJunctions j37 j38 ) 1)
    (= (distanceBetweenJunctions j38 j37 ) 1)


    (isConnected j38 j39)
    (isConnected j39 j38)
    (= (distanceBetweenJunctions j38 j39 ) 1)
    (= (distanceBetweenJunctions j39 j38 ) 1)


    (isConnected j39 j40)
    (isConnected j40 j39)
    (= (distanceBetweenJunctions j39 j40 ) 1)
    (= (distanceBetweenJunctions j40 j39 ) 1)


    (isConnected j30 j40)
    (isConnected j40 j30)
    (= (distanceBetweenJunctions j30 j40 ) 1)
    (= (distanceBetweenJunctions j40 j30 ) 1)


    (isConnected j31 j41)
    (isConnected j41 j31)
    (= (distanceBetweenJunctions j31 j41 ) 1)
    (= (distanceBetweenJunctions j41 j31 ) 1)


    (isConnected j32 j42)
    (isConnected j42 j32)
    (= (distanceBetweenJunctions j32 j42 ) 1)
    (= (distanceBetweenJunctions j42 j32 ) 1)


    (isConnected j33 j43)
    (isConnected j43 j33)
    (= (distanceBetweenJunctions j33 j43 ) 1)
    (= (distanceBetweenJunctions j43 j33 ) 1)


    (isConnected j34 j44)
    (isConnected j44 j34)
    (= (distanceBetweenJunctions j34 j44 ) 1)
    (= (distanceBetweenJunctions j44 j34 ) 1)


    (isConnected j35 j45)
    (isConnected j45 j35)
    (= (distanceBetweenJunctions j35 j45 ) 1)
    (= (distanceBetweenJunctions j45 j35 ) 1)


    (isConnected j36 j46)
    (isConnected j46 j36)
    (= (distanceBetweenJunctions j36 j46 ) 1)
    (= (distanceBetweenJunctions j46 j36 ) 1)


    (isConnected j37 j47)
    (isConnected j47 j37)
    (= (distanceBetweenJunctions j37 j47 ) 1)
    (= (distanceBetweenJunctions j47 j37 ) 1)


    (isConnected j38 j48)
    (isConnected j48 j38)
    (= (distanceBetweenJunctions j38 j48 ) 1)
    (= (distanceBetweenJunctions j48 j38 ) 1)


    (isConnected j39 j49)
    (isConnected j49 j39)
    (= (distanceBetweenJunctions j39 j49 ) 1)
    (= (distanceBetweenJunctions j49 j39 ) 1)





    (isConnected j40 j41)
    (isConnected j41 j40)
    (= (distanceBetweenJunctions j40 j41 ) 1)
    (= (distanceBetweenJunctions j41 j40 ) 1)


    (isConnected j41 j42)
    (isConnected j42 j41)
    (= (distanceBetweenJunctions j41 j42 ) 1)
    (= (distanceBetweenJunctions j42 j41 ) 1)


    (isConnected j42 j43)
    (isConnected j43 j42)
    (= (distanceBetweenJunctions j42 j43 ) 1)
    (= (distanceBetweenJunctions j43 j42 ) 1)


    (isConnected j43 j44)
    (isConnected j44 j43)
    (= (distanceBetweenJunctions j43 j44 ) 1)
    (= (distanceBetweenJunctions j44 j43 ) 1)


    (isConnected j44 j45)
    (isConnected j45 j44)
    (= (distanceBetweenJunctions j44 j45 ) 1)
    (= (distanceBetweenJunctions j45 j44 ) 1)


    (isConnected j45 j46)
    (isConnected j46 j45)
    (= (distanceBetweenJunctions j45 j46 ) 1)
    (= (distanceBetweenJunctions j46 j45 ) 1)


    (isConnected j46 j47)
    (isConnected j47 j46)
    (= (distanceBetweenJunctions j46 j47 ) 1)
    (= (distanceBetweenJunctions j47 j46 ) 1)


    (isConnected j47 j48)
    (isConnected j48 j47)
    (= (distanceBetweenJunctions j47 j48 ) 1)
    (= (distanceBetweenJunctions j48 j47 ) 1)


    (isConnected j48 j49)
    (isConnected j49 j48)
    (= (distanceBetweenJunctions j48 j49 ) 1)
    (= (distanceBetweenJunctions j49 j48 ) 1)


    (isConnected j49 j50)
    (isConnected j50 j49)
    (= (distanceBetweenJunctions j49 j50 ) 1)
    (= (distanceBetweenJunctions j50 j49 ) 1)


    (isConnected j40 j50)
    (isConnected j50 j40)
    (= (distanceBetweenJunctions j40 j50 ) 1)
    (= (distanceBetweenJunctions j50 j40 ) 1)


    (isConnected j41 j51)
    (isConnected j51 j41)
    (= (distanceBetweenJunctions j41 j51 ) 1)
    (= (distanceBetweenJunctions j51 j41 ) 1)


    (isConnected j42 j52)
    (isConnected j52 j42)
    (= (distanceBetweenJunctions j42 j52 ) 1)
    (= (distanceBetweenJunctions j52 j42 ) 1)


    (isConnected j43 j53)
    (isConnected j53 j43)
    (= (distanceBetweenJunctions j43 j53 ) 1)
    (= (distanceBetweenJunctions j53 j43 ) 1)


    (isConnected j44 j54)
    (isConnected j54 j44)
    (= (distanceBetweenJunctions j44 j54 ) 1)
    (= (distanceBetweenJunctions j54 j44 ) 1)


    (isConnected j45 j55)
    (isConnected j55 j45)
    (= (distanceBetweenJunctions j45 j55 ) 1)
    (= (distanceBetweenJunctions j55 j45 ) 1)


    (isConnected j46 j56)
    (isConnected j56 j46)
    (= (distanceBetweenJunctions j46 j56 ) 1)
    (= (distanceBetweenJunctions j56 j46 ) 1)


    (isConnected j47 j57)
    (isConnected j57 j47)
    (= (distanceBetweenJunctions j47 j57 ) 1)
    (= (distanceBetweenJunctions j57 j47 ) 1)


    (isConnected j48 j58)
    (isConnected j58 j48)
    (= (distanceBetweenJunctions j48 j58 ) 1)
    (= (distanceBetweenJunctions j58 j48 ) 1)


    (isConnected j49 j59)
    (isConnected j59 j49)
    (= (distanceBetweenJunctions j49 j59 ) 1)
    (= (distanceBetweenJunctions j59 j49 ) 1)





    (isConnected j50 j51)
    (isConnected j51 j50)
    (= (distanceBetweenJunctions j50 j51 ) 1)
    (= (distanceBetweenJunctions j51 j50 ) 1)


    (isConnected j51 j52)
    (isConnected j52 j51)
    (= (distanceBetweenJunctions j51 j52 ) 1)
    (= (distanceBetweenJunctions j52 j51 ) 1)


    (isConnected j52 j53)
    (isConnected j53 j52)
    (= (distanceBetweenJunctions j52 j53 ) 1)
    (= (distanceBetweenJunctions j53 j52 ) 1)


    (isConnected j53 j54)
    (isConnected j54 j53)
    (= (distanceBetweenJunctions j53 j54 ) 1)
    (= (distanceBetweenJunctions j54 j53 ) 1)


    (isConnected j54 j55)
    (isConnected j55 j54)
    (= (distanceBetweenJunctions j54 j55 ) 1)
    (= (distanceBetweenJunctions j55 j54 ) 1)


    (isConnected j55 j56)
    (isConnected j56 j55)
    (= (distanceBetweenJunctions j55 j56 ) 1)
    (= (distanceBetweenJunctions j56 j55 ) 1)


    (isConnected j56 j57)
    (isConnected j57 j56)
    (= (distanceBetweenJunctions j56 j57 ) 1)
    (= (distanceBetweenJunctions j57 j56 ) 1)


    (isConnected j57 j58)
    (isConnected j58 j57)
    (= (distanceBetweenJunctions j57 j58 ) 1)
    (= (distanceBetweenJunctions j58 j57 ) 1)


    (isConnected j58 j59)
    (isConnected j59 j58)
    (= (distanceBetweenJunctions j58 j59 ) 1)
    (= (distanceBetweenJunctions j59 j58 ) 1)


    (isConnected j59 j60)
    (isConnected j60 j59)
    (= (distanceBetweenJunctions j59 j60 ) 1)
    (= (distanceBetweenJunctions j60 j59 ) 1)


    (isConnected j50 j60)
    (isConnected j60 j50)
    (= (distanceBetweenJunctions j50 j60 ) 1)
    (= (distanceBetweenJunctions j60 j50 ) 1)


    (isConnected j51 j61)
    (isConnected j61 j51)
    (= (distanceBetweenJunctions j51 j61 ) 1)
    (= (distanceBetweenJunctions j61 j51 ) 1)


    (isConnected j52 j62)
    (isConnected j62 j52)
    (= (distanceBetweenJunctions j52 j62 ) 1)
    (= (distanceBetweenJunctions j62 j52 ) 1)


    (isConnected j53 j63)
    (isConnected j63 j53)
    (= (distanceBetweenJunctions j53 j63 ) 1)
    (= (distanceBetweenJunctions j63 j53 ) 1)


    (isConnected j54 j64)
    (isConnected j64 j54)
    (= (distanceBetweenJunctions j54 j64 ) 1)
    (= (distanceBetweenJunctions j64 j54 ) 1)


    (isConnected j55 j65)
    (isConnected j65 j55)
    (= (distanceBetweenJunctions j55 j65 ) 1)
    (= (distanceBetweenJunctions j65 j55 ) 1)


    (isConnected j56 j66)
    (isConnected j66 j56)
    (= (distanceBetweenJunctions j56 j66 ) 1)
    (= (distanceBetweenJunctions j66 j56 ) 1)


    (isConnected j57 j67)
    (isConnected j67 j57)
    (= (distanceBetweenJunctions j57 j67 ) 1)
    (= (distanceBetweenJunctions j67 j57 ) 1)


    (isConnected j58 j68)
    (isConnected j68 j58)
    (= (distanceBetweenJunctions j58 j68 ) 1)
    (= (distanceBetweenJunctions j68 j58 ) 1)


    (isConnected j59 j69)
    (isConnected j69 j59)
    (= (distanceBetweenJunctions j59 j69 ) 1)
    (= (distanceBetweenJunctions j69 j59 ) 1)





    (isConnected j60 j61)
    (isConnected j61 j60)
    (= (distanceBetweenJunctions j60 j61 ) 1)
    (= (distanceBetweenJunctions j61 j60 ) 1)


    (isConnected j61 j62)
    (isConnected j62 j61)
    (= (distanceBetweenJunctions j61 j62 ) 1)
    (= (distanceBetweenJunctions j62 j61 ) 1)


    (isConnected j62 j63)
    (isConnected j63 j62)
    (= (distanceBetweenJunctions j62 j63 ) 1)
    (= (distanceBetweenJunctions j63 j62 ) 1)


    (isConnected j63 j64)
    (isConnected j64 j63)
    (= (distanceBetweenJunctions j63 j64 ) 1)
    (= (distanceBetweenJunctions j64 j63 ) 1)


    (isConnected j64 j65)
    (isConnected j65 j64)
    (= (distanceBetweenJunctions j64 j65 ) 1)
    (= (distanceBetweenJunctions j65 j64 ) 1)


    (isConnected j65 j66)
    (isConnected j66 j65)
    (= (distanceBetweenJunctions j65 j66 ) 1)
    (= (distanceBetweenJunctions j66 j65 ) 1)


    (isConnected j66 j67)
    (isConnected j67 j66)
    (= (distanceBetweenJunctions j66 j67 ) 1)
    (= (distanceBetweenJunctions j67 j66 ) 1)


    (isConnected j67 j68)
    (isConnected j68 j67)
    (= (distanceBetweenJunctions j67 j68 ) 1)
    (= (distanceBetweenJunctions j68 j67 ) 1)


    (isConnected j68 j69)
    (isConnected j69 j68)
    (= (distanceBetweenJunctions j68 j69 ) 1)
    (= (distanceBetweenJunctions j69 j68 ) 1)


    (isConnected j69 j70)
    (isConnected j70 j69)
    (= (distanceBetweenJunctions j69 j70 ) 1)
    (= (distanceBetweenJunctions j70 j69 ) 1)


    (isConnected j60 j70)
    (isConnected j70 j60)
    (= (distanceBetweenJunctions j60 j70 ) 1)
    (= (distanceBetweenJunctions j70 j60 ) 1)


    (isConnected j61 j71)
    (isConnected j71 j61)
    (= (distanceBetweenJunctions j61 j71 ) 1)
    (= (distanceBetweenJunctions j71 j61 ) 1)


    (isConnected j62 j72)
    (isConnected j72 j62)
    (= (distanceBetweenJunctions j62 j72 ) 1)
    (= (distanceBetweenJunctions j72 j62 ) 1)


    (isConnected j63 j73)
    (isConnected j73 j63)
    (= (distanceBetweenJunctions j63 j73 ) 1)
    (= (distanceBetweenJunctions j73 j63 ) 1)


    (isConnected j64 j74)
    (isConnected j74 j64)
    (= (distanceBetweenJunctions j64 j74 ) 1)
    (= (distanceBetweenJunctions j74 j64 ) 1)


    (isConnected j65 j75)
    (isConnected j75 j65)
    (= (distanceBetweenJunctions j65 j75 ) 1)
    (= (distanceBetweenJunctions j75 j65 ) 1)


    (isConnected j66 j76)
    (isConnected j76 j66)
    (= (distanceBetweenJunctions j66 j76 ) 1)
    (= (distanceBetweenJunctions j76 j66 ) 1)


    (isConnected j67 j77)
    (isConnected j77 j67)
    (= (distanceBetweenJunctions j67 j77 ) 1)
    (= (distanceBetweenJunctions j77 j67 ) 1)


    (isConnected j68 j78)
    (isConnected j78 j68)
    (= (distanceBetweenJunctions j68 j78 ) 1)
    (= (distanceBetweenJunctions j78 j68 ) 1)


    (isConnected j69 j79)
    (isConnected j79 j69)
    (= (distanceBetweenJunctions j69 j79 ) 1)
    (= (distanceBetweenJunctions j79 j69 ) 1)





    (isConnected j70 j71)
    (isConnected j71 j70)
    (= (distanceBetweenJunctions j70 j71 ) 1)
    (= (distanceBetweenJunctions j71 j70 ) 1)


    (isConnected j71 j72)
    (isConnected j72 j71)
    (= (distanceBetweenJunctions j71 j72 ) 1)
    (= (distanceBetweenJunctions j72 j71 ) 1)


    (isConnected j72 j73)
    (isConnected j73 j72)
    (= (distanceBetweenJunctions j72 j73 ) 1)
    (= (distanceBetweenJunctions j73 j72 ) 1)


    (isConnected j73 j74)
    (isConnected j74 j73)
    (= (distanceBetweenJunctions j73 j74 ) 1)
    (= (distanceBetweenJunctions j74 j73 ) 1)


    (isConnected j74 j75)
    (isConnected j75 j74)
    (= (distanceBetweenJunctions j74 j75 ) 1)
    (= (distanceBetweenJunctions j75 j74 ) 1)


    (isConnected j75 j76)
    (isConnected j76 j75)
    (= (distanceBetweenJunctions j75 j76 ) 1)
    (= (distanceBetweenJunctions j76 j75 ) 1)


    (isConnected j76 j77)
    (isConnected j77 j76)
    (= (distanceBetweenJunctions j76 j77 ) 1)
    (= (distanceBetweenJunctions j77 j76 ) 1)


    (isConnected j77 j78)
    (isConnected j78 j77)
    (= (distanceBetweenJunctions j77 j78 ) 1)
    (= (distanceBetweenJunctions j78 j77 ) 1)


    (isConnected j78 j79)
    (isConnected j79 j78)
    (= (distanceBetweenJunctions j78 j79 ) 1)
    (= (distanceBetweenJunctions j79 j78 ) 1)


    (isConnected j79 j80)
    (isConnected j80 j79)
    (= (distanceBetweenJunctions j79 j80 ) 1)
    (= (distanceBetweenJunctions j80 j79 ) 1)


    (isConnected j70 j80)
    (isConnected j80 j70)
    (= (distanceBetweenJunctions j70 j80 ) 1)
    (= (distanceBetweenJunctions j80 j70 ) 1)


    (isConnected j71 j81)
    (isConnected j81 j71)
    (= (distanceBetweenJunctions j71 j81 ) 1)
    (= (distanceBetweenJunctions j81 j71 ) 1)


    (isConnected j72 j82)
    (isConnected j82 j72)
    (= (distanceBetweenJunctions j72 j82 ) 1)
    (= (distanceBetweenJunctions j82 j72 ) 1)


    (isConnected j73 j83)
    (isConnected j83 j73)
    (= (distanceBetweenJunctions j73 j83 ) 1)
    (= (distanceBetweenJunctions j83 j73 ) 1)


    (isConnected j74 j84)
    (isConnected j84 j74)
    (= (distanceBetweenJunctions j74 j84 ) 1)
    (= (distanceBetweenJunctions j84 j74 ) 1)


    (isConnected j75 j85)
    (isConnected j85 j75)
    (= (distanceBetweenJunctions j75 j85 ) 1)
    (= (distanceBetweenJunctions j85 j75 ) 1)


    (isConnected j76 j86)
    (isConnected j86 j76)
    (= (distanceBetweenJunctions j76 j86 ) 1)
    (= (distanceBetweenJunctions j86 j76 ) 1)


    (isConnected j77 j87)
    (isConnected j87 j77)
    (= (distanceBetweenJunctions j77 j87 ) 1)
    (= (distanceBetweenJunctions j87 j77 ) 1)


    (isConnected j78 j88)
    (isConnected j88 j78)
    (= (distanceBetweenJunctions j78 j88 ) 1)
    (= (distanceBetweenJunctions j88 j78 ) 1)


    (isConnected j79 j89)
    (isConnected j89 j79)
    (= (distanceBetweenJunctions j79 j89 ) 1)
    (= (distanceBetweenJunctions j89 j79 ) 1)





    (isConnected j80 j81)
    (isConnected j81 j80)
    (= (distanceBetweenJunctions j80 j81 ) 1)
    (= (distanceBetweenJunctions j81 j80 ) 1)


    (isConnected j81 j82)
    (isConnected j82 j81)
    (= (distanceBetweenJunctions j81 j82 ) 1)
    (= (distanceBetweenJunctions j82 j81 ) 1)


    (isConnected j82 j83)
    (isConnected j83 j82)
    (= (distanceBetweenJunctions j82 j83 ) 1)
    (= (distanceBetweenJunctions j83 j82 ) 1)


    (isConnected j83 j84)
    (isConnected j84 j83)
    (= (distanceBetweenJunctions j83 j84 ) 1)
    (= (distanceBetweenJunctions j84 j83 ) 1)


    (isConnected j84 j85)
    (isConnected j85 j84)
    (= (distanceBetweenJunctions j84 j85 ) 1)
    (= (distanceBetweenJunctions j85 j84 ) 1)


    (isConnected j85 j86)
    (isConnected j86 j85)
    (= (distanceBetweenJunctions j85 j86 ) 1)
    (= (distanceBetweenJunctions j86 j85 ) 1)


    (isConnected j86 j87)
    (isConnected j87 j86)
    (= (distanceBetweenJunctions j86 j87 ) 1)
    (= (distanceBetweenJunctions j87 j86 ) 1)


    (isConnected j87 j88)
    (isConnected j88 j87)
    (= (distanceBetweenJunctions j87 j88 ) 1)
    (= (distanceBetweenJunctions j88 j87 ) 1)


    (isConnected j88 j89)
    (isConnected j89 j88)
    (= (distanceBetweenJunctions j88 j89 ) 1)
    (= (distanceBetweenJunctions j89 j88 ) 1)


    (isConnected j89 j90)
    (isConnected j90 j89)
    (= (distanceBetweenJunctions j89 j90 ) 1)
    (= (distanceBetweenJunctions j90 j89 ) 1)


    (isConnected j80 j90)
    (isConnected j90 j80)
    (= (distanceBetweenJunctions j80 j90 ) 1)
    (= (distanceBetweenJunctions j90 j80 ) 1)


    (isConnected j81 j91)
    (isConnected j91 j81)
    (= (distanceBetweenJunctions j81 j91 ) 1)
    (= (distanceBetweenJunctions j91 j81 ) 1)


    (isConnected j82 j92)
    (isConnected j92 j82)
    (= (distanceBetweenJunctions j82 j92 ) 1)
    (= (distanceBetweenJunctions j92 j82 ) 1)


    (isConnected j83 j93)
    (isConnected j93 j83)
    (= (distanceBetweenJunctions j83 j93 ) 1)
    (= (distanceBetweenJunctions j93 j83 ) 1)


    (isConnected j84 j94)
    (isConnected j94 j84)
    (= (distanceBetweenJunctions j84 j94 ) 1)
    (= (distanceBetweenJunctions j94 j84 ) 1)


    (isConnected j85 j95)
    (isConnected j95 j85)
    (= (distanceBetweenJunctions j85 j95 ) 1)
    (= (distanceBetweenJunctions j95 j85 ) 1)


    (isConnected j86 j96)
    (isConnected j96 j86)
    (= (distanceBetweenJunctions j86 j96 ) 1)
    (= (distanceBetweenJunctions j96 j86 ) 1)


    (isConnected j87 j97)
    (isConnected j97 j87)
    (= (distanceBetweenJunctions j87 j97 ) 1)
    (= (distanceBetweenJunctions j97 j87 ) 1)


    (isConnected j88 j98)
    (isConnected j98 j88)
    (= (distanceBetweenJunctions j88 j98 ) 1)
    (= (distanceBetweenJunctions j98 j88 ) 1)


    (isConnected j89 j99)
    (isConnected j99 j89)
    (= (distanceBetweenJunctions j89 j99 ) 1)
    (= (distanceBetweenJunctions j99 j89 ) 1)





    (isConnected j90 j91)
    (isConnected j91 j90)
    (= (distanceBetweenJunctions j90 j91 ) 1)
    (= (distanceBetweenJunctions j91 j90 ) 1)


    (isConnected j91 j92)
    (isConnected j92 j91)
    (= (distanceBetweenJunctions j91 j92 ) 1)
    (= (distanceBetweenJunctions j92 j91 ) 1)


    (isConnected j92 j93)
    (isConnected j93 j92)
    (= (distanceBetweenJunctions j92 j93 ) 1)
    (= (distanceBetweenJunctions j93 j92 ) 1)


    (isConnected j93 j94)
    (isConnected j94 j93)
    (= (distanceBetweenJunctions j93 j94 ) 1)
    (= (distanceBetweenJunctions j94 j93 ) 1)


    (isConnected j94 j95)
    (isConnected j95 j94)
    (= (distanceBetweenJunctions j94 j95 ) 1)
    (= (distanceBetweenJunctions j95 j94 ) 1)


    (isConnected j95 j96)
    (isConnected j96 j95)
    (= (distanceBetweenJunctions j95 j96 ) 1)
    (= (distanceBetweenJunctions j96 j95 ) 1)


    (isConnected j96 j97)
    (isConnected j97 j96)
    (= (distanceBetweenJunctions j96 j97 ) 1)
    (= (distanceBetweenJunctions j97 j96 ) 1)


    (isConnected j97 j98)
    (isConnected j98 j97)
    (= (distanceBetweenJunctions j97 j98 ) 1)
    (= (distanceBetweenJunctions j98 j97 ) 1)


    (isConnected j98 j99)
    (isConnected j99 j98)
    (= (distanceBetweenJunctions j98 j99 ) 1)
    (= (distanceBetweenJunctions j99 j98 ) 1)


    (isConnected j99 j100)
    (isConnected j100 j99)
    (= (distanceBetweenJunctions j99 j100 ) 1)
    (= (distanceBetweenJunctions j100 j99 ) 1)


    (isConnected j90 j100)
    (isConnected j100 j90)
    (= (distanceBetweenJunctions j90 j100 ) 1)
    (= (distanceBetweenJunctions j100 j90 ) 1)


    (isConnected j91 j101)
    (isConnected j101 j91)
    (= (distanceBetweenJunctions j91 j101 ) 1)
    (= (distanceBetweenJunctions j101 j91 ) 1)


    (isConnected j92 j102)
    (isConnected j102 j92)
    (= (distanceBetweenJunctions j92 j102 ) 1)
    (= (distanceBetweenJunctions j102 j92 ) 1)


    (isConnected j93 j103)
    (isConnected j103 j93)
    (= (distanceBetweenJunctions j93 j103 ) 1)
    (= (distanceBetweenJunctions j103 j93 ) 1)


    (isConnected j94 j104)
    (isConnected j104 j94)
    (= (distanceBetweenJunctions j94 j104 ) 1)
    (= (distanceBetweenJunctions j104 j94 ) 1)


    (isConnected j95 j105)
    (isConnected j105 j95)
    (= (distanceBetweenJunctions j95 j105 ) 1)
    (= (distanceBetweenJunctions j105 j95 ) 1)


    (isConnected j96 j106)
    (isConnected j106 j96)
    (= (distanceBetweenJunctions j96 j106 ) 1)
    (= (distanceBetweenJunctions j106 j96 ) 1)


    (isConnected j97 j107)
    (isConnected j107 j97)
    (= (distanceBetweenJunctions j97 j107 ) 1)
    (= (distanceBetweenJunctions j107 j97 ) 1)


    (isConnected j98 j108)
    (isConnected j108 j98)
    (= (distanceBetweenJunctions j98 j108 ) 1)
    (= (distanceBetweenJunctions j108 j98 ) 1)


    (isConnected j99 j109)
    (isConnected j109 j99)
    (= (distanceBetweenJunctions j99 j109 ) 1)
    (= (distanceBetweenJunctions j109 j99 ) 1)





    (isConnected j100 j101)
    (isConnected j101 j100)
    (= (distanceBetweenJunctions j100 j101 ) 1)
    (= (distanceBetweenJunctions j101 j100 ) 1)


    (isConnected j101 j102)
    (isConnected j102 j101)
    (= (distanceBetweenJunctions j101 j102 ) 1)
    (= (distanceBetweenJunctions j102 j101 ) 1)


    (isConnected j102 j103)
    (isConnected j103 j102)
    (= (distanceBetweenJunctions j102 j103 ) 1)
    (= (distanceBetweenJunctions j103 j102 ) 1)


    (isConnected j103 j104)
    (isConnected j104 j103)
    (= (distanceBetweenJunctions j103 j104 ) 1)
    (= (distanceBetweenJunctions j104 j103 ) 1)


    (isConnected j104 j105)
    (isConnected j105 j104)
    (= (distanceBetweenJunctions j104 j105 ) 1)
    (= (distanceBetweenJunctions j105 j104 ) 1)


    (isConnected j105 j106)
    (isConnected j106 j105)
    (= (distanceBetweenJunctions j105 j106 ) 1)
    (= (distanceBetweenJunctions j106 j105 ) 1)


    (isConnected j106 j107)
    (isConnected j107 j106)
    (= (distanceBetweenJunctions j106 j107 ) 1)
    (= (distanceBetweenJunctions j107 j106 ) 1)


    (isConnected j107 j108)
    (isConnected j108 j107)
    (= (distanceBetweenJunctions j107 j108 ) 1)
    (= (distanceBetweenJunctions j108 j107 ) 1)


    (isConnected j108 j109)
    (isConnected j109 j108)
    (= (distanceBetweenJunctions j108 j109 ) 1)
    (= (distanceBetweenJunctions j109 j108 ) 1)


    (isConnected j109 j110)
    (isConnected j110 j109)
    (= (distanceBetweenJunctions j109 j110 ) 1)
    (= (distanceBetweenJunctions j110 j109 ) 1)


    (isConnected j100 j110)
    (isConnected j110 j100)
    (= (distanceBetweenJunctions j100 j110 ) 1)
    (= (distanceBetweenJunctions j110 j100 ) 1)


    (isConnected j101 j111)
    (isConnected j111 j101)
    (= (distanceBetweenJunctions j101 j111 ) 1)
    (= (distanceBetweenJunctions j111 j101 ) 1)


    (isConnected j102 j112)
    (isConnected j112 j102)
    (= (distanceBetweenJunctions j102 j112 ) 1)
    (= (distanceBetweenJunctions j112 j102 ) 1)


    (isConnected j103 j113)
    (isConnected j113 j103)
    (= (distanceBetweenJunctions j103 j113 ) 1)
    (= (distanceBetweenJunctions j113 j103 ) 1)


    (isConnected j104 j114)
    (isConnected j114 j104)
    (= (distanceBetweenJunctions j104 j114 ) 1)
    (= (distanceBetweenJunctions j114 j104 ) 1)


    (isConnected j105 j115)
    (isConnected j115 j105)
    (= (distanceBetweenJunctions j105 j115 ) 1)
    (= (distanceBetweenJunctions j115 j105 ) 1)


    (isConnected j106 j116)
    (isConnected j116 j106)
    (= (distanceBetweenJunctions j106 j116 ) 1)
    (= (distanceBetweenJunctions j116 j106 ) 1)


    (isConnected j107 j117)
    (isConnected j117 j107)
    (= (distanceBetweenJunctions j107 j117 ) 1)
    (= (distanceBetweenJunctions j117 j107 ) 1)


    (isConnected j108 j118)
    (isConnected j118 j108)
    (= (distanceBetweenJunctions j108 j118 ) 1)
    (= (distanceBetweenJunctions j118 j108 ) 1)


    (isConnected j109 j119)
    (isConnected j119 j109)
    (= (distanceBetweenJunctions j109 j119 ) 1)
    (= (distanceBetweenJunctions j119 j109 ) 1)





    (isConnected j110 j111)
    (isConnected j111 j110)
    (= (distanceBetweenJunctions j110 j111 ) 1)
    (= (distanceBetweenJunctions j111 j110 ) 1)


    (isConnected j111 j112)
    (isConnected j112 j111)
    (= (distanceBetweenJunctions j111 j112 ) 1)
    (= (distanceBetweenJunctions j112 j111 ) 1)


    (isConnected j112 j113)
    (isConnected j113 j112)
    (= (distanceBetweenJunctions j112 j113 ) 1)
    (= (distanceBetweenJunctions j113 j112 ) 1)


    (isConnected j113 j114)
    (isConnected j114 j113)
    (= (distanceBetweenJunctions j113 j114 ) 1)
    (= (distanceBetweenJunctions j114 j113 ) 1)


    (isConnected j114 j115)
    (isConnected j115 j114)
    (= (distanceBetweenJunctions j114 j115 ) 1)
    (= (distanceBetweenJunctions j115 j114 ) 1)


    (isConnected j115 j116)
    (isConnected j116 j115)
    (= (distanceBetweenJunctions j115 j116 ) 1)
    (= (distanceBetweenJunctions j116 j115 ) 1)


    (isConnected j116 j117)
    (isConnected j117 j116)
    (= (distanceBetweenJunctions j116 j117 ) 1)
    (= (distanceBetweenJunctions j117 j116 ) 1)


    (isConnected j117 j118)
    (isConnected j118 j117)
    (= (distanceBetweenJunctions j117 j118 ) 1)
    (= (distanceBetweenJunctions j118 j117 ) 1)


    (isConnected j118 j119)
    (isConnected j119 j118)
    (= (distanceBetweenJunctions j118 j119 ) 1)
    (= (distanceBetweenJunctions j119 j118 ) 1)


    (isConnected j119 j120)
    (isConnected j120 j119)
    (= (distanceBetweenJunctions j119 j120 ) 1)
    (= (distanceBetweenJunctions j120 j119 ) 1)


    (isConnected j110 j120)
    (isConnected j120 j110)
    (= (distanceBetweenJunctions j110 j120 ) 1)
    (= (distanceBetweenJunctions j120 j110 ) 1)


    (isConnected j111 j121)
    (isConnected j121 j111)
    (= (distanceBetweenJunctions j111 j121 ) 1)
    (= (distanceBetweenJunctions j121 j111 ) 1)


    (isConnected j112 j122)
    (isConnected j122 j112)
    (= (distanceBetweenJunctions j112 j122 ) 1)
    (= (distanceBetweenJunctions j122 j112 ) 1)


    (isConnected j113 j123)
    (isConnected j123 j113)
    (= (distanceBetweenJunctions j113 j123 ) 1)
    (= (distanceBetweenJunctions j123 j113 ) 1)


    (isConnected j114 j124)
    (isConnected j124 j114)
    (= (distanceBetweenJunctions j114 j124 ) 1)
    (= (distanceBetweenJunctions j124 j114 ) 1)


    (isConnected j115 j125)
    (isConnected j125 j115)
    (= (distanceBetweenJunctions j115 j125 ) 1)
    (= (distanceBetweenJunctions j125 j115 ) 1)


    (isConnected j116 j126)
    (isConnected j126 j116)
    (= (distanceBetweenJunctions j116 j126 ) 1)
    (= (distanceBetweenJunctions j126 j116 ) 1)


    (isConnected j117 j127)
    (isConnected j127 j117)
    (= (distanceBetweenJunctions j117 j127 ) 1)
    (= (distanceBetweenJunctions j127 j117 ) 1)


    (isConnected j118 j128)
    (isConnected j128 j118)
    (= (distanceBetweenJunctions j118 j128 ) 1)
    (= (distanceBetweenJunctions j128 j118 ) 1)


    (isConnected j119 j129)
    (isConnected j129 j119)
    (= (distanceBetweenJunctions j119 j129 ) 1)
    (= (distanceBetweenJunctions j129 j119 ) 1)





    (isConnected j120 j121)

    (isConnected j121 j120)
    (= (distanceBetweenJunctions j120 j121 ) 1)
    (= (distanceBetweenJunctions j121 j120 ) 1)


    (isConnected j121 j122)
    (isConnected j122 j121)
    (= (distanceBetweenJunctions j121 j122 ) 1)
    (= (distanceBetweenJunctions j122 j121 ) 1)


    (isConnected j122 j123)
    (isConnected j123 j122)
    (= (distanceBetweenJunctions j122 j123 ) 1)
    (= (distanceBetweenJunctions j123 j122 ) 1)


    (isConnected j123 j124)
    (isConnected j124 j123)
    (= (distanceBetweenJunctions j123 j124 ) 1)
    (= (distanceBetweenJunctions j124 j123 ) 1)


    (isConnected j124 j125)
    (isConnected j125 j124)
    (= (distanceBetweenJunctions j124 j125 ) 1)
    (= (distanceBetweenJunctions j125 j124 ) 1)


    (isConnected j125 j126)
    (isConnected j126 j125)
    (= (distanceBetweenJunctions j125 j126 ) 1)
    (= (distanceBetweenJunctions j126 j125 ) 1)


    (isConnected j126 j127)
    (isConnected j127 j126)
    (= (distanceBetweenJunctions j126 j127 ) 1)
    (= (distanceBetweenJunctions j127 j126 ) 1)


    (isConnected j127 j128)
    (isConnected j128 j127)
    (= (distanceBetweenJunctions j127 j128 ) 1)
    (= (distanceBetweenJunctions j128 j127 ) 1)


    (isConnected j128 j129)
    (isConnected j129 j128)
    (= (distanceBetweenJunctions j128 j129 ) 1)
    (= (distanceBetweenJunctions j129 j128 ) 1)


    (isConnected j129 j130)
    (isConnected j130 j129)
    (= (distanceBetweenJunctions j129 j130 ) 1)
    (= (distanceBetweenJunctions j130 j129 ) 1)


    (isConnected j120 j130)
    (isConnected j130 j120)
    (= (distanceBetweenJunctions j120 j130 ) 1)
    (= (distanceBetweenJunctions j130 j120 ) 1)


    (isConnected j121 j131)
    (isConnected j131 j121)
    (= (distanceBetweenJunctions j121 j131 ) 1)
    (= (distanceBetweenJunctions j131 j121 ) 1)


    (isConnected j122 j132)
    (isConnected j132 j122)
    (= (distanceBetweenJunctions j122 j132 ) 1)
    (= (distanceBetweenJunctions j132 j122 ) 1)


    (isConnected j123 j133)
    (isConnected j133 j123)
    (= (distanceBetweenJunctions j123 j133 ) 1)
    (= (distanceBetweenJunctions j133 j123 ) 1)


    (isConnected j124 j134)
    (isConnected j134 j124)
    (= (distanceBetweenJunctions j124 j134 ) 1)
    (= (distanceBetweenJunctions j134 j124 ) 1)


    (isConnected j125 j135)
    (isConnected j135 j125)
    (= (distanceBetweenJunctions j125 j135 ) 1)
    (= (distanceBetweenJunctions j135 j125 ) 1)


    (isConnected j126 j136)
    (isConnected j136 j126)
    (= (distanceBetweenJunctions j126 j136 ) 1)
    (= (distanceBetweenJunctions j136 j126 ) 1)


    (isConnected j127 j137)
    (isConnected j137 j127)
    (= (distanceBetweenJunctions j127 j137 ) 1)
    (= (distanceBetweenJunctions j137 j127 ) 1)


    (isConnected j128 j138)
    (isConnected j138 j128)
    (= (distanceBetweenJunctions j128 j138 ) 1)
    (= (distanceBetweenJunctions j138 j128 ) 1)


    (isConnected j129 j139)
    (isConnected j139 j129)
    (= (distanceBetweenJunctions j129 j139 ) 1)
    (= (distanceBetweenJunctions j139 j129 ) 1)





    (isConnected j130 j131)
    (isConnected j131 j130)
    (= (distanceBetweenJunctions j130 j131 ) 1)
    (= (distanceBetweenJunctions j131 j130 ) 1)


    (isConnected j131 j132)
    (isConnected j132 j131)
    (= (distanceBetweenJunctions j131 j132 ) 1)
    (= (distanceBetweenJunctions j132 j131 ) 1)


    (isConnected j132 j133)
    (isConnected j133 j132)
    (= (distanceBetweenJunctions j132 j133 ) 1)
    (= (distanceBetweenJunctions j133 j132 ) 1)


    (isConnected j133 j134)
    (isConnected j134 j133)
    (= (distanceBetweenJunctions j133 j134 ) 1)
    (= (distanceBetweenJunctions j134 j133 ) 1)


    (isConnected j134 j135)
    (isConnected j135 j134)
    (= (distanceBetweenJunctions j134 j135 ) 1)
    (= (distanceBetweenJunctions j135 j134 ) 1)


    (isConnected j135 j136)
    (isConnected j136 j135)
    (= (distanceBetweenJunctions j135 j136 ) 1)
    (= (distanceBetweenJunctions j136 j135 ) 1)


    (isConnected j136 j137)
    (isConnected j137 j136)
    (= (distanceBetweenJunctions j136 j137 ) 1)
    (= (distanceBetweenJunctions j137 j136 ) 1)


    (isConnected j137 j138)
    (isConnected j138 j137)
    (= (distanceBetweenJunctions j137 j138 ) 1)
    (= (distanceBetweenJunctions j138 j137 ) 1)


    (isConnected j138 j139)
    (isConnected j139 j138)
    (= (distanceBetweenJunctions j138 j139 ) 1)
    (= (distanceBetweenJunctions j139 j138 ) 1)


    (isConnected j139 j140)
    (isConnected j140 j139)
    (= (distanceBetweenJunctions j139 j140 ) 1)
    (= (distanceBetweenJunctions j140 j139 ) 1)


    (isConnected j130 j140)
    (isConnected j140 j130)
    (= (distanceBetweenJunctions j130 j140 ) 1)
    (= (distanceBetweenJunctions j140 j130 ) 1)


    (isConnected j131 j141)
    (isConnected j141 j131)
    (= (distanceBetweenJunctions j131 j141 ) 1)
    (= (distanceBetweenJunctions j141 j131 ) 1)


    (isConnected j132 j142)
    (isConnected j142 j132)
    (= (distanceBetweenJunctions j132 j142 ) 1)
    (= (distanceBetweenJunctions j142 j132 ) 1)


    (isConnected j133 j143)
    (isConnected j143 j133)
    (= (distanceBetweenJunctions j133 j143 ) 1)
    (= (distanceBetweenJunctions j143 j133 ) 1)


    (isConnected j134 j144)
    (isConnected j144 j134)
    (= (distanceBetweenJunctions j134 j144 ) 1)
    (= (distanceBetweenJunctions j144 j134 ) 1)


    (isConnected j135 j145)
    (isConnected j145 j135)
    (= (distanceBetweenJunctions j135 j145 ) 1)
    (= (distanceBetweenJunctions j145 j135 ) 1)


    (isConnected j136 j146)
    (isConnected j146 j136)
    (= (distanceBetweenJunctions j136 j146 ) 1)
    (= (distanceBetweenJunctions j146 j136 ) 1)


    (isConnected j137 j147)
    (isConnected j147 j137)
    (= (distanceBetweenJunctions j137 j147 ) 1)
    (= (distanceBetweenJunctions j147 j137 ) 1)


    (isConnected j138 j148)
    (isConnected j148 j138)
    (= (distanceBetweenJunctions j138 j148 ) 1)
    (= (distanceBetweenJunctions j148 j138 ) 1)


    (isConnected j139 j149)
    (isConnected j149 j139)
    (= (distanceBetweenJunctions j139 j149 ) 1)
    (= (distanceBetweenJunctions j149 j139 ) 1)





    (isConnected j140 j141)
    (isConnected j141 j140)
    (= (distanceBetweenJunctions j140 j141 ) 1)
    (= (distanceBetweenJunctions j141 j140 ) 1)


    (isConnected j141 j142)
    (isConnected j142 j141)
    (= (distanceBetweenJunctions j141 j142 ) 1)
    (= (distanceBetweenJunctions j142 j141 ) 1)


    (isConnected j142 j143)
    (isConnected j143 j142)
    (= (distanceBetweenJunctions j142 j143 ) 1)
    (= (distanceBetweenJunctions j143 j142 ) 1)


    (isConnected j143 j144)
    (isConnected j144 j143)
    (= (distanceBetweenJunctions j143 j144 ) 1)
    (= (distanceBetweenJunctions j144 j143 ) 1)


    (isConnected j144 j145)
    (isConnected j145 j144)
    (= (distanceBetweenJunctions j144 j145 ) 1)
    (= (distanceBetweenJunctions j145 j144 ) 1)


    (isConnected j145 j146)
    (isConnected j146 j145)
    (= (distanceBetweenJunctions j145 j146 ) 1)
    (= (distanceBetweenJunctions j146 j145 ) 1)


    (isConnected j146 j147)
    (isConnected j147 j146)
    (= (distanceBetweenJunctions j146 j147 ) 1)
    (= (distanceBetweenJunctions j147 j146 ) 1)


    (isConnected j147 j148)
    (isConnected j148 j147)
    (= (distanceBetweenJunctions j147 j148 ) 1)
    (= (distanceBetweenJunctions j148 j147 ) 1)


    (isConnected j148 j149)
    (isConnected j149 j148)
    (= (distanceBetweenJunctions j148 j149 ) 1)
    (= (distanceBetweenJunctions j149 j148 ) 1)


    (isConnected j149 j150)
    (isConnected j150 j149)
    (= (distanceBetweenJunctions j149 j150 ) 1)
    (= (distanceBetweenJunctions j150 j149 ) 1)


    (isConnected j140 j150)
    (isConnected j150 j140)
    (= (distanceBetweenJunctions j140 j150 ) 1)
    (= (distanceBetweenJunctions j150 j140 ) 1)


    (isConnected j141 j151)
    (isConnected j151 j141)
    (= (distanceBetweenJunctions j141 j151 ) 1)
    (= (distanceBetweenJunctions j151 j141 ) 1)


    (isConnected j142 j152)
    (isConnected j152 j142)
    (= (distanceBetweenJunctions j142 j152 ) 1)
    (= (distanceBetweenJunctions j152 j142 ) 1)


    (isConnected j143 j153)
    (isConnected j153 j143)
    (= (distanceBetweenJunctions j143 j153 ) 1)
    (= (distanceBetweenJunctions j153 j143 ) 1)


    (isConnected j144 j154)
    (isConnected j154 j144)
    (= (distanceBetweenJunctions j144 j154 ) 1)
    (= (distanceBetweenJunctions j154 j144 ) 1)


    (isConnected j145 j155)
    (isConnected j155 j145)
    (= (distanceBetweenJunctions j145 j155 ) 1)
    (= (distanceBetweenJunctions j155 j145 ) 1)


    (isConnected j146 j156)
    (isConnected j156 j146)
    (= (distanceBetweenJunctions j146 j156 ) 1)
    (= (distanceBetweenJunctions j156 j146 ) 1)


    (isConnected j147 j157)
    (isConnected j157 j147)
    (= (distanceBetweenJunctions j147 j157 ) 1)
    (= (distanceBetweenJunctions j157 j147 ) 1)


    (isConnected j148 j158)
    (isConnected j158 j148)
    (= (distanceBetweenJunctions j148 j158 ) 1)
    (= (distanceBetweenJunctions j158 j148 ) 1)


    (isConnected j149 j159)
    (isConnected j159 j149)
    (= (distanceBetweenJunctions j149 j159 ) 1)
    (= (distanceBetweenJunctions j159 j149 ) 1)





    (isConnected j150 j151)
    (isConnected j151 j150)
    (= (distanceBetweenJunctions j150 j151 ) 1)
    (= (distanceBetweenJunctions j151 j150 ) 1)


    (isConnected j151 j152)
    (isConnected j152 j151)
    (= (distanceBetweenJunctions j151 j152 ) 1)
    (= (distanceBetweenJunctions j152 j151 ) 1)


    (isConnected j152 j153)
    (isConnected j153 j152)
    (= (distanceBetweenJunctions j152 j153 ) 1)
    (= (distanceBetweenJunctions j153 j152 ) 1)


    (isConnected j153 j154)
    (isConnected j154 j153)
    (= (distanceBetweenJunctions j153 j154 ) 1)
    (= (distanceBetweenJunctions j154 j153 ) 1)


    (isConnected j154 j155)
    (isConnected j155 j154)
    (= (distanceBetweenJunctions j154 j155 ) 1)
    (= (distanceBetweenJunctions j155 j154 ) 1)


    (isConnected j155 j156)
    (isConnected j156 j155)
    (= (distanceBetweenJunctions j155 j156 ) 1)
    (= (distanceBetweenJunctions j156 j155 ) 1)


    (isConnected j156 j157)
    (isConnected j157 j156)
    (= (distanceBetweenJunctions j156 j157 ) 1)
    (= (distanceBetweenJunctions j157 j156 ) 1)


    (isConnected j157 j158)
    (isConnected j158 j157)
    (= (distanceBetweenJunctions j157 j158 ) 1)
    (= (distanceBetweenJunctions j158 j157 ) 1)


    (isConnected j158 j159)
    (isConnected j159 j158)
    (= (distanceBetweenJunctions j158 j159 ) 1)
    (= (distanceBetweenJunctions j159 j158 ) 1)


    (isConnected j159 j160)
    (isConnected j160 j159)
    (= (distanceBetweenJunctions j159 j160 ) 1)
    (= (distanceBetweenJunctions j160 j159 ) 1)


    (isConnected j150 j160)
    (isConnected j160 j150)
    (= (distanceBetweenJunctions j150 j160 ) 1)
    (= (distanceBetweenJunctions j160 j150 ) 1)


    (isConnected j151 j161)
    (isConnected j161 j151)
    (= (distanceBetweenJunctions j151 j161 ) 1)
    (= (distanceBetweenJunctions j161 j151 ) 1)


    (isConnected j152 j162)
    (isConnected j162 j152)
    (= (distanceBetweenJunctions j152 j162 ) 1)
    (= (distanceBetweenJunctions j162 j152 ) 1)


    (isConnected j153 j163)
    (isConnected j163 j153)
    (= (distanceBetweenJunctions j153 j163 ) 1)
    (= (distanceBetweenJunctions j163 j153 ) 1)


    (isConnected j154 j164)
    (isConnected j164 j154)
    (= (distanceBetweenJunctions j154 j164 ) 1)
    (= (distanceBetweenJunctions j164 j154 ) 1)


    (isConnected j155 j165)
    (isConnected j165 j155)
    (= (distanceBetweenJunctions j155 j165 ) 1)
    (= (distanceBetweenJunctions j165 j155 ) 1)


    (isConnected j156 j166)
    (isConnected j166 j156)
    (= (distanceBetweenJunctions j156 j166 ) 1)
    (= (distanceBetweenJunctions j166 j156 ) 1)


    (isConnected j157 j167)
    (isConnected j167 j157)
    (= (distanceBetweenJunctions j157 j167 ) 1)
    (= (distanceBetweenJunctions j167 j157 ) 1)


    (isConnected j158 j168)
    (isConnected j168 j158)
    (= (distanceBetweenJunctions j158 j168 ) 1)
    (= (distanceBetweenJunctions j168 j158 ) 1)


    (isConnected j159 j169)
    (isConnected j169 j159)
    (= (distanceBetweenJunctions j159 j169 ) 1)
    (= (distanceBetweenJunctions j169 j159 ) 1)





    (isConnected j160 j161)
    (isConnected j161 j160)
    (= (distanceBetweenJunctions j160 j161 ) 1)
    (= (distanceBetweenJunctions j161 j160 ) 1)


    (isConnected j161 j162)
    (isConnected j162 j161)
    (= (distanceBetweenJunctions j161 j162 ) 1)
    (= (distanceBetweenJunctions j162 j161 ) 1)


    (isConnected j162 j163)
    (isConnected j163 j162)
    (= (distanceBetweenJunctions j162 j163 ) 1)
    (= (distanceBetweenJunctions j163 j162 ) 1)


    (isConnected j163 j164)
    (isConnected j164 j163)
    (= (distanceBetweenJunctions j163 j164 ) 1)
    (= (distanceBetweenJunctions j164 j163 ) 1)


    (isConnected j164 j165)
    (isConnected j165 j164)
    (= (distanceBetweenJunctions j164 j165 ) 1)
    (= (distanceBetweenJunctions j165 j164 ) 1)


    (isConnected j165 j166)
    (isConnected j166 j165)
    (= (distanceBetweenJunctions j165 j166 ) 1)
    (= (distanceBetweenJunctions j166 j165 ) 1)


    (isConnected j166 j167)
    (isConnected j167 j166)
    (= (distanceBetweenJunctions j166 j167 ) 1)
    (= (distanceBetweenJunctions j167 j166 ) 1)


    (isConnected j167 j168)
    (isConnected j168 j167)
    (= (distanceBetweenJunctions j167 j168 ) 1)
    (= (distanceBetweenJunctions j168 j167 ) 1)


    (isConnected j168 j169)
    (isConnected j169 j168)
    (= (distanceBetweenJunctions j168 j169 ) 1)
    (= (distanceBetweenJunctions j169 j168 ) 1)


    (isConnected j169 j170)
    (isConnected j170 j169)
    (= (distanceBetweenJunctions j169 j170 ) 1)
    (= (distanceBetweenJunctions j170 j169 ) 1)


    (isConnected j160 j170)
    (isConnected j170 j160)
    (= (distanceBetweenJunctions j160 j170 ) 1)
    (= (distanceBetweenJunctions j170 j160 ) 1)


    (isConnected j161 j171)
    (isConnected j171 j161)
    (= (distanceBetweenJunctions j161 j171 ) 1)
    (= (distanceBetweenJunctions j171 j161 ) 1)


    (isConnected j162 j172)
    (isConnected j172 j162)
    (= (distanceBetweenJunctions j162 j172 ) 1)
    (= (distanceBetweenJunctions j172 j162 ) 1)


    (isConnected j163 j173)
    (isConnected j173 j163)
    (= (distanceBetweenJunctions j163 j173 ) 1)
    (= (distanceBetweenJunctions j173 j163 ) 1)


    (isConnected j164 j174)
    (isConnected j174 j164)
    (= (distanceBetweenJunctions j164 j174 ) 1)
    (= (distanceBetweenJunctions j174 j164 ) 1)


    (isConnected j165 j175)
    (isConnected j175 j165)
    (= (distanceBetweenJunctions j165 j175 ) 1)
    (= (distanceBetweenJunctions j175 j165 ) 1)


    (isConnected j166 j176)
    (isConnected j176 j166)
    (= (distanceBetweenJunctions j166 j176 ) 1)
    (= (distanceBetweenJunctions j176 j166 ) 1)


    (isConnected j167 j177)
    (isConnected j177 j167)
    (= (distanceBetweenJunctions j167 j177 ) 1)
    (= (distanceBetweenJunctions j177 j167 ) 1)


    (isConnected j168 j178)
    (isConnected j178 j168)
    (= (distanceBetweenJunctions j168 j178 ) 1)
    (= (distanceBetweenJunctions j178 j168 ) 1)


    (isConnected j169 j179)
    (isConnected j179 j169)
    (= (distanceBetweenJunctions j169 j179 ) 1)
    (= (distanceBetweenJunctions j179 j169 ) 1)





    (isConnected j170 j171)
    (isConnected j171 j170)
    (= (distanceBetweenJunctions j170 j171 ) 1)
    (= (distanceBetweenJunctions j171 j170 ) 1)


    (isConnected j171 j172)
    (isConnected j172 j171)
    (= (distanceBetweenJunctions j171 j172 ) 1)
    (= (distanceBetweenJunctions j172 j171 ) 1)


    (isConnected j172 j173)
    (isConnected j173 j172)
    (= (distanceBetweenJunctions j172 j173 ) 1)
    (= (distanceBetweenJunctions j173 j172 ) 1)


    (isConnected j173 j174)
    (isConnected j174 j173)
    (= (distanceBetweenJunctions j173 j174 ) 1)
    (= (distanceBetweenJunctions j174 j173 ) 1)


    (isConnected j174 j175)
    (isConnected j175 j174)
    (= (distanceBetweenJunctions j174 j175 ) 1)
    (= (distanceBetweenJunctions j175 j174 ) 1)


    (isConnected j175 j176)
    (isConnected j176 j175)
    (= (distanceBetweenJunctions j175 j176 ) 1)
    (= (distanceBetweenJunctions j176 j175 ) 1)


    (isConnected j176 j177)
    (isConnected j177 j176)
    (= (distanceBetweenJunctions j176 j177 ) 1)
    (= (distanceBetweenJunctions j177 j176 ) 1)


    (isConnected j177 j178)
    (isConnected j178 j177)
    (= (distanceBetweenJunctions j177 j178 ) 1)
    (= (distanceBetweenJunctions j178 j177 ) 1)


    (isConnected j178 j179)
    (isConnected j179 j178)
    (= (distanceBetweenJunctions j178 j179 ) 1)
    (= (distanceBetweenJunctions j179 j178 ) 1)


    (isConnected j179 j180)
    (isConnected j180 j179)
    (= (distanceBetweenJunctions j179 j180 ) 1)
    (= (distanceBetweenJunctions j180 j179 ) 1)


    (isConnected j170 j180)
    (isConnected j180 j170)
    (= (distanceBetweenJunctions j170 j180 ) 1)
    (= (distanceBetweenJunctions j180 j170 ) 1)


    (isConnected j171 j181)
    (isConnected j181 j171)
    (= (distanceBetweenJunctions j171 j181 ) 1)
    (= (distanceBetweenJunctions j181 j171 ) 1)


    (isConnected j172 j182)
    (isConnected j182 j172)
    (= (distanceBetweenJunctions j172 j182 ) 1)
    (= (distanceBetweenJunctions j182 j172 ) 1)


    (isConnected j173 j183)
    (isConnected j183 j173)
    (= (distanceBetweenJunctions j173 j183 ) 1)
    (= (distanceBetweenJunctions j183 j173 ) 1)


    (isConnected j174 j184)
    (isConnected j184 j174)
    (= (distanceBetweenJunctions j174 j184 ) 1)
    (= (distanceBetweenJunctions j184 j174 ) 1)


    (isConnected j175 j185)
    (isConnected j185 j175)
    (= (distanceBetweenJunctions j175 j185 ) 1)
    (= (distanceBetweenJunctions j185 j175 ) 1)


    (isConnected j176 j186)
    (isConnected j186 j176)
    (= (distanceBetweenJunctions j176 j186 ) 1)
    (= (distanceBetweenJunctions j186 j176 ) 1)


    (isConnected j177 j187)
    (isConnected j187 j177)
    (= (distanceBetweenJunctions j177 j187 ) 1)
    (= (distanceBetweenJunctions j187 j177 ) 1)


    (isConnected j178 j188)
    (isConnected j188 j178)
    (= (distanceBetweenJunctions j178 j188 ) 1)
    (= (distanceBetweenJunctions j188 j178 ) 1)


    (isConnected j179 j189)
    (isConnected j189 j179)
    (= (distanceBetweenJunctions j179 j189 ) 1)
    (= (distanceBetweenJunctions j189 j179 ) 1)





    (isConnected j180 j181)
    (isConnected j181 j180)
    (= (distanceBetweenJunctions j180 j181 ) 1)
    (= (distanceBetweenJunctions j181 j180 ) 1)


    (isConnected j181 j182)
    (isConnected j182 j181)
    (= (distanceBetweenJunctions j181 j182 ) 1)
    (= (distanceBetweenJunctions j182 j181 ) 1)


    (isConnected j182 j183)
    (isConnected j183 j182)
    (= (distanceBetweenJunctions j182 j183 ) 1)
    (= (distanceBetweenJunctions j183 j182 ) 1)


    (isConnected j183 j184)
    (isConnected j184 j183)
    (= (distanceBetweenJunctions j183 j184 ) 1)
    (= (distanceBetweenJunctions j184 j183 ) 1)


    (isConnected j184 j185)
    (isConnected j185 j184)
    (= (distanceBetweenJunctions j184 j185 ) 1)
    (= (distanceBetweenJunctions j185 j184 ) 1)


    (isConnected j185 j186)
    (isConnected j186 j185)
    (= (distanceBetweenJunctions j185 j186 ) 1)
    (= (distanceBetweenJunctions j186 j185 ) 1)


    (isConnected j186 j187)
    (isConnected j187 j186)
    (= (distanceBetweenJunctions j186 j187 ) 1)
    (= (distanceBetweenJunctions j187 j186 ) 1)


    (isConnected j187 j188)
    (isConnected j188 j187)
    (= (distanceBetweenJunctions j187 j188 ) 1)
    (= (distanceBetweenJunctions j188 j187 ) 1)


    (isConnected j188 j189)
    (isConnected j189 j188)
    (= (distanceBetweenJunctions j188 j189 ) 1)
    (= (distanceBetweenJunctions j189 j188 ) 1)


    (isConnected j189 j190)
    (isConnected j190 j189)
    (= (distanceBetweenJunctions j189 j190 ) 1)
    (= (distanceBetweenJunctions j190 j189 ) 1)


    (isConnected j180 j190)
    (isConnected j190 j180)
    (= (distanceBetweenJunctions j180 j190 ) 1)
    (= (distanceBetweenJunctions j190 j180 ) 1)


    (isConnected j181 j191)
    (isConnected j191 j181)
    (= (distanceBetweenJunctions j181 j191 ) 1)
    (= (distanceBetweenJunctions j191 j181 ) 1)


    (isConnected j182 j192)
    (isConnected j192 j182)
    (= (distanceBetweenJunctions j182 j192 ) 1)
    (= (distanceBetweenJunctions j192 j182 ) 1)


    (isConnected j183 j193)
    (isConnected j193 j183)
    (= (distanceBetweenJunctions j183 j193 ) 1)
    (= (distanceBetweenJunctions j193 j183 ) 1)


    (isConnected j184 j194)
    (isConnected j194 j184)
    (= (distanceBetweenJunctions j184 j194 ) 1)
    (= (distanceBetweenJunctions j194 j184 ) 1)


    (isConnected j185 j195)
    (isConnected j195 j185)
    (= (distanceBetweenJunctions j185 j195 ) 1)
    (= (distanceBetweenJunctions j195 j185 ) 1)


    (isConnected j186 j196)
    (isConnected j196 j186)
    (= (distanceBetweenJunctions j186 j196 ) 1)
    (= (distanceBetweenJunctions j196 j186 ) 1)


    (isConnected j187 j197)
    (isConnected j197 j187)
    (= (distanceBetweenJunctions j187 j197 ) 1)
    (= (distanceBetweenJunctions j197 j187 ) 1)


    (isConnected j188 j198)
    (isConnected j198 j188)
    (= (distanceBetweenJunctions j188 j198 ) 1)
    (= (distanceBetweenJunctions j198 j188 ) 1)


    (isConnected j189 j199)
    (isConnected j199 j189)
    (= (distanceBetweenJunctions j189 j199 ) 1)
    (= (distanceBetweenJunctions j199 j189 ) 1)





    (isConnected j190 j191)
    (isConnected j191 j190)
    (= (distanceBetweenJunctions j190 j191 ) 1)
    (= (distanceBetweenJunctions j191 j190 ) 1)


    (isConnected j191 j192)
    (isConnected j192 j191)
    (= (distanceBetweenJunctions j191 j192 ) 1)
    (= (distanceBetweenJunctions j192 j191 ) 1)


    (isConnected j192 j193)
    (isConnected j193 j192)
    (= (distanceBetweenJunctions j192 j193 ) 1)
    (= (distanceBetweenJunctions j193 j192 ) 1)


    (isConnected j193 j194)
    (isConnected j194 j193)
    (= (distanceBetweenJunctions j193 j194 ) 1)
    (= (distanceBetweenJunctions j194 j193 ) 1)


    (isConnected j194 j195)
    (isConnected j195 j194)
    (= (distanceBetweenJunctions j194 j195 ) 1)
    (= (distanceBetweenJunctions j195 j194 ) 1)


    (isConnected j195 j196)
    (isConnected j196 j195)
    (= (distanceBetweenJunctions j195 j196 ) 1)
    (= (distanceBetweenJunctions j196 j195 ) 1)


    (isConnected j196 j197)
    (isConnected j197 j196)
    (= (distanceBetweenJunctions j196 j197 ) 1)
    (= (distanceBetweenJunctions j197 j196 ) 1)


    (isConnected j197 j198)
    (isConnected j198 j197)
    (= (distanceBetweenJunctions j197 j198 ) 1)
    (= (distanceBetweenJunctions j198 j197 ) 1)


    (isConnected j198 j199)
    (isConnected j199 j198)
    (= (distanceBetweenJunctions j198 j199 ) 1)
    (= (distanceBetweenJunctions j199 j198 ) 1)


    (isConnected j199 j200)
    (isConnected j200 j199)
    (= (distanceBetweenJunctions j199 j200 ) 1)
    (= (distanceBetweenJunctions j200 j199 ) 1)


    (isConnected j190 j200)
    (isConnected j200 j190)
    (= (distanceBetweenJunctions j190 j200 ) 1)
    (= (distanceBetweenJunctions j200 j190 ) 1)


    (isConnected j191 j201)
    (isConnected j201 j191)
    (= (distanceBetweenJunctions j191 j201 ) 1)
    (= (distanceBetweenJunctions j201 j191 ) 1)


    (isConnected j192 j202)
    (isConnected j202 j192)
    (= (distanceBetweenJunctions j192 j202 ) 1)
    (= (distanceBetweenJunctions j202 j192 ) 1)


    (isConnected j193 j203)
    (isConnected j203 j193)
    (= (distanceBetweenJunctions j193 j203 ) 1)
    (= (distanceBetweenJunctions j203 j193 ) 1)


    (isConnected j194 j204)
    (isConnected j204 j194)
    (= (distanceBetweenJunctions j194 j204 ) 1)
    (= (distanceBetweenJunctions j204 j194 ) 1)


    (isConnected j195 j205)
    (isConnected j205 j195)
    (= (distanceBetweenJunctions j195 j205 ) 1)
    (= (distanceBetweenJunctions j205 j195 ) 1)


    (isConnected j196 j206)
    (isConnected j206 j196)
    (= (distanceBetweenJunctions j196 j206 ) 1)
    (= (distanceBetweenJunctions j206 j196 ) 1)


    (isConnected j197 j207)
    (isConnected j207 j197)
    (= (distanceBetweenJunctions j197 j207 ) 1)
    (= (distanceBetweenJunctions j207 j197 ) 1)


    (isConnected j198 j208)
    (isConnected j208 j198)
    (= (distanceBetweenJunctions j198 j208 ) 1)
    (= (distanceBetweenJunctions j208 j198 ) 1)


    (isConnected j199 j209)
    (isConnected j209 j199)
    (= (distanceBetweenJunctions j199 j209 ) 1)
    (= (distanceBetweenJunctions j209 j199 ) 1)





    (isConnected j200 j201)
    (isConnected j201 j200)
    (= (distanceBetweenJunctions j200 j201 ) 1)
    (= (distanceBetweenJunctions j201 j200 ) 1)


    (isConnected j201 j202)
    (isConnected j202 j201)
    (= (distanceBetweenJunctions j201 j202 ) 1)
    (= (distanceBetweenJunctions j202 j201 ) 1)


    (isConnected j202 j203)
    (isConnected j203 j202)
    (= (distanceBetweenJunctions j202 j203 ) 1)
    (= (distanceBetweenJunctions j203 j202 ) 1)


    (isConnected j203 j204)
    (isConnected j204 j203)
    (= (distanceBetweenJunctions j203 j204 ) 1)
    (= (distanceBetweenJunctions j204 j203 ) 1)


    (isConnected j204 j205)
    (isConnected j205 j204)
    (= (distanceBetweenJunctions j204 j205 ) 1)
    (= (distanceBetweenJunctions j205 j204 ) 1)


    (isConnected j205 j206)
    (isConnected j206 j205)
    (= (distanceBetweenJunctions j205 j206 ) 1)
    (= (distanceBetweenJunctions j206 j205 ) 1)


    (isConnected j206 j207)
    (isConnected j207 j206)
    (= (distanceBetweenJunctions j206 j207 ) 1)
    (= (distanceBetweenJunctions j207 j206 ) 1)


    (isConnected j207 j208)
    (isConnected j208 j207)
    (= (distanceBetweenJunctions j207 j208 ) 1)
    (= (distanceBetweenJunctions j208 j207 ) 1)


    (isConnected j208 j209)
    (isConnected j209 j208)
    (= (distanceBetweenJunctions j208 j209 ) 1)
    (= (distanceBetweenJunctions j209 j208 ) 1)


    (isConnected j209 j210)
    (isConnected j210 j209)
    (= (distanceBetweenJunctions j209 j210 ) 1)
    (= (distanceBetweenJunctions j210 j209 ) 1)


    (isConnected j200 j210)
    (isConnected j210 j200)
    (= (distanceBetweenJunctions j200 j210 ) 1)
    (= (distanceBetweenJunctions j210 j200 ) 1)


    (isConnected j201 j211)
    (isConnected j211 j201)
    (= (distanceBetweenJunctions j201 j211 ) 1)
    (= (distanceBetweenJunctions j211 j201 ) 1)


    (isConnected j202 j212)
    (isConnected j212 j202)
    (= (distanceBetweenJunctions j202 j212 ) 1)
    (= (distanceBetweenJunctions j212 j202 ) 1)


    (isConnected j203 j213)
    (isConnected j213 j203)
    (= (distanceBetweenJunctions j203 j213 ) 1)
    (= (distanceBetweenJunctions j213 j203 ) 1)


    (isConnected j204 j214)
    (isConnected j214 j204)
    (= (distanceBetweenJunctions j204 j214 ) 1)
    (= (distanceBetweenJunctions j214 j204 ) 1)


    (isConnected j205 j215)
    (isConnected j215 j205)
    (= (distanceBetweenJunctions j205 j215 ) 1)
    (= (distanceBetweenJunctions j215 j205 ) 1)


    (isConnected j206 j216)
    (isConnected j216 j206)
    (= (distanceBetweenJunctions j206 j216 ) 1)
    (= (distanceBetweenJunctions j216 j206 ) 1)


    (isConnected j207 j217)
    (isConnected j217 j207)
    (= (distanceBetweenJunctions j207 j217 ) 1)
    (= (distanceBetweenJunctions j217 j207 ) 1)


    (isConnected j208 j218)
    (isConnected j218 j208)
    (= (distanceBetweenJunctions j208 j218 ) 1)
    (= (distanceBetweenJunctions j218 j208 ) 1)


    (isConnected j209 j219)
    (isConnected j219 j209)
    (= (distanceBetweenJunctions j209 j219 ) 1)
    (= (distanceBetweenJunctions j219 j209 ) 1)





    (isConnected j210 j211)
    (isConnected j211 j210)
    (= (distanceBetweenJunctions j210 j211 ) 1)
    (= (distanceBetweenJunctions j211 j210 ) 1)


    (isConnected j211 j212)
    (isConnected j212 j211)
    (= (distanceBetweenJunctions j211 j212 ) 1)
    (= (distanceBetweenJunctions j212 j211 ) 1)


    (isConnected j212 j213)
    (isConnected j213 j212)
    (= (distanceBetweenJunctions j212 j213 ) 1)
    (= (distanceBetweenJunctions j213 j212 ) 1)


    (isConnected j213 j214)
    (isConnected j214 j213)
    (= (distanceBetweenJunctions j213 j214 ) 1)
    (= (distanceBetweenJunctions j214 j213 ) 1)


    (isConnected j214 j215)
    (isConnected j215 j214)
    (= (distanceBetweenJunctions j214 j215 ) 1)
    (= (distanceBetweenJunctions j215 j214 ) 1)


    (isConnected j215 j216)
    (isConnected j216 j215)
    (= (distanceBetweenJunctions j215 j216 ) 1)
    (= (distanceBetweenJunctions j216 j215 ) 1)


    (isConnected j216 j217)
    (isConnected j217 j216)
    (= (distanceBetweenJunctions j216 j217 ) 1)
    (= (distanceBetweenJunctions j217 j216 ) 1)


    (isConnected j217 j218)
    (isConnected j218 j217)
    (= (distanceBetweenJunctions j217 j218 ) 1)
    (= (distanceBetweenJunctions j218 j217 ) 1)


    (isConnected j218 j219)
    (isConnected j219 j218)
    (= (distanceBetweenJunctions j218 j219 ) 1)
    (= (distanceBetweenJunctions j219 j218 ) 1)


    (isConnected j219 j220)
    (isConnected j220 j219)
    (= (distanceBetweenJunctions j219 j220 ) 1)
    (= (distanceBetweenJunctions j220 j219 ) 1)


    (isConnected j210 j220)
    (isConnected j220 j210)
    (= (distanceBetweenJunctions j210 j220 ) 1)
    (= (distanceBetweenJunctions j220 j210 ) 1)


    (isConnected j211 j221)
    (isConnected j221 j211)
    (= (distanceBetweenJunctions j211 j221 ) 1)
    (= (distanceBetweenJunctions j221 j211 ) 1)


    (isConnected j212 j222)
    (isConnected j222 j212)
    (= (distanceBetweenJunctions j212 j222 ) 1)
    (= (distanceBetweenJunctions j222 j212 ) 1)


    (isConnected j213 j223)
    (isConnected j223 j213)
    (= (distanceBetweenJunctions j213 j223 ) 1)
    (= (distanceBetweenJunctions j223 j213 ) 1)


    (isConnected j214 j224)
    (isConnected j224 j214)
    (= (distanceBetweenJunctions j214 j224 ) 1)
    (= (distanceBetweenJunctions j224 j214 ) 1)


    (isConnected j215 j225)
    (isConnected j225 j215)
    (= (distanceBetweenJunctions j215 j225 ) 1)
    (= (distanceBetweenJunctions j225 j215 ) 1)


    (isConnected j216 j226)
    (isConnected j226 j216)
    (= (distanceBetweenJunctions j216 j226 ) 1)
    (= (distanceBetweenJunctions j226 j216 ) 1)


    (isConnected j217 j227)
    (isConnected j227 j217)
    (= (distanceBetweenJunctions j217 j227 ) 1)
    (= (distanceBetweenJunctions j227 j217 ) 1)


    (isConnected j218 j228)
    (isConnected j228 j218)
    (= (distanceBetweenJunctions j218 j228 ) 1)
    (= (distanceBetweenJunctions j228 j218 ) 1)


    (isConnected j219 j229)
    (isConnected j229 j219)
    (= (distanceBetweenJunctions j219 j229 ) 1)
    (= (distanceBetweenJunctions j229 j219 ) 1)





    (isConnected j220 j221)
    (isConnected j221 j220)
    (= (distanceBetweenJunctions j220 j221 ) 1)
    (= (distanceBetweenJunctions j221 j220 ) 1)


    (isConnected j221 j222)
    (isConnected j222 j221)
    (= (distanceBetweenJunctions j221 j222 ) 1)
    (= (distanceBetweenJunctions j222 j221 ) 1)


    (isConnected j222 j223)
    (isConnected j223 j222)
    (= (distanceBetweenJunctions j222 j223 ) 1)
    (= (distanceBetweenJunctions j223 j222 ) 1)


    (isConnected j223 j224)
    (isConnected j224 j223)
    (= (distanceBetweenJunctions j223 j224 ) 1)
    (= (distanceBetweenJunctions j224 j223 ) 1)


    (isConnected j224 j225)
    (isConnected j225 j224)
    (= (distanceBetweenJunctions j224 j225 ) 1)
    (= (distanceBetweenJunctions j225 j224 ) 1)


    (isConnected j225 j226)
    (isConnected j226 j225)
    (= (distanceBetweenJunctions j225 j226 ) 1)
    (= (distanceBetweenJunctions j226 j225 ) 1)


    (isConnected j226 j227)
    (isConnected j227 j226)
    (= (distanceBetweenJunctions j226 j227 ) 1)
    (= (distanceBetweenJunctions j227 j226 ) 1)


    (isConnected j227 j228)
    (isConnected j228 j227)
    (= (distanceBetweenJunctions j227 j228 ) 1)
    (= (distanceBetweenJunctions j228 j227 ) 1)


    (isConnected j228 j229)
    (isConnected j229 j228)
    (= (distanceBetweenJunctions j228 j229 ) 1)
    (= (distanceBetweenJunctions j229 j228 ) 1)


    (isConnected j229 j230)
    (isConnected j230 j229)
    (= (distanceBetweenJunctions j229 j230 ) 1)
    (= (distanceBetweenJunctions j230 j229 ) 1)


    (isConnected j220 j230)
    (isConnected j230 j220)
    (= (distanceBetweenJunctions j220 j230 ) 1)
    (= (distanceBetweenJunctions j230 j220 ) 1)


    (isConnected j221 j231)
    (isConnected j231 j221)
    (= (distanceBetweenJunctions j221 j231 ) 1)
    (= (distanceBetweenJunctions j231 j221 ) 1)


    (isConnected j222 j232)
    (isConnected j232 j222)
    (= (distanceBetweenJunctions j222 j232 ) 1)
    (= (distanceBetweenJunctions j232 j222 ) 1)


    (isConnected j223 j233)
    (isConnected j233 j223)
    (= (distanceBetweenJunctions j223 j233 ) 1)
    (= (distanceBetweenJunctions j233 j223 ) 1)


    (isConnected j224 j234)
    (isConnected j234 j224)
    (= (distanceBetweenJunctions j224 j234 ) 1)
    (= (distanceBetweenJunctions j234 j224 ) 1)


    (isConnected j225 j235)
    (isConnected j235 j225)
    (= (distanceBetweenJunctions j225 j235 ) 1)
    (= (distanceBetweenJunctions j235 j225 ) 1)


    (isConnected j226 j236)
    (isConnected j236 j226)
    (= (distanceBetweenJunctions j226 j236 ) 1)
    (= (distanceBetweenJunctions j236 j226 ) 1)


    (isConnected j227 j237)
    (isConnected j237 j227)
    (= (distanceBetweenJunctions j227 j237 ) 1)
    (= (distanceBetweenJunctions j237 j227 ) 1)


    (isConnected j228 j238)
    (isConnected j238 j228)
    (= (distanceBetweenJunctions j228 j238 ) 1)
    (= (distanceBetweenJunctions j238 j228 ) 1)


    (isConnected j229 j239)
    (isConnected j239 j229)
    (= (distanceBetweenJunctions j229 j239 ) 1)
    (= (distanceBetweenJunctions j239 j229 ) 1)





    (isConnected j230 j231)
    (isConnected j231 j230)
    (= (distanceBetweenJunctions j230 j231 ) 1)
    (= (distanceBetweenJunctions j231 j230 ) 1)


    (isConnected j231 j232)
    (isConnected j232 j231)
    (= (distanceBetweenJunctions j231 j232 ) 1)
    (= (distanceBetweenJunctions j232 j231 ) 1)


    (isConnected j232 j233)
    (isConnected j233 j232)
    (= (distanceBetweenJunctions j232 j233 ) 1)
    (= (distanceBetweenJunctions j233 j232 ) 1)


    (isConnected j233 j234)
    (isConnected j234 j233)
    (= (distanceBetweenJunctions j233 j234 ) 1)
    (= (distanceBetweenJunctions j234 j233 ) 1)


    (isConnected j234 j235)
    (isConnected j235 j234)
    (= (distanceBetweenJunctions j234 j235 ) 1)
    (= (distanceBetweenJunctions j235 j234 ) 1)


    (isConnected j235 j236)
    (isConnected j236 j235)
    (= (distanceBetweenJunctions j235 j236 ) 1)
    (= (distanceBetweenJunctions j236 j235 ) 1)


    (isConnected j236 j237)
    (isConnected j237 j236)
    (= (distanceBetweenJunctions j236 j237 ) 1)
    (= (distanceBetweenJunctions j237 j236 ) 1)


    (isConnected j237 j238)
    (isConnected j238 j237)
    (= (distanceBetweenJunctions j237 j238 ) 1)
    (= (distanceBetweenJunctions j238 j237 ) 1)


    (isConnected j238 j239)
    (isConnected j239 j238)
    (= (distanceBetweenJunctions j238 j239 ) 1)
    (= (distanceBetweenJunctions j239 j238 ) 1)


    (isConnected j239 j240)
    (isConnected j240 j239)
    (= (distanceBetweenJunctions j239 j240 ) 1)
    (= (distanceBetweenJunctions j240 j239 ) 1)


    (isConnected j230 j240)
    (isConnected j240 j230)
    (= (distanceBetweenJunctions j230 j240 ) 1)
    (= (distanceBetweenJunctions j240 j230 ) 1)


    (isConnected j231 j241)
    (isConnected j241 j231)
    (= (distanceBetweenJunctions j231 j241 ) 1)
    (= (distanceBetweenJunctions j241 j231 ) 1)


    (isConnected j232 j242)
    (isConnected j242 j232)
    (= (distanceBetweenJunctions j232 j242 ) 1)
    (= (distanceBetweenJunctions j242 j232 ) 1)


    (isConnected j233 j243)
    (isConnected j243 j233)
    (= (distanceBetweenJunctions j233 j243 ) 1)
    (= (distanceBetweenJunctions j243 j233 ) 1)


    (isConnected j234 j244)
    (isConnected j244 j234)
    (= (distanceBetweenJunctions j234 j244 ) 1)
    (= (distanceBetweenJunctions j244 j234 ) 1)


    (isConnected j235 j245)
    (isConnected j245 j235)
    (= (distanceBetweenJunctions j235 j245 ) 1)
    (= (distanceBetweenJunctions j245 j235 ) 1)


    (isConnected j236 j246)
    (isConnected j246 j236)
    (= (distanceBetweenJunctions j236 j246 ) 1)
    (= (distanceBetweenJunctions j246 j236 ) 1)


    (isConnected j237 j247)
    (isConnected j247 j237)
    (= (distanceBetweenJunctions j237 j247 ) 1)
    (= (distanceBetweenJunctions j247 j237 ) 1)


    (isConnected j238 j248)
    (isConnected j248 j238)
    (= (distanceBetweenJunctions j238 j248 ) 1)
    (= (distanceBetweenJunctions j248 j238 ) 1)


    (isConnected j239 j249)
    (isConnected j249 j239)
    (= (distanceBetweenJunctions j239 j249 ) 1)
    (= (distanceBetweenJunctions j249 j239 ) 1)





    (isConnected j240 j241)
    (isConnected j241 j240)
    (= (distanceBetweenJunctions j240 j241 ) 1)
    (= (distanceBetweenJunctions j241 j240 ) 1)


    (isConnected j241 j242)
    (isConnected j242 j241)
    (= (distanceBetweenJunctions j241 j242 ) 1)
    (= (distanceBetweenJunctions j242 j241 ) 1)


    (isConnected j242 j243)
    (isConnected j243 j242)
    (= (distanceBetweenJunctions j242 j243 ) 1)
    (= (distanceBetweenJunctions j243 j242 ) 1)


    (isConnected j243 j244)
    (isConnected j244 j243)
    (= (distanceBetweenJunctions j243 j244 ) 1)
    (= (distanceBetweenJunctions j244 j243 ) 1)


    (isConnected j244 j245)
    (isConnected j245 j244)
    (= (distanceBetweenJunctions j244 j245 ) 1)
    (= (distanceBetweenJunctions j245 j244 ) 1)


    (isConnected j245 j246)
    (isConnected j246 j245)
    (= (distanceBetweenJunctions j245 j246 ) 1)
    (= (distanceBetweenJunctions j246 j245 ) 1)


    (isConnected j246 j247)
    (isConnected j247 j246)
    (= (distanceBetweenJunctions j246 j247 ) 1)
    (= (distanceBetweenJunctions j247 j246 ) 1)


    (isConnected j247 j248)
    (isConnected j248 j247)
    (= (distanceBetweenJunctions j247 j248 ) 1)
    (= (distanceBetweenJunctions j248 j247 ) 1)


    (isConnected j248 j249)
    (isConnected j249 j248)
    (= (distanceBetweenJunctions j248 j249 ) 1)
    (= (distanceBetweenJunctions j249 j248 ) 1)


    (isConnected j249 j250)
    (isConnected j250 j249)
    (= (distanceBetweenJunctions j249 j250 ) 1)
    (= (distanceBetweenJunctions j250 j249 ) 1)


    (isConnected j240 j250)
    (isConnected j250 j240)
    (= (distanceBetweenJunctions j240 j250 ) 1)
    (= (distanceBetweenJunctions j250 j240 ) 1)


    (isConnected j241 j251)
    (isConnected j251 j241)
    (= (distanceBetweenJunctions j241 j251 ) 1)
    (= (distanceBetweenJunctions j251 j241 ) 1)


    (isConnected j242 j252)
    (isConnected j252 j242)
    (= (distanceBetweenJunctions j242 j252 ) 1)
    (= (distanceBetweenJunctions j252 j242 ) 1)


    (isConnected j243 j253)
    (isConnected j253 j243)
    (= (distanceBetweenJunctions j243 j253 ) 1)
    (= (distanceBetweenJunctions j253 j243 ) 1)


    (isConnected j244 j254)
    (isConnected j254 j244)
    (= (distanceBetweenJunctions j244 j254 ) 1)
    (= (distanceBetweenJunctions j254 j244 ) 1)


    (isConnected j245 j255)
    (isConnected j255 j245)
    (= (distanceBetweenJunctions j245 j255 ) 1)
    (= (distanceBetweenJunctions j255 j245 ) 1)


    (isConnected j246 j256)
    (isConnected j256 j246)
    (= (distanceBetweenJunctions j246 j256 ) 1)
    (= (distanceBetweenJunctions j256 j246 ) 1)


    (isConnected j247 j257)
    (isConnected j257 j247)
    (= (distanceBetweenJunctions j247 j257 ) 1)
    (= (distanceBetweenJunctions j257 j247 ) 1)


    (isConnected j248 j258)
    (isConnected j258 j248)
    (= (distanceBetweenJunctions j248 j258 ) 1)
    (= (distanceBetweenJunctions j258 j248 ) 1)


    (isConnected j249 j259)
    (isConnected j259 j249)
    (= (distanceBetweenJunctions j249 j259 ) 1)
    (= (distanceBetweenJunctions j259 j249 ) 1)





    (isConnected j250 j251)
    (isConnected j251 j250)
    (= (distanceBetweenJunctions j250 j251 ) 1)
    (= (distanceBetweenJunctions j251 j250 ) 1)


    (isConnected j251 j252)
    (isConnected j252 j251)
    (= (distanceBetweenJunctions j251 j252 ) 1)
    (= (distanceBetweenJunctions j252 j251 ) 1)


    (isConnected j252 j253)
    (isConnected j253 j252)
    (= (distanceBetweenJunctions j252 j253 ) 1)
    (= (distanceBetweenJunctions j253 j252 ) 1)


    (isConnected j253 j254)
    (isConnected j254 j253)
    (= (distanceBetweenJunctions j253 j254 ) 1)
    (= (distanceBetweenJunctions j254 j253 ) 1)


    (isConnected j254 j255)
    (isConnected j255 j254)
    (= (distanceBetweenJunctions j254 j255 ) 1)
    (= (distanceBetweenJunctions j255 j254 ) 1)


    (isConnected j255 j256)
    (isConnected j256 j255)
    (= (distanceBetweenJunctions j255 j256 ) 1)
    (= (distanceBetweenJunctions j256 j255 ) 1)


    (isConnected j256 j257)
    (isConnected j257 j256)
    (= (distanceBetweenJunctions j256 j257 ) 1)
    (= (distanceBetweenJunctions j257 j256 ) 1)


    (isConnected j257 j258)
    (isConnected j258 j257)
    (= (distanceBetweenJunctions j257 j258 ) 1)
    (= (distanceBetweenJunctions j258 j257 ) 1)


    (isConnected j258 j259)
    (isConnected j259 j258)
    (= (distanceBetweenJunctions j258 j259 ) 1)
    (= (distanceBetweenJunctions j259 j258 ) 1)


    (isConnected j259 j260)
    (isConnected j260 j259)
    (= (distanceBetweenJunctions j259 j260 ) 1)
    (= (distanceBetweenJunctions j260 j259 ) 1)


    (isConnected j250 j260)
    (isConnected j260 j250)
    (= (distanceBetweenJunctions j250 j260 ) 1)
    (= (distanceBetweenJunctions j260 j250 ) 1)


    (isConnected j251 j261)
    (isConnected j261 j251)
    (= (distanceBetweenJunctions j251 j261 ) 1)
    (= (distanceBetweenJunctions j261 j251 ) 1)


    (isConnected j252 j262)
    (isConnected j262 j252)
    (= (distanceBetweenJunctions j252 j262 ) 1)
    (= (distanceBetweenJunctions j262 j252 ) 1)


    (isConnected j253 j263)
    (isConnected j263 j253)
    (= (distanceBetweenJunctions j253 j263 ) 1)
    (= (distanceBetweenJunctions j263 j253 ) 1)


    (isConnected j254 j264)
    (isConnected j264 j254)
    (= (distanceBetweenJunctions j254 j264 ) 1)
    (= (distanceBetweenJunctions j264 j254 ) 1)


    (isConnected j255 j265)
    (isConnected j265 j255)
    (= (distanceBetweenJunctions j255 j265 ) 1)
    (= (distanceBetweenJunctions j265 j255 ) 1)


    (isConnected j256 j266)
    (isConnected j266 j256)
    (= (distanceBetweenJunctions j256 j266 ) 1)
    (= (distanceBetweenJunctions j266 j256 ) 1)


    (isConnected j257 j267)
    (isConnected j267 j257)
    (= (distanceBetweenJunctions j257 j267 ) 1)
    (= (distanceBetweenJunctions j267 j257 ) 1)


    (isConnected j258 j268)
    (isConnected j268 j258)
    (= (distanceBetweenJunctions j258 j268 ) 1)
    (= (distanceBetweenJunctions j268 j258 ) 1)


    (isConnected j259 j269)
    (isConnected j269 j259)
    (= (distanceBetweenJunctions j259 j269 ) 1)
    (= (distanceBetweenJunctions j269 j259 ) 1)





    (isConnected j260 j261)
    (isConnected j261 j260)
    (= (distanceBetweenJunctions j260 j261 ) 1)
    (= (distanceBetweenJunctions j261 j260 ) 1)


    (isConnected j261 j262)
    (isConnected j262 j261)
    (= (distanceBetweenJunctions j261 j262 ) 1)
    (= (distanceBetweenJunctions j262 j261 ) 1)


    (isConnected j262 j263)
    (isConnected j263 j262)
    (= (distanceBetweenJunctions j262 j263 ) 1)
    (= (distanceBetweenJunctions j263 j262 ) 1)


    (isConnected j263 j264)
    (isConnected j264 j263)
    (= (distanceBetweenJunctions j263 j264 ) 1)
    (= (distanceBetweenJunctions j264 j263 ) 1)


    (isConnected j264 j265)
    (isConnected j265 j264)
    (= (distanceBetweenJunctions j264 j265 ) 1)
    (= (distanceBetweenJunctions j265 j264 ) 1)


    (isConnected j265 j266)
    (isConnected j266 j265)
    (= (distanceBetweenJunctions j265 j266 ) 1)
    (= (distanceBetweenJunctions j266 j265 ) 1)


    (isConnected j266 j267)
    (isConnected j267 j266)
    (= (distanceBetweenJunctions j266 j267 ) 1)
    (= (distanceBetweenJunctions j267 j266 ) 1)


    (isConnected j267 j268)
    (isConnected j268 j267)
    (= (distanceBetweenJunctions j267 j268 ) 1)
    (= (distanceBetweenJunctions j268 j267 ) 1)


    (isConnected j268 j269)
    (isConnected j269 j268)
    (= (distanceBetweenJunctions j268 j269 ) 1)
    (= (distanceBetweenJunctions j269 j268 ) 1)


    (isConnected j269 j270)
    (isConnected j270 j269)
    (= (distanceBetweenJunctions j269 j270 ) 1)
    (= (distanceBetweenJunctions j270 j269 ) 1)


    (isConnected j260 j270)
    (isConnected j270 j260)
    (= (distanceBetweenJunctions j260 j270 ) 1)
    (= (distanceBetweenJunctions j270 j260 ) 1)


    (isConnected j261 j271)
    (isConnected j271 j261)
    (= (distanceBetweenJunctions j261 j271 ) 1)
    (= (distanceBetweenJunctions j271 j261 ) 1)


    (isConnected j262 j272)
    (isConnected j272 j262)
    (= (distanceBetweenJunctions j262 j272 ) 1)
    (= (distanceBetweenJunctions j272 j262 ) 1)


    (isConnected j263 j273)
    (isConnected j273 j263)
    (= (distanceBetweenJunctions j263 j273 ) 1)
    (= (distanceBetweenJunctions j273 j263 ) 1)


    (isConnected j264 j274)
    (isConnected j274 j264)
    (= (distanceBetweenJunctions j264 j274 ) 1)
    (= (distanceBetweenJunctions j274 j264 ) 1)


    (isConnected j265 j275)
    (isConnected j275 j265)
    (= (distanceBetweenJunctions j265 j275 ) 1)
    (= (distanceBetweenJunctions j275 j265 ) 1)


    (isConnected j266 j276)
    (isConnected j276 j266)
    (= (distanceBetweenJunctions j266 j276 ) 1)
    (= (distanceBetweenJunctions j276 j266 ) 1)


    (isConnected j267 j277)
    (isConnected j277 j267)
    (= (distanceBetweenJunctions j267 j277 ) 1)
    (= (distanceBetweenJunctions j277 j267 ) 1)


    (isConnected j268 j278)
    (isConnected j278 j268)
    (= (distanceBetweenJunctions j268 j278 ) 1)
    (= (distanceBetweenJunctions j278 j268 ) 1)


    (isConnected j269 j279)
    (isConnected j279 j269)
    (= (distanceBetweenJunctions j269 j279 ) 1)
    (= (distanceBetweenJunctions j279 j269 ) 1)





    (isConnected j270 j271)
    (isConnected j271 j270)
    (= (distanceBetweenJunctions j270 j271 ) 1)
    (= (distanceBetweenJunctions j271 j270 ) 1)


    (isConnected j271 j272)
    (isConnected j272 j271)
    (= (distanceBetweenJunctions j271 j272 ) 1)
    (= (distanceBetweenJunctions j272 j271 ) 1)


    (isConnected j272 j273)
    (isConnected j273 j272)
    (= (distanceBetweenJunctions j272 j273 ) 1)
    (= (distanceBetweenJunctions j273 j272 ) 1)


    (isConnected j273 j274)
    (isConnected j274 j273)
    (= (distanceBetweenJunctions j273 j274 ) 1)
    (= (distanceBetweenJunctions j274 j273 ) 1)


    (isConnected j274 j275)
    (isConnected j275 j274)
    (= (distanceBetweenJunctions j274 j275 ) 1)
    (= (distanceBetweenJunctions j275 j274 ) 1)


    (isConnected j275 j276)
    (isConnected j276 j275)
    (= (distanceBetweenJunctions j275 j276 ) 1)
    (= (distanceBetweenJunctions j276 j275 ) 1)


    (isConnected j276 j277)
    (isConnected j277 j276)
    (= (distanceBetweenJunctions j276 j277 ) 1)
    (= (distanceBetweenJunctions j277 j276 ) 1)


    (isConnected j277 j278)
    (isConnected j278 j277)
    (= (distanceBetweenJunctions j277 j278 ) 1)
    (= (distanceBetweenJunctions j278 j277 ) 1)


    (isConnected j278 j279)
    (isConnected j279 j278)
    (= (distanceBetweenJunctions j278 j279 ) 1)
    (= (distanceBetweenJunctions j279 j278 ) 1)


    (isConnected j279 j280)
    (isConnected j280 j279)
    (= (distanceBetweenJunctions j279 j280 ) 1)
    (= (distanceBetweenJunctions j280 j279 ) 1)


    (isConnected j270 j280)
    (isConnected j280 j270)
    (= (distanceBetweenJunctions j270 j280 ) 1)
    (= (distanceBetweenJunctions j280 j270 ) 1)


    (isConnected j271 j281)
    (isConnected j281 j271)
    (= (distanceBetweenJunctions j271 j281 ) 1)
    (= (distanceBetweenJunctions j281 j271 ) 1)


    (isConnected j272 j282)
    (isConnected j282 j272)
    (= (distanceBetweenJunctions j272 j282 ) 1)
    (= (distanceBetweenJunctions j282 j272 ) 1)


    (isConnected j273 j283)
    (isConnected j283 j273)
    (= (distanceBetweenJunctions j273 j283 ) 1)
    (= (distanceBetweenJunctions j283 j273 ) 1)


    (isConnected j274 j284)
    (isConnected j284 j274)
    (= (distanceBetweenJunctions j274 j284 ) 1)
    (= (distanceBetweenJunctions j284 j274 ) 1)


    (isConnected j275 j285)
    (isConnected j285 j275)
    (= (distanceBetweenJunctions j275 j285 ) 1)
    (= (distanceBetweenJunctions j285 j275 ) 1)


    (isConnected j276 j286)
    (isConnected j286 j276)
    (= (distanceBetweenJunctions j276 j286 ) 1)
    (= (distanceBetweenJunctions j286 j276 ) 1)


    (isConnected j277 j287)
    (isConnected j287 j277)
    (= (distanceBetweenJunctions j277 j287 ) 1)
    (= (distanceBetweenJunctions j287 j277 ) 1)


    (isConnected j278 j288)
    (isConnected j288 j278)
    (= (distanceBetweenJunctions j278 j288 ) 1)
    (= (distanceBetweenJunctions j288 j278 ) 1)


    (isConnected j279 j289)
    (isConnected j289 j279)
    (= (distanceBetweenJunctions j279 j289 ) 1)
    (= (distanceBetweenJunctions j289 j279 ) 1)





    (isConnected j280 j281)
    (isConnected j281 j280)
    (= (distanceBetweenJunctions j280 j281 ) 1)
    (= (distanceBetweenJunctions j281 j280 ) 1)


    (isConnected j281 j282)
    (isConnected j282 j281)
    (= (distanceBetweenJunctions j281 j282 ) 1)
    (= (distanceBetweenJunctions j282 j281 ) 1)


    (isConnected j282 j283)
    (isConnected j283 j282)
    (= (distanceBetweenJunctions j282 j283 ) 1)
    (= (distanceBetweenJunctions j283 j282 ) 1)


    (isConnected j283 j284)
    (isConnected j284 j283)
    (= (distanceBetweenJunctions j283 j284 ) 1)
    (= (distanceBetweenJunctions j284 j283 ) 1)


    (isConnected j284 j285)
    (isConnected j285 j284)
    (= (distanceBetweenJunctions j284 j285 ) 1)
    (= (distanceBetweenJunctions j285 j284 ) 1)


    (isConnected j285 j286)
    (isConnected j286 j285)
    (= (distanceBetweenJunctions j285 j286 ) 1)
    (= (distanceBetweenJunctions j286 j285 ) 1)


    (isConnected j286 j287)
    (isConnected j287 j286)
    (= (distanceBetweenJunctions j286 j287 ) 1)
    (= (distanceBetweenJunctions j287 j286 ) 1)


    (isConnected j287 j288)
    (isConnected j288 j287)
    (= (distanceBetweenJunctions j287 j288 ) 1)
    (= (distanceBetweenJunctions j288 j287 ) 1)


    (isConnected j288 j289)
    (isConnected j289 j288)
    (= (distanceBetweenJunctions j288 j289 ) 1)
    (= (distanceBetweenJunctions j289 j288 ) 1)


    (isConnected j289 j290)
    (isConnected j290 j289)
    (= (distanceBetweenJunctions j289 j290 ) 1)
    (= (distanceBetweenJunctions j290 j289 ) 1)


    (isConnected j280 j290)
    (isConnected j290 j280)
    (= (distanceBetweenJunctions j280 j290 ) 1)
    (= (distanceBetweenJunctions j290 j280 ) 1)


    (isConnected j281 j291)
    (isConnected j291 j281)
    (= (distanceBetweenJunctions j281 j291 ) 1)
    (= (distanceBetweenJunctions j291 j281 ) 1)


    (isConnected j282 j292)
    (isConnected j292 j282)
    (= (distanceBetweenJunctions j282 j292 ) 1)
    (= (distanceBetweenJunctions j292 j282 ) 1)


    (isConnected j283 j293)
    (isConnected j293 j283)
    (= (distanceBetweenJunctions j283 j293 ) 1)
    (= (distanceBetweenJunctions j293 j283 ) 1)


    (isConnected j284 j294)
    (isConnected j294 j284)
    (= (distanceBetweenJunctions j284 j294 ) 1)

    (= (distanceBetweenJunctions j294 j284 ) 1)


    (isConnected j285 j295)
    (isConnected j295 j285)
    (= (distanceBetweenJunctions j285 j295 ) 1)
    (= (distanceBetweenJunctions j295 j285 ) 1)


    (isConnected j286 j296)
    (isConnected j296 j286)
    (= (distanceBetweenJunctions j286 j296 ) 1)
    (= (distanceBetweenJunctions j296 j286 ) 1)


    (isConnected j287 j297)
    (isConnected j297 j287)
    (= (distanceBetweenJunctions j287 j297 ) 1)
    (= (distanceBetweenJunctions j297 j287 ) 1)


    (isConnected j288 j298)
    (isConnected j298 j288)
    (= (distanceBetweenJunctions j288 j298 ) 1)
    (= (distanceBetweenJunctions j298 j288 ) 1)


    (isConnected j289 j299)
    (isConnected j299 j289)
    (= (distanceBetweenJunctions j289 j299 ) 1)
    (= (distanceBetweenJunctions j299 j289 ) 1)





    (isConnected j290 j291)
    (isConnected j291 j290)
    (= (distanceBetweenJunctions j290 j291 ) 1)
    (= (distanceBetweenJunctions j291 j290 ) 1)


    (isConnected j291 j292)
    (isConnected j292 j291)
    (= (distanceBetweenJunctions j291 j292 ) 1)
    (= (distanceBetweenJunctions j292 j291 ) 1)


    (isConnected j292 j293)
    (isConnected j293 j292)
    (= (distanceBetweenJunctions j292 j293 ) 1)
    (= (distanceBetweenJunctions j293 j292 ) 1)


    (isConnected j293 j294)
    (isConnected j294 j293)
    (= (distanceBetweenJunctions j293 j294 ) 1)
    (= (distanceBetweenJunctions j294 j293 ) 1)


    (isConnected j294 j295)
    (isConnected j295 j294)
    (= (distanceBetweenJunctions j294 j295 ) 1)
    (= (distanceBetweenJunctions j295 j294 ) 1)


    (isConnected j295 j296)
    (isConnected j296 j295)
    (= (distanceBetweenJunctions j295 j296 ) 1)
    (= (distanceBetweenJunctions j296 j295 ) 1)


    (isConnected j296 j297)
    (isConnected j297 j296)
    (= (distanceBetweenJunctions j296 j297 ) 1)
    (= (distanceBetweenJunctions j297 j296 ) 1)


    (isConnected j297 j298)
    (isConnected j298 j297)
    (= (distanceBetweenJunctions j297 j298 ) 1)
    (= (distanceBetweenJunctions j298 j297 ) 1)


    (isConnected j298 j299)
    (isConnected j299 j298)
    (= (distanceBetweenJunctions j298 j299 ) 1)
    (= (distanceBetweenJunctions j299 j298 ) 1)


    (isConnected j299 j300)
    (isConnected j300 j299)
    (= (distanceBetweenJunctions j299 j300 ) 1)
    (= (distanceBetweenJunctions j300 j299 ) 1)


    (isConnected j290 j300)
    (isConnected j300 j290)
    (= (distanceBetweenJunctions j290 j300 ) 1)
    (= (distanceBetweenJunctions j300 j290 ) 1)


    

    (= (weaponDamage sword) 1)
    (atLocation sword j2)


    ;food
    (atLocation apple j5)
    (= (foodValue apple) 3)

    (atLocation banana j13)
    (= (foodValue banana) 5)

    (atLocation carrot j19)
    (= (foodValue carrot) 5)

    (atLocation k1 j300)

    (atLocation specialItem j0)
    (atLocation p j1)

    (atLocation g1 j8)
    (atLocation g2 j12)
    (atLocation g3 j21)
    
    
)

;the player must retrieve the key from j101, then take
;the item from j0 to j101
(:goal (and
    (atLocation p j300)
    (atLocation specialItem j300)
))

)
(define (problem problem_huge_maze)
(:domain maze)
;500 junctions
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

    j0 j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 j16 j17 j18 j19 j20 j21 j22 j23 j24 j25 j26 j27 j28 j29 j30 j31 j32 j33 j34 j35 j36 j37 j38 j39 j40 j41 j42 j43 j44 j45 j46 j47 j48 j49 j50 j51 j52 j53 j54 j55 j56 j57 j58 j59 j60 j61 j62 j63 j64 j65 j66 j67 j68 j69 j70 j71 j72 j73 j74 j75 j76 j77 j78 j79 j80 j81 j82 j83 j84 j85 j86 j87 j88 j89 j90 j91 j92 j93 j94 j95 j96 j97 j98 j99 j100 j101 j102 j103 j104 j105 j106 j107 j108 j109 j110 j111 j112 j113 j114 j115 j116 j117 j118 j119 j120 j121 j122 j123 j124 j125 j126 j127 j128 j129 j130 j131 j132 j133 j134 j135 j136 j137 j138 j139 j140 j141 j142 j143 j144 j145 j146 j147 j148 j149 j150 j151 j152 j153 j154 j155 j156 j157 j158 j159 j160 j161 j162 j163 j164 j165 j166 j167 j168 j169 j170 j171 j172 j173 j174 j175 j176 j177 j178 j179 j180 j181 j182 j183 j184 j185 j186 j187 j188 j189 j190 j191 j192 j193 j194 j195 j196 j197 j198 j199 j200 j201 j202 j203 j204 j205 j206 j207 j208 j209 j210 j211 j212 j213 j214 j215 j216 j217 j218 j219 j220 j221 j222 j223 j224 j225 j226 j227 j228 j229 j230 j231 j232 j233 j234 j235 j236 j237 j238 j239 j240 j241 j242 j243 j244 j245 j246 j247 j248 j249 j250 j251 j252 j253 j254 j255 j256 j257 j258 j259 j260 j261 j262 j263 j264 j265 j266 j267 j268 j269 j270 j271 j272 j273 j274 j275 j276 j277 j278 j279 j280 j281 j282 j283 j284 j285 j286 j287 j288 j289 j290 j291 j292 j293 j294 j295 j296 j297 j298 j299 j300 j301 j302 j303 j304 j305 j306 j307 j308 j309 j310 j311 j312 j313 j314 j315 j316 j317 j318 j319 j320 j321 j322 j323 j324 j325 j326 j327 j328 j329 j330 j331 j332 j333 j334 j335 j336 j337 j338 j339 j340 j341 j342 j343 j344 j345 j346 j347 j348 j349 j350 j351 j352 j353 j354 j355 j356 j357 j358 j359 j360 j361 j362 j363 j364 j365 j366 j367 j368 j369 j370 j371 j372 j373 j374 j375 j376 j377 j378 j379 j380 j381 j382 j383 j384 j385 j386 j387 j388 j389 j390 j391 j392 j393 j394 j395 j396 j397 j398 j399 j400 j401 j402 j403 j404 j405 j406 j407 j408 j409 j410 j411 j412 j413 j414 j415 j416 j417 j418 j419 j420 j421 j422 j423 j424 j425 j426 j427 j428 j429 j430 j431 j432 j433 j434 j435 j436 j437 j438 j439 j440 j441 j442 j443 j444 j445 j446 j447 j448 j449 j450 j451 j452 j453 j454 j455 j456 j457 j458 j459 j460 j461 j462 j463 j464 j465 j466 j467 j468 j469 j470 j471 j472 j473 j474 j475 j476 j477 j478 j479 j480 j481 j482 j483 j484 j485 j486 j487 j488 j489 j490 j491 j492 j493 j494 j495 j496 j497 j498 j499 j500 - Junction
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


    (isConnected j291 j301)
    (isConnected j301 j291)
    (= (distanceBetweenJunctions j291 j301 ) 1)
    (= (distanceBetweenJunctions j301 j291 ) 1)


    (isConnected j292 j302)
    (isConnected j302 j292)
    (= (distanceBetweenJunctions j292 j302 ) 1)
    (= (distanceBetweenJunctions j302 j292 ) 1)


    (isConnected j293 j303)
    (isConnected j303 j293)
    (= (distanceBetweenJunctions j293 j303 ) 1)
    (= (distanceBetweenJunctions j303 j293 ) 1)


    (isConnected j294 j304)
    (isConnected j304 j294)
    (= (distanceBetweenJunctions j294 j304 ) 1)
    (= (distanceBetweenJunctions j304 j294 ) 1)


    (isConnected j295 j305)
    (isConnected j305 j295)
    (= (distanceBetweenJunctions j295 j305 ) 1)
    (= (distanceBetweenJunctions j305 j295 ) 1)


    (isConnected j296 j306)
    (isConnected j306 j296)
    (= (distanceBetweenJunctions j296 j306 ) 1)
    (= (distanceBetweenJunctions j306 j296 ) 1)


    (isConnected j297 j307)
    (isConnected j307 j297)
    (= (distanceBetweenJunctions j297 j307 ) 1)
    (= (distanceBetweenJunctions j307 j297 ) 1)


    (isConnected j298 j308)
    (isConnected j308 j298)
    (= (distanceBetweenJunctions j298 j308 ) 1)
    (= (distanceBetweenJunctions j308 j298 ) 1)


    (isConnected j299 j309)
    (isConnected j309 j299)
    (= (distanceBetweenJunctions j299 j309 ) 1)
    (= (distanceBetweenJunctions j309 j299 ) 1)





    (isConnected j300 j301)
    (isConnected j301 j300)
    (= (distanceBetweenJunctions j300 j301 ) 1)
    (= (distanceBetweenJunctions j301 j300 ) 1)


    (isConnected j301 j302)
    (isConnected j302 j301)
    (= (distanceBetweenJunctions j301 j302 ) 1)
    (= (distanceBetweenJunctions j302 j301 ) 1)


    (isConnected j302 j303)
    (isConnected j303 j302)
    (= (distanceBetweenJunctions j302 j303 ) 1)
    (= (distanceBetweenJunctions j303 j302 ) 1)


    (isConnected j303 j304)
    (isConnected j304 j303)
    (= (distanceBetweenJunctions j303 j304 ) 1)
    (= (distanceBetweenJunctions j304 j303 ) 1)


    (isConnected j304 j305)
    (isConnected j305 j304)
    (= (distanceBetweenJunctions j304 j305 ) 1)
    (= (distanceBetweenJunctions j305 j304 ) 1)


    (isConnected j305 j306)
    (isConnected j306 j305)
    (= (distanceBetweenJunctions j305 j306 ) 1)
    (= (distanceBetweenJunctions j306 j305 ) 1)


    (isConnected j306 j307)
    (isConnected j307 j306)
    (= (distanceBetweenJunctions j306 j307 ) 1)
    (= (distanceBetweenJunctions j307 j306 ) 1)


    (isConnected j307 j308)
    (isConnected j308 j307)
    (= (distanceBetweenJunctions j307 j308 ) 1)
    (= (distanceBetweenJunctions j308 j307 ) 1)


    (isConnected j308 j309)
    (isConnected j309 j308)
    (= (distanceBetweenJunctions j308 j309 ) 1)
    (= (distanceBetweenJunctions j309 j308 ) 1)


    (isConnected j309 j310)
    (isConnected j310 j309)
    (= (distanceBetweenJunctions j309 j310 ) 1)
    (= (distanceBetweenJunctions j310 j309 ) 1)


    (isConnected j300 j310)
    (isConnected j310 j300)
    (= (distanceBetweenJunctions j300 j310 ) 1)
    (= (distanceBetweenJunctions j310 j300 ) 1)


    (isConnected j301 j311)
    (isConnected j311 j301)
    (= (distanceBetweenJunctions j301 j311 ) 1)
    (= (distanceBetweenJunctions j311 j301 ) 1)


    (isConnected j302 j312)
    (isConnected j312 j302)
    (= (distanceBetweenJunctions j302 j312 ) 1)
    (= (distanceBetweenJunctions j312 j302 ) 1)


    (isConnected j303 j313)
    (isConnected j313 j303)
    (= (distanceBetweenJunctions j303 j313 ) 1)
    (= (distanceBetweenJunctions j313 j303 ) 1)


    (isConnected j304 j314)
    (isConnected j314 j304)
    (= (distanceBetweenJunctions j304 j314 ) 1)
    (= (distanceBetweenJunctions j314 j304 ) 1)


    (isConnected j305 j315)
    (isConnected j315 j305)
    (= (distanceBetweenJunctions j305 j315 ) 1)
    (= (distanceBetweenJunctions j315 j305 ) 1)


    (isConnected j306 j316)
    (isConnected j316 j306)
    (= (distanceBetweenJunctions j306 j316 ) 1)
    (= (distanceBetweenJunctions j316 j306 ) 1)


    (isConnected j307 j317)
    (isConnected j317 j307)
    (= (distanceBetweenJunctions j307 j317 ) 1)
    (= (distanceBetweenJunctions j317 j307 ) 1)


    (isConnected j308 j318)
    (isConnected j318 j308)
    (= (distanceBetweenJunctions j308 j318 ) 1)
    (= (distanceBetweenJunctions j318 j308 ) 1)


    (isConnected j309 j319)
    (isConnected j319 j309)
    (= (distanceBetweenJunctions j309 j319 ) 1)
    (= (distanceBetweenJunctions j319 j309 ) 1)





    (isConnected j310 j311)
    (isConnected j311 j310)
    (= (distanceBetweenJunctions j310 j311 ) 1)
    (= (distanceBetweenJunctions j311 j310 ) 1)


    (isConnected j311 j312)
    (isConnected j312 j311)
    (= (distanceBetweenJunctions j311 j312 ) 1)
    (= (distanceBetweenJunctions j312 j311 ) 1)


    (isConnected j312 j313)
    (isConnected j313 j312)
    (= (distanceBetweenJunctions j312 j313 ) 1)
    (= (distanceBetweenJunctions j313 j312 ) 1)


    (isConnected j313 j314)
    (isConnected j314 j313)
    (= (distanceBetweenJunctions j313 j314 ) 1)
    (= (distanceBetweenJunctions j314 j313 ) 1)


    (isConnected j314 j315)
    (isConnected j315 j314)
    (= (distanceBetweenJunctions j314 j315 ) 1)
    (= (distanceBetweenJunctions j315 j314 ) 1)


    (isConnected j315 j316)
    (isConnected j316 j315)
    (= (distanceBetweenJunctions j315 j316 ) 1)
    (= (distanceBetweenJunctions j316 j315 ) 1)


    (isConnected j316 j317)
    (isConnected j317 j316)
    (= (distanceBetweenJunctions j316 j317 ) 1)
    (= (distanceBetweenJunctions j317 j316 ) 1)


    (isConnected j317 j318)
    (isConnected j318 j317)
    (= (distanceBetweenJunctions j317 j318 ) 1)
    (= (distanceBetweenJunctions j318 j317 ) 1)


    (isConnected j318 j319)
    (isConnected j319 j318)
    (= (distanceBetweenJunctions j318 j319 ) 1)
    (= (distanceBetweenJunctions j319 j318 ) 1)


    (isConnected j319 j320)
    (isConnected j320 j319)
    (= (distanceBetweenJunctions j319 j320 ) 1)
    (= (distanceBetweenJunctions j320 j319 ) 1)


    (isConnected j310 j320)
    (isConnected j320 j310)
    (= (distanceBetweenJunctions j310 j320 ) 1)
    (= (distanceBetweenJunctions j320 j310 ) 1)


    (isConnected j311 j321)
    (isConnected j321 j311)
    (= (distanceBetweenJunctions j311 j321 ) 1)
    (= (distanceBetweenJunctions j321 j311 ) 1)


    (isConnected j312 j322)
    (isConnected j322 j312)
    (= (distanceBetweenJunctions j312 j322 ) 1)
    (= (distanceBetweenJunctions j322 j312 ) 1)


    (isConnected j313 j323)
    (isConnected j323 j313)
    (= (distanceBetweenJunctions j313 j323 ) 1)
    (= (distanceBetweenJunctions j323 j313 ) 1)


    (isConnected j314 j324)
    (isConnected j324 j314)
    (= (distanceBetweenJunctions j314 j324 ) 1)
    (= (distanceBetweenJunctions j324 j314 ) 1)


    (isConnected j315 j325)
    (isConnected j325 j315)
    (= (distanceBetweenJunctions j315 j325 ) 1)
    (= (distanceBetweenJunctions j325 j315 ) 1)


    (isConnected j316 j326)
    (isConnected j326 j316)
    (= (distanceBetweenJunctions j316 j326 ) 1)
    (= (distanceBetweenJunctions j326 j316 ) 1)


    (isConnected j317 j327)
    (isConnected j327 j317)
    (= (distanceBetweenJunctions j317 j327 ) 1)
    (= (distanceBetweenJunctions j327 j317 ) 1)


    (isConnected j318 j328)
    (isConnected j328 j318)
    (= (distanceBetweenJunctions j318 j328 ) 1)
    (= (distanceBetweenJunctions j328 j318 ) 1)


    (isConnected j319 j329)
    (isConnected j329 j319)
    (= (distanceBetweenJunctions j319 j329 ) 1)
    (= (distanceBetweenJunctions j329 j319 ) 1)





    (isConnected j320 j321)
    (isConnected j321 j320)
    (= (distanceBetweenJunctions j320 j321 ) 1)
    (= (distanceBetweenJunctions j321 j320 ) 1)


    (isConnected j321 j322)
    (isConnected j322 j321)
    (= (distanceBetweenJunctions j321 j322 ) 1)
    (= (distanceBetweenJunctions j322 j321 ) 1)


    (isConnected j322 j323)
    (isConnected j323 j322)
    (= (distanceBetweenJunctions j322 j323 ) 1)
    (= (distanceBetweenJunctions j323 j322 ) 1)


    (isConnected j323 j324)
    (isConnected j324 j323)
    (= (distanceBetweenJunctions j323 j324 ) 1)
    (= (distanceBetweenJunctions j324 j323 ) 1)


    (isConnected j324 j325)
    (isConnected j325 j324)
    (= (distanceBetweenJunctions j324 j325 ) 1)
    (= (distanceBetweenJunctions j325 j324 ) 1)


    (isConnected j325 j326)
    (isConnected j326 j325)
    (= (distanceBetweenJunctions j325 j326 ) 1)
    (= (distanceBetweenJunctions j326 j325 ) 1)


    (isConnected j326 j327)
    (isConnected j327 j326)
    (= (distanceBetweenJunctions j326 j327 ) 1)
    (= (distanceBetweenJunctions j327 j326 ) 1)


    (isConnected j327 j328)
    (isConnected j328 j327)
    (= (distanceBetweenJunctions j327 j328 ) 1)
    (= (distanceBetweenJunctions j328 j327 ) 1)


    (isConnected j328 j329)
    (isConnected j329 j328)
    (= (distanceBetweenJunctions j328 j329 ) 1)
    (= (distanceBetweenJunctions j329 j328 ) 1)


    (isConnected j329 j330)
    (isConnected j330 j329)
    (= (distanceBetweenJunctions j329 j330 ) 1)
    (= (distanceBetweenJunctions j330 j329 ) 1)


    (isConnected j320 j330)
    (isConnected j330 j320)
    (= (distanceBetweenJunctions j320 j330 ) 1)
    (= (distanceBetweenJunctions j330 j320 ) 1)


    (isConnected j321 j331)
    (isConnected j331 j321)
    (= (distanceBetweenJunctions j321 j331 ) 1)
    (= (distanceBetweenJunctions j331 j321 ) 1)


    (isConnected j322 j332)
    (isConnected j332 j322)
    (= (distanceBetweenJunctions j322 j332 ) 1)
    (= (distanceBetweenJunctions j332 j322 ) 1)


    (isConnected j323 j333)
    (isConnected j333 j323)
    (= (distanceBetweenJunctions j323 j333 ) 1)
    (= (distanceBetweenJunctions j333 j323 ) 1)


    (isConnected j324 j334)
    (isConnected j334 j324)
    (= (distanceBetweenJunctions j324 j334 ) 1)
    (= (distanceBetweenJunctions j334 j324 ) 1)


    (isConnected j325 j335)
    (isConnected j335 j325)
    (= (distanceBetweenJunctions j325 j335 ) 1)
    (= (distanceBetweenJunctions j335 j325 ) 1)


    (isConnected j326 j336)
    (isConnected j336 j326)
    (= (distanceBetweenJunctions j326 j336 ) 1)
    (= (distanceBetweenJunctions j336 j326 ) 1)


    (isConnected j327 j337)
    (isConnected j337 j327)
    (= (distanceBetweenJunctions j327 j337 ) 1)
    (= (distanceBetweenJunctions j337 j327 ) 1)


    (isConnected j328 j338)
    (isConnected j338 j328)
    (= (distanceBetweenJunctions j328 j338 ) 1)
    (= (distanceBetweenJunctions j338 j328 ) 1)


    (isConnected j329 j339)
    (isConnected j339 j329)
    (= (distanceBetweenJunctions j329 j339 ) 1)
    (= (distanceBetweenJunctions j339 j329 ) 1)





    (isConnected j330 j331)
    (isConnected j331 j330)
    (= (distanceBetweenJunctions j330 j331 ) 1)
    (= (distanceBetweenJunctions j331 j330 ) 1)


    (isConnected j331 j332)
    (isConnected j332 j331)
    (= (distanceBetweenJunctions j331 j332 ) 1)
    (= (distanceBetweenJunctions j332 j331 ) 1)


    (isConnected j332 j333)
    (isConnected j333 j332)
    (= (distanceBetweenJunctions j332 j333 ) 1)
    (= (distanceBetweenJunctions j333 j332 ) 1)


    (isConnected j333 j334)
    (isConnected j334 j333)
    (= (distanceBetweenJunctions j333 j334 ) 1)
    (= (distanceBetweenJunctions j334 j333 ) 1)


    (isConnected j334 j335)
    (isConnected j335 j334)
    (= (distanceBetweenJunctions j334 j335 ) 1)
    (= (distanceBetweenJunctions j335 j334 ) 1)


    (isConnected j335 j336)
    (isConnected j336 j335)
    (= (distanceBetweenJunctions j335 j336 ) 1)
    (= (distanceBetweenJunctions j336 j335 ) 1)


    (isConnected j336 j337)
    (isConnected j337 j336)
    (= (distanceBetweenJunctions j336 j337 ) 1)
    (= (distanceBetweenJunctions j337 j336 ) 1)


    (isConnected j337 j338)
    (isConnected j338 j337)
    (= (distanceBetweenJunctions j337 j338 ) 1)
    (= (distanceBetweenJunctions j338 j337 ) 1)


    (isConnected j338 j339)
    (isConnected j339 j338)
    (= (distanceBetweenJunctions j338 j339 ) 1)
    (= (distanceBetweenJunctions j339 j338 ) 1)


    (isConnected j339 j340)
    (isConnected j340 j339)
    (= (distanceBetweenJunctions j339 j340 ) 1)
    (= (distanceBetweenJunctions j340 j339 ) 1)


    (isConnected j330 j340)
    (isConnected j340 j330)
    (= (distanceBetweenJunctions j330 j340 ) 1)
    (= (distanceBetweenJunctions j340 j330 ) 1)


    (isConnected j331 j341)
    (isConnected j341 j331)
    (= (distanceBetweenJunctions j331 j341 ) 1)
    (= (distanceBetweenJunctions j341 j331 ) 1)


    (isConnected j332 j342)
    (isConnected j342 j332)
    (= (distanceBetweenJunctions j332 j342 ) 1)
    (= (distanceBetweenJunctions j342 j332 ) 1)


    (isConnected j333 j343)
    (isConnected j343 j333)
    (= (distanceBetweenJunctions j333 j343 ) 1)
    (= (distanceBetweenJunctions j343 j333 ) 1)


    (isConnected j334 j344)
    (isConnected j344 j334)
    (= (distanceBetweenJunctions j334 j344 ) 1)
    (= (distanceBetweenJunctions j344 j334 ) 1)


    (isConnected j335 j345)
    (isConnected j345 j335)
    (= (distanceBetweenJunctions j335 j345 ) 1)
    (= (distanceBetweenJunctions j345 j335 ) 1)


    (isConnected j336 j346)
    (isConnected j346 j336)
    (= (distanceBetweenJunctions j336 j346 ) 1)
    (= (distanceBetweenJunctions j346 j336 ) 1)


    (isConnected j337 j347)
    (isConnected j347 j337)
    (= (distanceBetweenJunctions j337 j347 ) 1)
    (= (distanceBetweenJunctions j347 j337 ) 1)


    (isConnected j338 j348)
    (isConnected j348 j338)
    (= (distanceBetweenJunctions j338 j348 ) 1)
    (= (distanceBetweenJunctions j348 j338 ) 1)


    (isConnected j339 j349)
    (isConnected j349 j339)
    (= (distanceBetweenJunctions j339 j349 ) 1)
    (= (distanceBetweenJunctions j349 j339 ) 1)





    (isConnected j340 j341)
    (isConnected j341 j340)
    (= (distanceBetweenJunctions j340 j341 ) 1)
    (= (distanceBetweenJunctions j341 j340 ) 1)


    (isConnected j341 j342)
    (isConnected j342 j341)
    (= (distanceBetweenJunctions j341 j342 ) 1)
    (= (distanceBetweenJunctions j342 j341 ) 1)


    (isConnected j342 j343)
    (isConnected j343 j342)
    (= (distanceBetweenJunctions j342 j343 ) 1)
    (= (distanceBetweenJunctions j343 j342 ) 1)


    (isConnected j343 j344)
    (isConnected j344 j343)
    (= (distanceBetweenJunctions j343 j344 ) 1)
    (= (distanceBetweenJunctions j344 j343 ) 1)



    (isConnected j344 j345)
    (isConnected j345 j344)
    (= (distanceBetweenJunctions j344 j345 ) 1)
    (= (distanceBetweenJunctions j345 j344 ) 1)


    (isConnected j345 j346)
    (isConnected j346 j345)
    (= (distanceBetweenJunctions j345 j346 ) 1)
    (= (distanceBetweenJunctions j346 j345 ) 1)


    (isConnected j346 j347)
    (isConnected j347 j346)
    (= (distanceBetweenJunctions j346 j347 ) 1)
    (= (distanceBetweenJunctions j347 j346 ) 1)


    (isConnected j347 j348)
    (isConnected j348 j347)
    (= (distanceBetweenJunctions j347 j348 ) 1)
    (= (distanceBetweenJunctions j348 j347 ) 1)


    (isConnected j348 j349)
    (isConnected j349 j348)
    (= (distanceBetweenJunctions j348 j349 ) 1)
    (= (distanceBetweenJunctions j349 j348 ) 1)


    (isConnected j349 j350)
    (isConnected j350 j349)
    (= (distanceBetweenJunctions j349 j350 ) 1)
    (= (distanceBetweenJunctions j350 j349 ) 1)


    (isConnected j340 j350)
    (isConnected j350 j340)
    (= (distanceBetweenJunctions j340 j350 ) 1)
    (= (distanceBetweenJunctions j350 j340 ) 1)


    (isConnected j341 j351)
    (isConnected j351 j341)
    (= (distanceBetweenJunctions j341 j351 ) 1)
    (= (distanceBetweenJunctions j351 j341 ) 1)


    (isConnected j342 j352)
    (isConnected j352 j342)
    (= (distanceBetweenJunctions j342 j352 ) 1)
    (= (distanceBetweenJunctions j352 j342 ) 1)


    (isConnected j343 j353)
    (isConnected j353 j343)
    (= (distanceBetweenJunctions j343 j353 ) 1)
    (= (distanceBetweenJunctions j353 j343 ) 1)


    (isConnected j344 j354)
    (isConnected j354 j344)
    (= (distanceBetweenJunctions j344 j354 ) 1)
    (= (distanceBetweenJunctions j354 j344 ) 1)


    (isConnected j345 j355)
    (isConnected j355 j345)
    (= (distanceBetweenJunctions j345 j355 ) 1)
    (= (distanceBetweenJunctions j355 j345 ) 1)


    (isConnected j346 j356)
    (isConnected j356 j346)
    (= (distanceBetweenJunctions j346 j356 ) 1)
    (= (distanceBetweenJunctions j356 j346 ) 1)


    (isConnected j347 j357)
    (isConnected j357 j347)
    (= (distanceBetweenJunctions j347 j357 ) 1)
    (= (distanceBetweenJunctions j357 j347 ) 1)


    (isConnected j348 j358)
    (isConnected j358 j348)
    (= (distanceBetweenJunctions j348 j358 ) 1)
    (= (distanceBetweenJunctions j358 j348 ) 1)


    (isConnected j349 j359)
    (isConnected j359 j349)
    (= (distanceBetweenJunctions j349 j359 ) 1)
    (= (distanceBetweenJunctions j359 j349 ) 1)





    (isConnected j350 j351)
    (isConnected j351 j350)
    (= (distanceBetweenJunctions j350 j351 ) 1)
    (= (distanceBetweenJunctions j351 j350 ) 1)


    (isConnected j351 j352)
    (isConnected j352 j351)
    (= (distanceBetweenJunctions j351 j352 ) 1)
    (= (distanceBetweenJunctions j352 j351 ) 1)


    (isConnected j352 j353)
    (isConnected j353 j352)
    (= (distanceBetweenJunctions j352 j353 ) 1)
    (= (distanceBetweenJunctions j353 j352 ) 1)


    (isConnected j353 j354)
    (isConnected j354 j353)
    (= (distanceBetweenJunctions j353 j354 ) 1)
    (= (distanceBetweenJunctions j354 j353 ) 1)


    (isConnected j354 j355)
    (isConnected j355 j354)
    (= (distanceBetweenJunctions j354 j355 ) 1)
    (= (distanceBetweenJunctions j355 j354 ) 1)


    (isConnected j355 j356)
    (isConnected j356 j355)
    (= (distanceBetweenJunctions j355 j356 ) 1)
    (= (distanceBetweenJunctions j356 j355 ) 1)


    (isConnected j356 j357)
    (isConnected j357 j356)
    (= (distanceBetweenJunctions j356 j357 ) 1)
    (= (distanceBetweenJunctions j357 j356 ) 1)


    (isConnected j357 j358)
    (isConnected j358 j357)
    (= (distanceBetweenJunctions j357 j358 ) 1)
    (= (distanceBetweenJunctions j358 j357 ) 1)


    (isConnected j358 j359)
    (isConnected j359 j358)
    (= (distanceBetweenJunctions j358 j359 ) 1)
    (= (distanceBetweenJunctions j359 j358 ) 1)


    (isConnected j359 j360)
    (isConnected j360 j359)
    (= (distanceBetweenJunctions j359 j360 ) 1)
    (= (distanceBetweenJunctions j360 j359 ) 1)


    (isConnected j350 j360)
    (isConnected j360 j350)
    (= (distanceBetweenJunctions j350 j360 ) 1)
    (= (distanceBetweenJunctions j360 j350 ) 1)


    (isConnected j351 j361)
    (isConnected j361 j351)
    (= (distanceBetweenJunctions j351 j361 ) 1)
    (= (distanceBetweenJunctions j361 j351 ) 1)


    (isConnected j352 j362)
    (isConnected j362 j352)
    (= (distanceBetweenJunctions j352 j362 ) 1)
    (= (distanceBetweenJunctions j362 j352 ) 1)


    (isConnected j353 j363)
    (isConnected j363 j353)
    (= (distanceBetweenJunctions j353 j363 ) 1)
    (= (distanceBetweenJunctions j363 j353 ) 1)


    (isConnected j354 j364)
    (isConnected j364 j354)
    (= (distanceBetweenJunctions j354 j364 ) 1)
    (= (distanceBetweenJunctions j364 j354 ) 1)


    (isConnected j355 j365)
    (isConnected j365 j355)
    (= (distanceBetweenJunctions j355 j365 ) 1)
    (= (distanceBetweenJunctions j365 j355 ) 1)


    (isConnected j356 j366)
    (isConnected j366 j356)
    (= (distanceBetweenJunctions j356 j366 ) 1)
    (= (distanceBetweenJunctions j366 j356 ) 1)


    (isConnected j357 j367)
    (isConnected j367 j357)
    (= (distanceBetweenJunctions j357 j367 ) 1)
    (= (distanceBetweenJunctions j367 j357 ) 1)


    (isConnected j358 j368)
    (isConnected j368 j358)
    (= (distanceBetweenJunctions j358 j368 ) 1)
    (= (distanceBetweenJunctions j368 j358 ) 1)


    (isConnected j359 j369)
    (isConnected j369 j359)
    (= (distanceBetweenJunctions j359 j369 ) 1)
    (= (distanceBetweenJunctions j369 j359 ) 1)





    (isConnected j360 j361)
    (isConnected j361 j360)
    (= (distanceBetweenJunctions j360 j361 ) 1)
    (= (distanceBetweenJunctions j361 j360 ) 1)


    (isConnected j361 j362)
    (isConnected j362 j361)
    (= (distanceBetweenJunctions j361 j362 ) 1)
    (= (distanceBetweenJunctions j362 j361 ) 1)


    (isConnected j362 j363)
    (isConnected j363 j362)
    (= (distanceBetweenJunctions j362 j363 ) 1)
    (= (distanceBetweenJunctions j363 j362 ) 1)


    (isConnected j363 j364)
    (isConnected j364 j363)
    (= (distanceBetweenJunctions j363 j364 ) 1)
    (= (distanceBetweenJunctions j364 j363 ) 1)


    (isConnected j364 j365)
    (isConnected j365 j364)
    (= (distanceBetweenJunctions j364 j365 ) 1)
    (= (distanceBetweenJunctions j365 j364 ) 1)


    (isConnected j365 j366)
    (isConnected j366 j365)
    (= (distanceBetweenJunctions j365 j366 ) 1)
    (= (distanceBetweenJunctions j366 j365 ) 1)


    (isConnected j366 j367)
    (isConnected j367 j366)
    (= (distanceBetweenJunctions j366 j367 ) 1)
    (= (distanceBetweenJunctions j367 j366 ) 1)


    (isConnected j367 j368)
    (isConnected j368 j367)
    (= (distanceBetweenJunctions j367 j368 ) 1)
    (= (distanceBetweenJunctions j368 j367 ) 1)


    (isConnected j368 j369)
    (isConnected j369 j368)
    (= (distanceBetweenJunctions j368 j369 ) 1)
    (= (distanceBetweenJunctions j369 j368 ) 1)


    (isConnected j369 j370)
    (isConnected j370 j369)
    (= (distanceBetweenJunctions j369 j370 ) 1)
    (= (distanceBetweenJunctions j370 j369 ) 1)


    (isConnected j360 j370)
    (isConnected j370 j360)
    (= (distanceBetweenJunctions j360 j370 ) 1)
    (= (distanceBetweenJunctions j370 j360 ) 1)


    (isConnected j361 j371)
    (isConnected j371 j361)
    (= (distanceBetweenJunctions j361 j371 ) 1)
    (= (distanceBetweenJunctions j371 j361 ) 1)


    (isConnected j362 j372)
    (isConnected j372 j362)
    (= (distanceBetweenJunctions j362 j372 ) 1)
    (= (distanceBetweenJunctions j372 j362 ) 1)


    (isConnected j363 j373)
    (isConnected j373 j363)
    (= (distanceBetweenJunctions j363 j373 ) 1)
    (= (distanceBetweenJunctions j373 j363 ) 1)


    (isConnected j364 j374)
    (isConnected j374 j364)
    (= (distanceBetweenJunctions j364 j374 ) 1)
    (= (distanceBetweenJunctions j374 j364 ) 1)


    (isConnected j365 j375)
    (isConnected j375 j365)
    (= (distanceBetweenJunctions j365 j375 ) 1)
    (= (distanceBetweenJunctions j375 j365 ) 1)


    (isConnected j366 j376)
    (isConnected j376 j366)
    (= (distanceBetweenJunctions j366 j376 ) 1)
    (= (distanceBetweenJunctions j376 j366 ) 1)


    (isConnected j367 j377)
    (isConnected j377 j367)
    (= (distanceBetweenJunctions j367 j377 ) 1)
    (= (distanceBetweenJunctions j377 j367 ) 1)


    (isConnected j368 j378)
    (isConnected j378 j368)
    (= (distanceBetweenJunctions j368 j378 ) 1)
    (= (distanceBetweenJunctions j378 j368 ) 1)


    (isConnected j369 j379)
    (isConnected j379 j369)
    (= (distanceBetweenJunctions j369 j379 ) 1)
    (= (distanceBetweenJunctions j379 j369 ) 1)





    (isConnected j370 j371)
    (isConnected j371 j370)
    (= (distanceBetweenJunctions j370 j371 ) 1)
    (= (distanceBetweenJunctions j371 j370 ) 1)


    (isConnected j371 j372)
    (isConnected j372 j371)
    (= (distanceBetweenJunctions j371 j372 ) 1)
    (= (distanceBetweenJunctions j372 j371 ) 1)


    (isConnected j372 j373)
    (isConnected j373 j372)
    (= (distanceBetweenJunctions j372 j373 ) 1)
    (= (distanceBetweenJunctions j373 j372 ) 1)


    (isConnected j373 j374)
    (isConnected j374 j373)
    (= (distanceBetweenJunctions j373 j374 ) 1)
    (= (distanceBetweenJunctions j374 j373 ) 1)


    (isConnected j374 j375)
    (isConnected j375 j374)
    (= (distanceBetweenJunctions j374 j375 ) 1)
    (= (distanceBetweenJunctions j375 j374 ) 1)


    (isConnected j375 j376)
    (isConnected j376 j375)
    (= (distanceBetweenJunctions j375 j376 ) 1)
    (= (distanceBetweenJunctions j376 j375 ) 1)


    (isConnected j376 j377)
    (isConnected j377 j376)
    (= (distanceBetweenJunctions j376 j377 ) 1)
    (= (distanceBetweenJunctions j377 j376 ) 1)


    (isConnected j377 j378)
    (isConnected j378 j377)
    (= (distanceBetweenJunctions j377 j378 ) 1)
    (= (distanceBetweenJunctions j378 j377 ) 1)


    (isConnected j378 j379)
    (isConnected j379 j378)
    (= (distanceBetweenJunctions j378 j379 ) 1)
    (= (distanceBetweenJunctions j379 j378 ) 1)


    (isConnected j379 j380)
    (isConnected j380 j379)
    (= (distanceBetweenJunctions j379 j380 ) 1)
    (= (distanceBetweenJunctions j380 j379 ) 1)


    (isConnected j370 j380)
    (isConnected j380 j370)
    (= (distanceBetweenJunctions j370 j380 ) 1)
    (= (distanceBetweenJunctions j380 j370 ) 1)


    (isConnected j371 j381)
    (isConnected j381 j371)
    (= (distanceBetweenJunctions j371 j381 ) 1)
    (= (distanceBetweenJunctions j381 j371 ) 1)


    (isConnected j372 j382)
    (isConnected j382 j372)
    (= (distanceBetweenJunctions j372 j382 ) 1)
    (= (distanceBetweenJunctions j382 j372 ) 1)


    (isConnected j373 j383)
    (isConnected j383 j373)
    (= (distanceBetweenJunctions j373 j383 ) 1)
    (= (distanceBetweenJunctions j383 j373 ) 1)


    (isConnected j374 j384)
    (isConnected j384 j374)
    (= (distanceBetweenJunctions j374 j384 ) 1)
    (= (distanceBetweenJunctions j384 j374 ) 1)


    (isConnected j375 j385)
    (isConnected j385 j375)
    (= (distanceBetweenJunctions j375 j385 ) 1)
    (= (distanceBetweenJunctions j385 j375 ) 1)


    (isConnected j376 j386)
    (isConnected j386 j376)
    (= (distanceBetweenJunctions j376 j386 ) 1)
    (= (distanceBetweenJunctions j386 j376 ) 1)


    (isConnected j377 j387)
    (isConnected j387 j377)
    (= (distanceBetweenJunctions j377 j387 ) 1)
    (= (distanceBetweenJunctions j387 j377 ) 1)


    (isConnected j378 j388)
    (isConnected j388 j378)
    (= (distanceBetweenJunctions j378 j388 ) 1)
    (= (distanceBetweenJunctions j388 j378 ) 1)


    (isConnected j379 j389)
    (isConnected j389 j379)
    (= (distanceBetweenJunctions j379 j389 ) 1)
    (= (distanceBetweenJunctions j389 j379 ) 1)





    (isConnected j380 j381)
    (isConnected j381 j380)
    (= (distanceBetweenJunctions j380 j381 ) 1)
    (= (distanceBetweenJunctions j381 j380 ) 1)


    (isConnected j381 j382)

    (isConnected j382 j381)
    (= (distanceBetweenJunctions j381 j382 ) 1)
    (= (distanceBetweenJunctions j382 j381 ) 1)


    (isConnected j382 j383)
    (isConnected j383 j382)
    (= (distanceBetweenJunctions j382 j383 ) 1)
    (= (distanceBetweenJunctions j383 j382 ) 1)


    (isConnected j383 j384)
    (isConnected j384 j383)
    (= (distanceBetweenJunctions j383 j384 ) 1)
    (= (distanceBetweenJunctions j384 j383 ) 1)


    (isConnected j384 j385)
    (isConnected j385 j384)
    (= (distanceBetweenJunctions j384 j385 ) 1)
    (= (distanceBetweenJunctions j385 j384 ) 1)


    (isConnected j385 j386)
    (isConnected j386 j385)
    (= (distanceBetweenJunctions j385 j386 ) 1)
    (= (distanceBetweenJunctions j386 j385 ) 1)


    (isConnected j386 j387)
    (isConnected j387 j386)
    (= (distanceBetweenJunctions j386 j387 ) 1)
    (= (distanceBetweenJunctions j387 j386 ) 1)


    (isConnected j387 j388)
    (isConnected j388 j387)
    (= (distanceBetweenJunctions j387 j388 ) 1)
    (= (distanceBetweenJunctions j388 j387 ) 1)


    (isConnected j388 j389)
    (isConnected j389 j388)
    (= (distanceBetweenJunctions j388 j389 ) 1)
    (= (distanceBetweenJunctions j389 j388 ) 1)


    (isConnected j389 j390)
    (isConnected j390 j389)
    (= (distanceBetweenJunctions j389 j390 ) 1)
    (= (distanceBetweenJunctions j390 j389 ) 1)


    (isConnected j380 j390)
    (isConnected j390 j380)
    (= (distanceBetweenJunctions j380 j390 ) 1)
    (= (distanceBetweenJunctions j390 j380 ) 1)


    (isConnected j381 j391)
    (isConnected j391 j381)
    (= (distanceBetweenJunctions j381 j391 ) 1)
    (= (distanceBetweenJunctions j391 j381 ) 1)


    (isConnected j382 j392)
    (isConnected j392 j382)
    (= (distanceBetweenJunctions j382 j392 ) 1)
    (= (distanceBetweenJunctions j392 j382 ) 1)


    (isConnected j383 j393)
    (isConnected j393 j383)
    (= (distanceBetweenJunctions j383 j393 ) 1)
    (= (distanceBetweenJunctions j393 j383 ) 1)


    (isConnected j384 j394)
    (isConnected j394 j384)
    (= (distanceBetweenJunctions j384 j394 ) 1)
    (= (distanceBetweenJunctions j394 j384 ) 1)


    (isConnected j385 j395)
    (isConnected j395 j385)
    (= (distanceBetweenJunctions j385 j395 ) 1)
    (= (distanceBetweenJunctions j395 j385 ) 1)


    (isConnected j386 j396)
    (isConnected j396 j386)
    (= (distanceBetweenJunctions j386 j396 ) 1)
    (= (distanceBetweenJunctions j396 j386 ) 1)


    (isConnected j387 j397)
    (isConnected j397 j387)
    (= (distanceBetweenJunctions j387 j397 ) 1)
    (= (distanceBetweenJunctions j397 j387 ) 1)


    (isConnected j388 j398)
    (isConnected j398 j388)
    (= (distanceBetweenJunctions j388 j398 ) 1)
    (= (distanceBetweenJunctions j398 j388 ) 1)


    (isConnected j389 j399)
    (isConnected j399 j389)
    (= (distanceBetweenJunctions j389 j399 ) 1)
    (= (distanceBetweenJunctions j399 j389 ) 1)





    (isConnected j390 j391)
    (isConnected j391 j390)
    (= (distanceBetweenJunctions j390 j391 ) 1)
    (= (distanceBetweenJunctions j391 j390 ) 1)


    (isConnected j391 j392)
    (isConnected j392 j391)
    (= (distanceBetweenJunctions j391 j392 ) 1)
    (= (distanceBetweenJunctions j392 j391 ) 1)


    (isConnected j392 j393)
    (isConnected j393 j392)
    (= (distanceBetweenJunctions j392 j393 ) 1)
    (= (distanceBetweenJunctions j393 j392 ) 1)


    (isConnected j393 j394)
    (isConnected j394 j393)
    (= (distanceBetweenJunctions j393 j394 ) 1)
    (= (distanceBetweenJunctions j394 j393 ) 1)


    (isConnected j394 j395)
    (isConnected j395 j394)
    (= (distanceBetweenJunctions j394 j395 ) 1)
    (= (distanceBetweenJunctions j395 j394 ) 1)


    (isConnected j395 j396)
    (isConnected j396 j395)
    (= (distanceBetweenJunctions j395 j396 ) 1)
    (= (distanceBetweenJunctions j396 j395 ) 1)


    (isConnected j396 j397)
    (isConnected j397 j396)
    (= (distanceBetweenJunctions j396 j397 ) 1)
    (= (distanceBetweenJunctions j397 j396 ) 1)


    (isConnected j397 j398)
    (isConnected j398 j397)
    (= (distanceBetweenJunctions j397 j398 ) 1)
    (= (distanceBetweenJunctions j398 j397 ) 1)


    (isConnected j398 j399)
    (isConnected j399 j398)
    (= (distanceBetweenJunctions j398 j399 ) 1)
    (= (distanceBetweenJunctions j399 j398 ) 1)


    (isConnected j399 j400)
    (isConnected j400 j399)
    (= (distanceBetweenJunctions j399 j400 ) 1)
    (= (distanceBetweenJunctions j400 j399 ) 1)


    (isConnected j390 j400)
    (isConnected j400 j390)
    (= (distanceBetweenJunctions j390 j400 ) 1)
    (= (distanceBetweenJunctions j400 j390 ) 1)


    (isConnected j391 j401)
    (isConnected j401 j391)
    (= (distanceBetweenJunctions j391 j401 ) 1)
    (= (distanceBetweenJunctions j401 j391 ) 1)


    (isConnected j392 j402)
    (isConnected j402 j392)
    (= (distanceBetweenJunctions j392 j402 ) 1)
    (= (distanceBetweenJunctions j402 j392 ) 1)


    (isConnected j393 j403)
    (isConnected j403 j393)
    (= (distanceBetweenJunctions j393 j403 ) 1)
    (= (distanceBetweenJunctions j403 j393 ) 1)


    (isConnected j394 j404)
    (isConnected j404 j394)
    (= (distanceBetweenJunctions j394 j404 ) 1)
    (= (distanceBetweenJunctions j404 j394 ) 1)


    (isConnected j395 j405)
    (isConnected j405 j395)
    (= (distanceBetweenJunctions j395 j405 ) 1)
    (= (distanceBetweenJunctions j405 j395 ) 1)


    (isConnected j396 j406)
    (isConnected j406 j396)
    (= (distanceBetweenJunctions j396 j406 ) 1)
    (= (distanceBetweenJunctions j406 j396 ) 1)


    (isConnected j397 j407)
    (isConnected j407 j397)
    (= (distanceBetweenJunctions j397 j407 ) 1)
    (= (distanceBetweenJunctions j407 j397 ) 1)


    (isConnected j398 j408)
    (isConnected j408 j398)
    (= (distanceBetweenJunctions j398 j408 ) 1)
    (= (distanceBetweenJunctions j408 j398 ) 1)


    (isConnected j399 j409)
    (isConnected j409 j399)
    (= (distanceBetweenJunctions j399 j409 ) 1)
    (= (distanceBetweenJunctions j409 j399 ) 1)





    (isConnected j400 j401)
    (isConnected j401 j400)
    (= (distanceBetweenJunctions j400 j401 ) 1)
    (= (distanceBetweenJunctions j401 j400 ) 1)


    (isConnected j401 j402)
    (isConnected j402 j401)
    (= (distanceBetweenJunctions j401 j402 ) 1)
    (= (distanceBetweenJunctions j402 j401 ) 1)


    (isConnected j402 j403)
    (isConnected j403 j402)
    (= (distanceBetweenJunctions j402 j403 ) 1)
    (= (distanceBetweenJunctions j403 j402 ) 1)


    (isConnected j403 j404)
    (isConnected j404 j403)
    (= (distanceBetweenJunctions j403 j404 ) 1)
    (= (distanceBetweenJunctions j404 j403 ) 1)


    (isConnected j404 j405)
    (isConnected j405 j404)
    (= (distanceBetweenJunctions j404 j405 ) 1)
    (= (distanceBetweenJunctions j405 j404 ) 1)


    (isConnected j405 j406)
    (isConnected j406 j405)
    (= (distanceBetweenJunctions j405 j406 ) 1)
    (= (distanceBetweenJunctions j406 j405 ) 1)


    (isConnected j406 j407)
    (isConnected j407 j406)
    (= (distanceBetweenJunctions j406 j407 ) 1)
    (= (distanceBetweenJunctions j407 j406 ) 1)


    (isConnected j407 j408)
    (isConnected j408 j407)
    (= (distanceBetweenJunctions j407 j408 ) 1)
    (= (distanceBetweenJunctions j408 j407 ) 1)


    (isConnected j408 j409)
    (isConnected j409 j408)
    (= (distanceBetweenJunctions j408 j409 ) 1)
    (= (distanceBetweenJunctions j409 j408 ) 1)


    (isConnected j409 j410)
    (isConnected j410 j409)
    (= (distanceBetweenJunctions j409 j410 ) 1)
    (= (distanceBetweenJunctions j410 j409 ) 1)


    (isConnected j400 j410)
    (isConnected j410 j400)
    (= (distanceBetweenJunctions j400 j410 ) 1)
    (= (distanceBetweenJunctions j410 j400 ) 1)


    (isConnected j401 j411)
    (isConnected j411 j401)
    (= (distanceBetweenJunctions j401 j411 ) 1)
    (= (distanceBetweenJunctions j411 j401 ) 1)


    (isConnected j402 j412)
    (isConnected j412 j402)
    (= (distanceBetweenJunctions j402 j412 ) 1)
    (= (distanceBetweenJunctions j412 j402 ) 1)


    (isConnected j403 j413)
    (isConnected j413 j403)
    (= (distanceBetweenJunctions j403 j413 ) 1)
    (= (distanceBetweenJunctions j413 j403 ) 1)


    (isConnected j404 j414)
    (isConnected j414 j404)
    (= (distanceBetweenJunctions j404 j414 ) 1)
    (= (distanceBetweenJunctions j414 j404 ) 1)


    (isConnected j405 j415)
    (isConnected j415 j405)
    (= (distanceBetweenJunctions j405 j415 ) 1)
    (= (distanceBetweenJunctions j415 j405 ) 1)


    (isConnected j406 j416)
    (isConnected j416 j406)
    (= (distanceBetweenJunctions j406 j416 ) 1)
    (= (distanceBetweenJunctions j416 j406 ) 1)


    (isConnected j407 j417)
    (isConnected j417 j407)
    (= (distanceBetweenJunctions j407 j417 ) 1)
    (= (distanceBetweenJunctions j417 j407 ) 1)


    (isConnected j408 j418)
    (isConnected j418 j408)
    (= (distanceBetweenJunctions j408 j418 ) 1)
    (= (distanceBetweenJunctions j418 j408 ) 1)


    (isConnected j409 j419)
    (isConnected j419 j409)
    (= (distanceBetweenJunctions j409 j419 ) 1)
    (= (distanceBetweenJunctions j419 j409 ) 1)





    (isConnected j410 j411)
    (isConnected j411 j410)
    (= (distanceBetweenJunctions j410 j411 ) 1)
    (= (distanceBetweenJunctions j411 j410 ) 1)


    (isConnected j411 j412)
    (isConnected j412 j411)
    (= (distanceBetweenJunctions j411 j412 ) 1)
    (= (distanceBetweenJunctions j412 j411 ) 1)


    (isConnected j412 j413)
    (isConnected j413 j412)
    (= (distanceBetweenJunctions j412 j413 ) 1)
    (= (distanceBetweenJunctions j413 j412 ) 1)


    (isConnected j413 j414)
    (isConnected j414 j413)
    (= (distanceBetweenJunctions j413 j414 ) 1)
    (= (distanceBetweenJunctions j414 j413 ) 1)


    (isConnected j414 j415)
    (isConnected j415 j414)
    (= (distanceBetweenJunctions j414 j415 ) 1)
    (= (distanceBetweenJunctions j415 j414 ) 1)


    (isConnected j415 j416)
    (isConnected j416 j415)
    (= (distanceBetweenJunctions j415 j416 ) 1)
    (= (distanceBetweenJunctions j416 j415 ) 1)


    (isConnected j416 j417)
    (isConnected j417 j416)
    (= (distanceBetweenJunctions j416 j417 ) 1)
    (= (distanceBetweenJunctions j417 j416 ) 1)


    (isConnected j417 j418)
    (isConnected j418 j417)
    (= (distanceBetweenJunctions j417 j418 ) 1)
    (= (distanceBetweenJunctions j418 j417 ) 1)


    (isConnected j418 j419)
    (isConnected j419 j418)
    (= (distanceBetweenJunctions j418 j419 ) 1)
    (= (distanceBetweenJunctions j419 j418 ) 1)


    (isConnected j419 j420)
    (isConnected j420 j419)
    (= (distanceBetweenJunctions j419 j420 ) 1)
    (= (distanceBetweenJunctions j420 j419 ) 1)


    (isConnected j410 j420)
    (isConnected j420 j410)
    (= (distanceBetweenJunctions j410 j420 ) 1)
    (= (distanceBetweenJunctions j420 j410 ) 1)


    (isConnected j411 j421)
    (isConnected j421 j411)
    (= (distanceBetweenJunctions j411 j421 ) 1)
    (= (distanceBetweenJunctions j421 j411 ) 1)


    (isConnected j412 j422)
    (isConnected j422 j412)
    (= (distanceBetweenJunctions j412 j422 ) 1)
    (= (distanceBetweenJunctions j422 j412 ) 1)


    (isConnected j413 j423)
    (isConnected j423 j413)
    (= (distanceBetweenJunctions j413 j423 ) 1)
    (= (distanceBetweenJunctions j423 j413 ) 1)


    (isConnected j414 j424)
    (isConnected j424 j414)
    (= (distanceBetweenJunctions j414 j424 ) 1)
    (= (distanceBetweenJunctions j424 j414 ) 1)


    (isConnected j415 j425)
    (isConnected j425 j415)
    (= (distanceBetweenJunctions j415 j425 ) 1)
    (= (distanceBetweenJunctions j425 j415 ) 1)


    (isConnected j416 j426)
    (isConnected j426 j416)
    (= (distanceBetweenJunctions j416 j426 ) 1)
    (= (distanceBetweenJunctions j426 j416 ) 1)


    (isConnected j417 j427)
    (isConnected j427 j417)
    (= (distanceBetweenJunctions j417 j427 ) 1)
    (= (distanceBetweenJunctions j427 j417 ) 1)


    (isConnected j418 j428)
    (isConnected j428 j418)
    (= (distanceBetweenJunctions j418 j428 ) 1)
    (= (distanceBetweenJunctions j428 j418 ) 1)


    (isConnected j419 j429)
    (isConnected j429 j419)
    (= (distanceBetweenJunctions j419 j429 ) 1)
    (= (distanceBetweenJunctions j429 j419 ) 1)





    (isConnected j420 j421)
    (isConnected j421 j420)
    (= (distanceBetweenJunctions j420 j421 ) 1)
    (= (distanceBetweenJunctions j421 j420 ) 1)


    (isConnected j421 j422)
    (isConnected j422 j421)
    (= (distanceBetweenJunctions j421 j422 ) 1)
    (= (distanceBetweenJunctions j422 j421 ) 1)


    (isConnected j422 j423)
    (isConnected j423 j422)
    (= (distanceBetweenJunctions j422 j423 ) 1)
    (= (distanceBetweenJunctions j423 j422 ) 1)


    (isConnected j423 j424)
    (isConnected j424 j423)
    (= (distanceBetweenJunctions j423 j424 ) 1)
    (= (distanceBetweenJunctions j424 j423 ) 1)


    (isConnected j424 j425)
    (isConnected j425 j424)
    (= (distanceBetweenJunctions j424 j425 ) 1)
    (= (distanceBetweenJunctions j425 j424 ) 1)


    (isConnected j425 j426)
    (isConnected j426 j425)
    (= (distanceBetweenJunctions j425 j426 ) 1)
    (= (distanceBetweenJunctions j426 j425 ) 1)


    (isConnected j426 j427)
    (isConnected j427 j426)
    (= (distanceBetweenJunctions j426 j427 ) 1)
    (= (distanceBetweenJunctions j427 j426 ) 1)


    (isConnected j427 j428)
    (isConnected j428 j427)
    (= (distanceBetweenJunctions j427 j428 ) 1)
    (= (distanceBetweenJunctions j428 j427 ) 1)


    (isConnected j428 j429)
    (isConnected j429 j428)
    (= (distanceBetweenJunctions j428 j429 ) 1)
    (= (distanceBetweenJunctions j429 j428 ) 1)


    (isConnected j429 j430)
    (isConnected j430 j429)
    (= (distanceBetweenJunctions j429 j430 ) 1)
    (= (distanceBetweenJunctions j430 j429 ) 1)


    (isConnected j420 j430)
    (isConnected j430 j420)
    (= (distanceBetweenJunctions j420 j430 ) 1)
    (= (distanceBetweenJunctions j430 j420 ) 1)


    (isConnected j421 j431)
    (isConnected j431 j421)
    (= (distanceBetweenJunctions j421 j431 ) 1)
    (= (distanceBetweenJunctions j431 j421 ) 1)


    (isConnected j422 j432)
    (isConnected j432 j422)
    (= (distanceBetweenJunctions j422 j432 ) 1)
    (= (distanceBetweenJunctions j432 j422 ) 1)


    (isConnected j423 j433)
    (isConnected j433 j423)
    (= (distanceBetweenJunctions j423 j433 ) 1)
    (= (distanceBetweenJunctions j433 j423 ) 1)


    (isConnected j424 j434)
    (isConnected j434 j424)
    (= (distanceBetweenJunctions j424 j434 ) 1)
    (= (distanceBetweenJunctions j434 j424 ) 1)


    (isConnected j425 j435)
    (isConnected j435 j425)
    (= (distanceBetweenJunctions j425 j435 ) 1)
    (= (distanceBetweenJunctions j435 j425 ) 1)


    (isConnected j426 j436)
    (isConnected j436 j426)
    (= (distanceBetweenJunctions j426 j436 ) 1)
    (= (distanceBetweenJunctions j436 j426 ) 1)


    (isConnected j427 j437)
    (isConnected j437 j427)
    (= (distanceBetweenJunctions j427 j437 ) 1)
    (= (distanceBetweenJunctions j437 j427 ) 1)


    (isConnected j428 j438)
    (isConnected j438 j428)
    (= (distanceBetweenJunctions j428 j438 ) 1)
    (= (distanceBetweenJunctions j438 j428 ) 1)


    (isConnected j429 j439)
    (isConnected j439 j429)
    (= (distanceBetweenJunctions j429 j439 ) 1)
    (= (distanceBetweenJunctions j439 j429 ) 1)





    (isConnected j430 j431)
    (isConnected j431 j430)
    (= (distanceBetweenJunctions j430 j431 ) 1)
    (= (distanceBetweenJunctions j431 j430 ) 1)


    (isConnected j431 j432)
    (isConnected j432 j431)
    (= (distanceBetweenJunctions j431 j432 ) 1)
    (= (distanceBetweenJunctions j432 j431 ) 1)


    (isConnected j432 j433)
    (isConnected j433 j432)
    (= (distanceBetweenJunctions j432 j433 ) 1)
    (= (distanceBetweenJunctions j433 j432 ) 1)


    (isConnected j433 j434)
    (isConnected j434 j433)
    (= (distanceBetweenJunctions j433 j434 ) 1)
    (= (distanceBetweenJunctions j434 j433 ) 1)


    (isConnected j434 j435)
    (isConnected j435 j434)
    (= (distanceBetweenJunctions j434 j435 ) 1)
    (= (distanceBetweenJunctions j435 j434 ) 1)


    (isConnected j435 j436)
    (isConnected j436 j435)
    (= (distanceBetweenJunctions j435 j436 ) 1)
    (= (distanceBetweenJunctions j436 j435 ) 1)


    (isConnected j436 j437)
    (isConnected j437 j436)
    (= (distanceBetweenJunctions j436 j437 ) 1)
    (= (distanceBetweenJunctions j437 j436 ) 1)


    (isConnected j437 j438)
    (isConnected j438 j437)
    (= (distanceBetweenJunctions j437 j438 ) 1)
    (= (distanceBetweenJunctions j438 j437 ) 1)


    (isConnected j438 j439)
    (isConnected j439 j438)
    (= (distanceBetweenJunctions j438 j439 ) 1)
    (= (distanceBetweenJunctions j439 j438 ) 1)


    (isConnected j439 j440)
    (isConnected j440 j439)
    (= (distanceBetweenJunctions j439 j440 ) 1)
    (= (distanceBetweenJunctions j440 j439 ) 1)


    (isConnected j430 j440)
    (isConnected j440 j430)
    (= (distanceBetweenJunctions j430 j440 ) 1)
    (= (distanceBetweenJunctions j440 j430 ) 1)


    (isConnected j431 j441)
    (isConnected j441 j431)
    (= (distanceBetweenJunctions j431 j441 ) 1)
    (= (distanceBetweenJunctions j441 j431 ) 1)


    (isConnected j432 j442)
    (isConnected j442 j432)
    (= (distanceBetweenJunctions j432 j442 ) 1)
    (= (distanceBetweenJunctions j442 j432 ) 1)


    (isConnected j433 j443)
    (isConnected j443 j433)
    (= (distanceBetweenJunctions j433 j443 ) 1)
    (= (distanceBetweenJunctions j443 j433 ) 1)


    (isConnected j434 j444)
    (isConnected j444 j434)
    (= (distanceBetweenJunctions j434 j444 ) 1)
    (= (distanceBetweenJunctions j444 j434 ) 1)


    (isConnected j435 j445)
    (isConnected j445 j435)
    (= (distanceBetweenJunctions j435 j445 ) 1)
    (= (distanceBetweenJunctions j445 j435 ) 1)


    (isConnected j436 j446)
    (isConnected j446 j436)
    (= (distanceBetweenJunctions j436 j446 ) 1)
    (= (distanceBetweenJunctions j446 j436 ) 1)


    (isConnected j437 j447)
    (isConnected j447 j437)
    (= (distanceBetweenJunctions j437 j447 ) 1)
    (= (distanceBetweenJunctions j447 j437 ) 1)


    (isConnected j438 j448)
    (isConnected j448 j438)
    (= (distanceBetweenJunctions j438 j448 ) 1)
    (= (distanceBetweenJunctions j448 j438 ) 1)


    (isConnected j439 j449)
    (isConnected j449 j439)
    (= (distanceBetweenJunctions j439 j449 ) 1)
    (= (distanceBetweenJunctions j449 j439 ) 1)





    (isConnected j440 j441)
    (isConnected j441 j440)
    (= (distanceBetweenJunctions j440 j441 ) 1)
    (= (distanceBetweenJunctions j441 j440 ) 1)


    (isConnected j441 j442)
    (isConnected j442 j441)
    (= (distanceBetweenJunctions j441 j442 ) 1)
    (= (distanceBetweenJunctions j442 j441 ) 1)


    (isConnected j442 j443)
    (isConnected j443 j442)
    (= (distanceBetweenJunctions j442 j443 ) 1)
    (= (distanceBetweenJunctions j443 j442 ) 1)


    (isConnected j443 j444)
    (isConnected j444 j443)
    (= (distanceBetweenJunctions j443 j444 ) 1)
    (= (distanceBetweenJunctions j444 j443 ) 1)


    (isConnected j444 j445)
    (isConnected j445 j444)
    (= (distanceBetweenJunctions j444 j445 ) 1)
    (= (distanceBetweenJunctions j445 j444 ) 1)


    (isConnected j445 j446)
    (isConnected j446 j445)
    (= (distanceBetweenJunctions j445 j446 ) 1)
    (= (distanceBetweenJunctions j446 j445 ) 1)


    (isConnected j446 j447)
    (isConnected j447 j446)
    (= (distanceBetweenJunctions j446 j447 ) 1)
    (= (distanceBetweenJunctions j447 j446 ) 1)


    (isConnected j447 j448)
    (isConnected j448 j447)
    (= (distanceBetweenJunctions j447 j448 ) 1)
    (= (distanceBetweenJunctions j448 j447 ) 1)


    (isConnected j448 j449)
    (isConnected j449 j448)
    (= (distanceBetweenJunctions j448 j449 ) 1)
    (= (distanceBetweenJunctions j449 j448 ) 1)


    (isConnected j449 j450)
    (isConnected j450 j449)
    (= (distanceBetweenJunctions j449 j450 ) 1)
    (= (distanceBetweenJunctions j450 j449 ) 1)


    (isConnected j440 j450)
    (isConnected j450 j440)
    (= (distanceBetweenJunctions j440 j450 ) 1)
    (= (distanceBetweenJunctions j450 j440 ) 1)


    (isConnected j441 j451)
    (isConnected j451 j441)
    (= (distanceBetweenJunctions j441 j451 ) 1)
    (= (distanceBetweenJunctions j451 j441 ) 1)


    (isConnected j442 j452)
    (isConnected j452 j442)
    (= (distanceBetweenJunctions j442 j452 ) 1)
    (= (distanceBetweenJunctions j452 j442 ) 1)


    (isConnected j443 j453)
    (isConnected j453 j443)
    (= (distanceBetweenJunctions j443 j453 ) 1)
    (= (distanceBetweenJunctions j453 j443 ) 1)


    (isConnected j444 j454)
    (isConnected j454 j444)
    (= (distanceBetweenJunctions j444 j454 ) 1)
    (= (distanceBetweenJunctions j454 j444 ) 1)


    (isConnected j445 j455)
    (isConnected j455 j445)
    (= (distanceBetweenJunctions j445 j455 ) 1)
    (= (distanceBetweenJunctions j455 j445 ) 1)


    (isConnected j446 j456)
    (isConnected j456 j446)
    (= (distanceBetweenJunctions j446 j456 ) 1)
    (= (distanceBetweenJunctions j456 j446 ) 1)


    (isConnected j447 j457)
    (isConnected j457 j447)
    (= (distanceBetweenJunctions j447 j457 ) 1)
    (= (distanceBetweenJunctions j457 j447 ) 1)


    (isConnected j448 j458)
    (isConnected j458 j448)
    (= (distanceBetweenJunctions j448 j458 ) 1)
    (= (distanceBetweenJunctions j458 j448 ) 1)


    (isConnected j449 j459)
    (isConnected j459 j449)
    (= (distanceBetweenJunctions j449 j459 ) 1)
    (= (distanceBetweenJunctions j459 j449 ) 1)





    (isConnected j450 j451)
    (isConnected j451 j450)
    (= (distanceBetweenJunctions j450 j451 ) 1)
    (= (distanceBetweenJunctions j451 j450 ) 1)


    (isConnected j451 j452)
    (isConnected j452 j451)
    (= (distanceBetweenJunctions j451 j452 ) 1)
    (= (distanceBetweenJunctions j452 j451 ) 1)


    (isConnected j452 j453)
    (isConnected j453 j452)
    (= (distanceBetweenJunctions j452 j453 ) 1)
    (= (distanceBetweenJunctions j453 j452 ) 1)


    (isConnected j453 j454)
    (isConnected j454 j453)
    (= (distanceBetweenJunctions j453 j454 ) 1)
    (= (distanceBetweenJunctions j454 j453 ) 1)


    (isConnected j454 j455)
    (isConnected j455 j454)
    (= (distanceBetweenJunctions j454 j455 ) 1)
    (= (distanceBetweenJunctions j455 j454 ) 1)


    (isConnected j455 j456)
    (isConnected j456 j455)
    (= (distanceBetweenJunctions j455 j456 ) 1)
    (= (distanceBetweenJunctions j456 j455 ) 1)


    (isConnected j456 j457)
    (isConnected j457 j456)
    (= (distanceBetweenJunctions j456 j457 ) 1)
    (= (distanceBetweenJunctions j457 j456 ) 1)


    (isConnected j457 j458)
    (isConnected j458 j457)
    (= (distanceBetweenJunctions j457 j458 ) 1)
    (= (distanceBetweenJunctions j458 j457 ) 1)


    (isConnected j458 j459)
    (isConnected j459 j458)
    (= (distanceBetweenJunctions j458 j459 ) 1)
    (= (distanceBetweenJunctions j459 j458 ) 1)


    (isConnected j459 j460)
    (isConnected j460 j459)
    (= (distanceBetweenJunctions j459 j460 ) 1)
    (= (distanceBetweenJunctions j460 j459 ) 1)


    (isConnected j450 j460)
    (isConnected j460 j450)
    (= (distanceBetweenJunctions j450 j460 ) 1)
    (= (distanceBetweenJunctions j460 j450 ) 1)


    (isConnected j451 j461)
    (isConnected j461 j451)
    (= (distanceBetweenJunctions j451 j461 ) 1)
    (= (distanceBetweenJunctions j461 j451 ) 1)


    (isConnected j452 j462)
    (isConnected j462 j452)
    (= (distanceBetweenJunctions j452 j462 ) 1)
    (= (distanceBetweenJunctions j462 j452 ) 1)


    (isConnected j453 j463)
    (isConnected j463 j453)
    (= (distanceBetweenJunctions j453 j463 ) 1)
    (= (distanceBetweenJunctions j463 j453 ) 1)


    (isConnected j454 j464)
    (isConnected j464 j454)
    (= (distanceBetweenJunctions j454 j464 ) 1)
    (= (distanceBetweenJunctions j464 j454 ) 1)


    (isConnected j455 j465)
    (isConnected j465 j455)
    (= (distanceBetweenJunctions j455 j465 ) 1)
    (= (distanceBetweenJunctions j465 j455 ) 1)


    (isConnected j456 j466)
    (isConnected j466 j456)
    (= (distanceBetweenJunctions j456 j466 ) 1)
    (= (distanceBetweenJunctions j466 j456 ) 1)


    (isConnected j457 j467)
    (isConnected j467 j457)
    (= (distanceBetweenJunctions j457 j467 ) 1)
    (= (distanceBetweenJunctions j467 j457 ) 1)


    (isConnected j458 j468)
    (isConnected j468 j458)
    (= (distanceBetweenJunctions j458 j468 ) 1)
    (= (distanceBetweenJunctions j468 j458 ) 1)


    (isConnected j459 j469)
    (isConnected j469 j459)
    (= (distanceBetweenJunctions j459 j469 ) 1)
    (= (distanceBetweenJunctions j469 j459 ) 1)





    (isConnected j460 j461)
    (isConnected j461 j460)
    (= (distanceBetweenJunctions j460 j461 ) 1)
    (= (distanceBetweenJunctions j461 j460 ) 1)


    (isConnected j461 j462)
    (isConnected j462 j461)
    (= (distanceBetweenJunctions j461 j462 ) 1)
    (= (distanceBetweenJunctions j462 j461 ) 1)


    (isConnected j462 j463)
    (isConnected j463 j462)
    (= (distanceBetweenJunctions j462 j463 ) 1)
    (= (distanceBetweenJunctions j463 j462 ) 1)


    (isConnected j463 j464)
    (isConnected j464 j463)
    (= (distanceBetweenJunctions j463 j464 ) 1)
    (= (distanceBetweenJunctions j464 j463 ) 1)


    (isConnected j464 j465)
    (isConnected j465 j464)
    (= (distanceBetweenJunctions j464 j465 ) 1)
    (= (distanceBetweenJunctions j465 j464 ) 1)


    (isConnected j465 j466)
    (isConnected j466 j465)
    (= (distanceBetweenJunctions j465 j466 ) 1)
    (= (distanceBetweenJunctions j466 j465 ) 1)


    (isConnected j466 j467)
    (isConnected j467 j466)
    (= (distanceBetweenJunctions j466 j467 ) 1)
    (= (distanceBetweenJunctions j467 j466 ) 1)


    (isConnected j467 j468)
    (isConnected j468 j467)
    (= (distanceBetweenJunctions j467 j468 ) 1)
    (= (distanceBetweenJunctions j468 j467 ) 1)


    (isConnected j468 j469)
    (isConnected j469 j468)
    (= (distanceBetweenJunctions j468 j469 ) 1)
    (= (distanceBetweenJunctions j469 j468 ) 1)


    (isConnected j469 j470)
    (isConnected j470 j469)
    (= (distanceBetweenJunctions j469 j470 ) 1)
    (= (distanceBetweenJunctions j470 j469 ) 1)


    (isConnected j460 j470)
    (isConnected j470 j460)
    (= (distanceBetweenJunctions j460 j470 ) 1)
    (= (distanceBetweenJunctions j470 j460 ) 1)


    (isConnected j461 j471)
    (isConnected j471 j461)
    (= (distanceBetweenJunctions j461 j471 ) 1)
    (= (distanceBetweenJunctions j471 j461 ) 1)


    (isConnected j462 j472)
    (isConnected j472 j462)
    (= (distanceBetweenJunctions j462 j472 ) 1)
    (= (distanceBetweenJunctions j472 j462 ) 1)


    (isConnected j463 j473)
    (isConnected j473 j463)
    (= (distanceBetweenJunctions j463 j473 ) 1)
    (= (distanceBetweenJunctions j473 j463 ) 1)


    (isConnected j464 j474)
    (isConnected j474 j464)
    (= (distanceBetweenJunctions j464 j474 ) 1)
    (= (distanceBetweenJunctions j474 j464 ) 1)


    (isConnected j465 j475)
    (isConnected j475 j465)
    (= (distanceBetweenJunctions j465 j475 ) 1)
    (= (distanceBetweenJunctions j475 j465 ) 1)


    (isConnected j466 j476)
    (isConnected j476 j466)
    (= (distanceBetweenJunctions j466 j476 ) 1)
    (= (distanceBetweenJunctions j476 j466 ) 1)


    (isConnected j467 j477)
    (isConnected j477 j467)
    (= (distanceBetweenJunctions j467 j477 ) 1)
    (= (distanceBetweenJunctions j477 j467 ) 1)


    (isConnected j468 j478)
    (isConnected j478 j468)
    (= (distanceBetweenJunctions j468 j478 ) 1)
    (= (distanceBetweenJunctions j478 j468 ) 1)


    (isConnected j469 j479)
    (isConnected j479 j469)
    (= (distanceBetweenJunctions j469 j479 ) 1)
    (= (distanceBetweenJunctions j479 j469 ) 1)





    (isConnected j470 j471)
    (isConnected j471 j470)
    (= (distanceBetweenJunctions j470 j471 ) 1)
    (= (distanceBetweenJunctions j471 j470 ) 1)


    (isConnected j471 j472)
    (isConnected j472 j471)
    (= (distanceBetweenJunctions j471 j472 ) 1)
    (= (distanceBetweenJunctions j472 j471 ) 1)


    (isConnected j472 j473)
    (isConnected j473 j472)
    (= (distanceBetweenJunctions j472 j473 ) 1)
    (= (distanceBetweenJunctions j473 j472 ) 1)


    (isConnected j473 j474)
    (isConnected j474 j473)
    (= (distanceBetweenJunctions j473 j474 ) 1)
    (= (distanceBetweenJunctions j474 j473 ) 1)


    (isConnected j474 j475)
    (isConnected j475 j474)
    (= (distanceBetweenJunctions j474 j475 ) 1)
    (= (distanceBetweenJunctions j475 j474 ) 1)


    (isConnected j475 j476)
    (isConnected j476 j475)
    (= (distanceBetweenJunctions j475 j476 ) 1)
    (= (distanceBetweenJunctions j476 j475 ) 1)


    (isConnected j476 j477)
    (isConnected j477 j476)
    (= (distanceBetweenJunctions j476 j477 ) 1)
    (= (distanceBetweenJunctions j477 j476 ) 1)


    (isConnected j477 j478)
    (isConnected j478 j477)
    (= (distanceBetweenJunctions j477 j478 ) 1)
    (= (distanceBetweenJunctions j478 j477 ) 1)


    (isConnected j478 j479)
    (isConnected j479 j478)
    (= (distanceBetweenJunctions j478 j479 ) 1)
    (= (distanceBetweenJunctions j479 j478 ) 1)


    (isConnected j479 j480)
    (isConnected j480 j479)
    (= (distanceBetweenJunctions j479 j480 ) 1)
    (= (distanceBetweenJunctions j480 j479 ) 1)


    (isConnected j470 j480)
    (isConnected j480 j470)
    (= (distanceBetweenJunctions j470 j480 ) 1)
    (= (distanceBetweenJunctions j480 j470 ) 1)


    (isConnected j471 j481)
    (isConnected j481 j471)
    (= (distanceBetweenJunctions j471 j481 ) 1)
    (= (distanceBetweenJunctions j481 j471 ) 1)


    (isConnected j472 j482)
    (isConnected j482 j472)
    (= (distanceBetweenJunctions j472 j482 ) 1)
    (= (distanceBetweenJunctions j482 j472 ) 1)


    (isConnected j473 j483)
    (isConnected j483 j473)
    (= (distanceBetweenJunctions j473 j483 ) 1)
    (= (distanceBetweenJunctions j483 j473 ) 1)


    (isConnected j474 j484)
    (isConnected j484 j474)
    (= (distanceBetweenJunctions j474 j484 ) 1)
    (= (distanceBetweenJunctions j484 j474 ) 1)


    (isConnected j475 j485)
    (isConnected j485 j475)
    (= (distanceBetweenJunctions j475 j485 ) 1)
    (= (distanceBetweenJunctions j485 j475 ) 1)


    (isConnected j476 j486)
    (isConnected j486 j476)
    (= (distanceBetweenJunctions j476 j486 ) 1)
    (= (distanceBetweenJunctions j486 j476 ) 1)


    (isConnected j477 j487)
    (isConnected j487 j477)
    (= (distanceBetweenJunctions j477 j487 ) 1)
    (= (distanceBetweenJunctions j487 j477 ) 1)


    (isConnected j478 j488)
    (isConnected j488 j478)
    (= (distanceBetweenJunctions j478 j488 ) 1)
    (= (distanceBetweenJunctions j488 j478 ) 1)


    (isConnected j479 j489)
    (isConnected j489 j479)
    (= (distanceBetweenJunctions j479 j489 ) 1)
    (= (distanceBetweenJunctions j489 j479 ) 1)





    (isConnected j480 j481)
    (isConnected j481 j480)
    (= (distanceBetweenJunctions j480 j481 ) 1)
    (= (distanceBetweenJunctions j481 j480 ) 1)


    (isConnected j481 j482)
    (isConnected j482 j481)
    (= (distanceBetweenJunctions j481 j482 ) 1)
    (= (distanceBetweenJunctions j482 j481 ) 1)


    (isConnected j482 j483)
    (isConnected j483 j482)
    (= (distanceBetweenJunctions j482 j483 ) 1)
    (= (distanceBetweenJunctions j483 j482 ) 1)


    (isConnected j483 j484)
    (isConnected j484 j483)
    (= (distanceBetweenJunctions j483 j484 ) 1)
    (= (distanceBetweenJunctions j484 j483 ) 1)


    (isConnected j484 j485)
    (isConnected j485 j484)
    (= (distanceBetweenJunctions j484 j485 ) 1)
    (= (distanceBetweenJunctions j485 j484 ) 1)


    (isConnected j485 j486)
    (isConnected j486 j485)
    (= (distanceBetweenJunctions j485 j486 ) 1)
    (= (distanceBetweenJunctions j486 j485 ) 1)


    (isConnected j486 j487)
    (isConnected j487 j486)
    (= (distanceBetweenJunctions j486 j487 ) 1)
    (= (distanceBetweenJunctions j487 j486 ) 1)


    (isConnected j487 j488)
    (isConnected j488 j487)
    (= (distanceBetweenJunctions j487 j488 ) 1)
    (= (distanceBetweenJunctions j488 j487 ) 1)


    (isConnected j488 j489)
    (isConnected j489 j488)
    (= (distanceBetweenJunctions j488 j489 ) 1)
    (= (distanceBetweenJunctions j489 j488 ) 1)


    (isConnected j489 j490)
    (isConnected j490 j489)
    (= (distanceBetweenJunctions j489 j490 ) 1)
    (= (distanceBetweenJunctions j490 j489 ) 1)


    (isConnected j480 j490)
    (isConnected j490 j480)
    (= (distanceBetweenJunctions j480 j490 ) 1)
    (= (distanceBetweenJunctions j490 j480 ) 1)


    (isConnected j481 j491)
    (isConnected j491 j481)
    (= (distanceBetweenJunctions j481 j491 ) 1)
    (= (distanceBetweenJunctions j491 j481 ) 1)


    (isConnected j482 j492)
    (isConnected j492 j482)
    (= (distanceBetweenJunctions j482 j492 ) 1)
    (= (distanceBetweenJunctions j492 j482 ) 1)


    (isConnected j483 j493)
    (isConnected j493 j483)
    (= (distanceBetweenJunctions j483 j493 ) 1)
    (= (distanceBetweenJunctions j493 j483 ) 1)


    (isConnected j484 j494)
    (isConnected j494 j484)
    (= (distanceBetweenJunctions j484 j494 ) 1)
    (= (distanceBetweenJunctions j494 j484 ) 1)


    (isConnected j485 j495)
    (isConnected j495 j485)
    (= (distanceBetweenJunctions j485 j495 ) 1)
    (= (distanceBetweenJunctions j495 j485 ) 1)


    (isConnected j486 j496)
    (isConnected j496 j486)
    (= (distanceBetweenJunctions j486 j496 ) 1)
    (= (distanceBetweenJunctions j496 j486 ) 1)


    (isConnected j487 j497)
    (isConnected j497 j487)
    (= (distanceBetweenJunctions j487 j497 ) 1)
    (= (distanceBetweenJunctions j497 j487 ) 1)


    (isConnected j488 j498)
    (isConnected j498 j488)
    (= (distanceBetweenJunctions j488 j498 ) 1)
    (= (distanceBetweenJunctions j498 j488 ) 1)


    (isConnected j489 j499)
    (isConnected j499 j489)
    (= (distanceBetweenJunctions j489 j499 ) 1)
    (= (distanceBetweenJunctions j499 j489 ) 1)





    (isConnected j490 j491)
    (isConnected j491 j490)
    (= (distanceBetweenJunctions j490 j491 ) 1)
    (= (distanceBetweenJunctions j491 j490 ) 1)


    (isConnected j491 j492)
    (isConnected j492 j491)
    (= (distanceBetweenJunctions j491 j492 ) 1)
    (= (distanceBetweenJunctions j492 j491 ) 1)


    (isConnected j492 j493)
    (isConnected j493 j492)
    (= (distanceBetweenJunctions j492 j493 ) 1)
    (= (distanceBetweenJunctions j493 j492 ) 1)


    (isConnected j493 j494)
    (isConnected j494 j493)
    (= (distanceBetweenJunctions j493 j494 ) 1)
    (= (distanceBetweenJunctions j494 j493 ) 1)


    (isConnected j494 j495)
    (isConnected j495 j494)
    (= (distanceBetweenJunctions j494 j495 ) 1)
    (= (distanceBetweenJunctions j495 j494 ) 1)


    (isConnected j495 j496)
    (isConnected j496 j495)
    (= (distanceBetweenJunctions j495 j496 ) 1)
    (= (distanceBetweenJunctions j496 j495 ) 1)


    (isConnected j496 j497)
    (isConnected j497 j496)
    (= (distanceBetweenJunctions j496 j497 ) 1)
    (= (distanceBetweenJunctions j497 j496 ) 1)


    (isConnected j497 j498)
    (isConnected j498 j497)
    (= (distanceBetweenJunctions j497 j498 ) 1)
    (= (distanceBetweenJunctions j498 j497 ) 1)


    (isConnected j498 j499)
    (isConnected j499 j498)
    (= (distanceBetweenJunctions j498 j499 ) 1)
    (= (distanceBetweenJunctions j499 j498 ) 1)


    (isConnected j499 j500)
    (isConnected j500 j499)
    (= (distanceBetweenJunctions j499 j500 ) 1)
    (= (distanceBetweenJunctions j500 j499 ) 1)


    (isConnected j490 j500)
    (isConnected j500 j490)
    (= (distanceBetweenJunctions j490 j500 ) 1)
    (= (distanceBetweenJunctions j500 j490 ) 1)


    

    (= (weaponDamage sword) 1)
    (atLocation sword j2)


    ;food
    (atLocation apple j5)
    (= (foodValue apple) 3)

    (atLocation banana j13)
    (= (foodValue banana) 5)

    (atLocation carrot j19)
    (= (foodValue carrot) 5)

    (atLocation k1 j500)

    (atLocation specialItem j0)
    (atLocation p j1)

    (atLocation g1 j8)
    (atLocation g2 j12)
    (atLocation g3 j21)
    
    
)

;the player must retrieve the key from j101, then take
;the item from j0 to j101
(:goal (and
    (atLocation p j500)
    (atLocation specialItem j500)
))

)
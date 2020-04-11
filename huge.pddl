; The aim of this problem is to get to the end point, j10
; This is a visual representation of the map of the maze (arrows denote one way):
;
;       j11
;         ^
;         |
;         |
; j1 --- j2 --- j3 --> j12
;                |      ^
;                |      |
;                |      |
;               j4 --- j5 --- j6 --- j7 --> j13
;                       |             |
;                       |             |
;                     j15 <-- j14 --- j8 --- j9 --- **j10**
;
;

(define (problem big_maze)
(:domain maze)
(:objects
j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 j11 j12 j13 j14 j15 j16 j17 j18 j19 j20 j21 j22 j23 j24 j25 j26 j27 j28 j29 j30
j31 j32 j33 j34 j35 j36 j37 j38 j39 j40 j41 j42 j43 j44 j45 j46 j47 j48 j49 j50 j51 j52 j53 j54 j55 j56 j57 j58 j59 j60
j61 j62 j63 j64 j65 j66 j67 j68 j69 j70 j71 j72 j73 j74 j75 j76 j77 j78 j79 j80 j81 j82 j83 j84 j85 j86 j87 j88 j89 j90
j91 j92 j93 j94 j95 j96 j97 j98 j99 j100 j101 j102 j103 j104 j105 j106 j107 j108 j109 j110 j111 j112 j113 j114 j115 j116 j117 j118 j119 j120
j121 j122 j123 j124 j125 j126 j127 j128 j129 j130 j131 j132 j133 j134 j135 j136 j137 j138 j139 j140 j141 j142 j143 j144 j145 j146 j147 j148 j149 j150
j151 j152 j153 j154 j155 j156 j157 j158 j159 j160 j161 j162 j163 j164 j165 j166 j167 j168 j169 j170 j171 j172 j173 j174 j175 j176 j177 j178 j179 j180
j181 j182 j183 j184 j185 j186 j187 j188 j189 j190 j191 j192 j193 j194 j195 j196 j197 j198 j199 j200 j201 j202 j203 j204 j205 j206 j207 j208 j209 j210
j211 j212 j213 j214 j215 j216 j217 j218 j219 j220 j221 j222 j223 j224 j225 j226 j227 j228 j229 j230 j231 j232 j233 j234 j235 j236 j237 j238 j239 j240
j241 j242 j243 j244 j245 j246 j247 j248 j249 j250 j251 j252 j253 j254 j255 j256 j257 j258 j259 j260 j261 j262 j263 j264 j265 j266 j267 j268 j269 j270
j271 j272 j273 j274 j275 j276 j277 j278 j279 j280 j281 j282 j283 j284 j285 j286 j287 j288 j289 j290 j291 j292 j293 j294 j295 j296 j297 j298 j299 j300
j301 j302 j303 j304 j305 j306 j307 j308 j309 j310 j311 j312 j313 j314 j315 j316 j317 j318 j319 j320 j321 j322 j323 j324 j325 j326 j327 j328 j329 j330
j331 j332 j333 j334 j335 j336 j337 j338 j339 j340 j341 j342 j343 j344 j345 j346 j347 j348 j349 j350 j351 j352 j353 j354 j355 j356 j357 j358 j359 j360
j361 j362 j363 j364 j365 j366 j367 j368 j369 j370 j371 j372 j373 j374 j375 j376 j377 j378 j379 j380 j381 j382 j383 j384 j385 j386 j387 j388 j389 j390
j391 j392 j393 j394 j395 j396 j397 j398 j399 j400 j401 j402 j403 j404 j405 j406 j407 j408 j409 j410 j411 j412 j413 j414 j415 j416 j417 j418 j419 j420
j421 j422 j423 j424 j425 j426 j427 j428 j429 j430 j431 j432 j433 j434 j435 j436 j437 j438 j439 j440 j441 j442 j443 j444 j445 j446 j447 j448 j449 j450
j451 j452 j453 j454 j455 j456 j457 j458 j459 j460 j461 j462 j463 j464 j465 j466 j467 j468 j469 j470 j471 j472 j473 j474 j475 j476 j477 j478 j479 j480
j481 j482 j483 j484 j485 j486 j487 j488 j489 j490 j491 j492 j493 j494 j495 j496 j497 j498 j499 j500 - Junction
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
(isConnected j200 j201)
(isConnected j201 j202)
(isConnected j202 j203)
(isConnected j203 j204)
(isConnected j204 j205)
(isConnected j205 j206)
(isConnected j206 j207)
(isConnected j207 j208)
(isConnected j208 j209)
(isConnected j209 j210)
(isConnected j210 j211)
(isConnected j211 j212)
(isConnected j212 j213)
(isConnected j213 j214)
(isConnected j214 j215)
(isConnected j215 j216)
(isConnected j216 j217)
(isConnected j217 j218)
(isConnected j218 j219)
(isConnected j219 j220)
(isConnected j220 j221)
(isConnected j221 j222)
(isConnected j222 j223)
(isConnected j223 j224)
(isConnected j224 j225)
(isConnected j225 j226)
(isConnected j226 j227)
(isConnected j227 j228)
(isConnected j228 j229)
(isConnected j229 j230)
(isConnected j230 j231)
(isConnected j231 j232)
(isConnected j232 j233)
(isConnected j233 j234)
(isConnected j234 j235)
(isConnected j235 j236)
(isConnected j236 j237)
(isConnected j237 j238)
(isConnected j238 j239)
(isConnected j239 j240)
(isConnected j240 j241)
(isConnected j241 j242)
(isConnected j242 j243)
(isConnected j243 j244)
(isConnected j244 j245)
(isConnected j245 j246)
(isConnected j246 j247)
(isConnected j247 j248)
(isConnected j248 j249)
(isConnected j249 j250)
(isConnected j250 j251)
(isConnected j251 j252)
(isConnected j252 j253)
(isConnected j253 j254)
(isConnected j254 j255)
(isConnected j255 j256)
(isConnected j256 j257)
(isConnected j257 j258)
(isConnected j258 j259)
(isConnected j259 j260)
(isConnected j260 j261)
(isConnected j261 j262)
(isConnected j262 j263)
(isConnected j263 j264)
(isConnected j264 j265)
(isConnected j265 j266)
(isConnected j266 j267)
(isConnected j267 j268)
(isConnected j268 j269)
(isConnected j269 j270)
(isConnected j270 j271)
(isConnected j271 j272)
(isConnected j272 j273)
(isConnected j273 j274)
(isConnected j274 j275)
(isConnected j275 j276)
(isConnected j276 j277)
(isConnected j277 j278)
(isConnected j278 j279)
(isConnected j279 j280)
(isConnected j280 j281)
(isConnected j281 j282)
(isConnected j282 j283)
(isConnected j283 j284)
(isConnected j284 j285)
(isConnected j285 j286)
(isConnected j286 j287)
(isConnected j287 j288)
(isConnected j288 j289)
(isConnected j289 j290)
(isConnected j290 j291)
(isConnected j291 j292)
(isConnected j292 j293)
(isConnected j293 j294)
(isConnected j294 j295)
(isConnected j295 j296)
(isConnected j296 j297)
(isConnected j297 j298)
(isConnected j298 j299)
(isConnected j299 j300)
(isConnected j300 j301)
(isConnected j301 j302)
(isConnected j302 j303)
(isConnected j303 j304)
(isConnected j304 j305)
(isConnected j305 j306)
(isConnected j306 j307)
(isConnected j307 j308)
(isConnected j308 j309)
(isConnected j309 j310)
(isConnected j310 j311)
(isConnected j311 j312)
(isConnected j312 j313)
(isConnected j313 j314)
(isConnected j314 j315)
(isConnected j315 j316)
(isConnected j316 j317)
(isConnected j317 j318)
(isConnected j318 j319)
(isConnected j319 j320)
(isConnected j320 j321)
(isConnected j321 j322)
(isConnected j322 j323)
(isConnected j323 j324)
(isConnected j324 j325)
(isConnected j325 j326)
(isConnected j326 j327)
(isConnected j327 j328)
(isConnected j328 j329)
(isConnected j329 j330)
(isConnected j330 j331)
(isConnected j331 j332)
(isConnected j332 j333)
(isConnected j333 j334)
(isConnected j334 j335)
(isConnected j335 j336)
(isConnected j336 j337)
(isConnected j337 j338)
(isConnected j338 j339)
(isConnected j339 j340)
(isConnected j340 j341)
(isConnected j341 j342)
(isConnected j342 j343)
(isConnected j343 j344)
(isConnected j344 j345)
(isConnected j345 j346)
(isConnected j346 j347)
(isConnected j347 j348)
(isConnected j348 j349)
(isConnected j349 j350)
(isConnected j350 j351)
(isConnected j351 j352)
(isConnected j352 j353)
(isConnected j353 j354)
(isConnected j354 j355)
(isConnected j355 j356)
(isConnected j356 j357)
(isConnected j357 j358)
(isConnected j358 j359)
(isConnected j359 j360)
(isConnected j360 j361)
(isConnected j361 j362)
(isConnected j362 j363)
(isConnected j363 j364)
(isConnected j364 j365)
(isConnected j365 j366)
(isConnected j366 j367)
(isConnected j367 j368)
(isConnected j368 j369)
(isConnected j369 j370)
(isConnected j370 j371)
(isConnected j371 j372)
(isConnected j372 j373)
(isConnected j373 j374)
(isConnected j374 j375)
(isConnected j375 j376)
(isConnected j376 j377)
(isConnected j377 j378)
(isConnected j378 j379)
(isConnected j379 j380)
(isConnected j380 j381)
(isConnected j381 j382)
(isConnected j382 j383)
(isConnected j383 j384)
(isConnected j384 j385)
(isConnected j385 j386)
(isConnected j386 j387)
(isConnected j387 j388)
(isConnected j388 j389)
(isConnected j389 j390)
(isConnected j390 j391)
(isConnected j391 j392)
(isConnected j392 j393)
(isConnected j393 j394)
(isConnected j394 j395)
(isConnected j395 j396)
(isConnected j396 j397)
(isConnected j397 j398)
(isConnected j398 j399)
(isConnected j399 j400)
(isConnected j400 j401)
(isConnected j401 j402)
(isConnected j402 j403)
(isConnected j403 j404)
(isConnected j404 j405)
(isConnected j405 j406)
(isConnected j406 j407)
(isConnected j407 j408)
(isConnected j408 j409)
(isConnected j409 j410)
(isConnected j410 j411)
(isConnected j411 j412)
(isConnected j412 j413)
(isConnected j413 j414)
(isConnected j414 j415)
(isConnected j415 j416)
(isConnected j416 j417)
(isConnected j417 j418)
(isConnected j418 j419)
(isConnected j419 j420)
(isConnected j420 j421)
(isConnected j421 j422)
(isConnected j422 j423)
(isConnected j423 j424)
(isConnected j424 j425)
(isConnected j425 j426)
(isConnected j426 j427)
(isConnected j427 j428)
(isConnected j428 j429)
(isConnected j429 j430)
(isConnected j430 j431)
(isConnected j431 j432)
(isConnected j432 j433)
(isConnected j433 j434)
(isConnected j434 j435)
(isConnected j435 j436)
(isConnected j436 j437)
(isConnected j437 j438)
(isConnected j438 j439)
(isConnected j439 j440)
(isConnected j440 j441)
(isConnected j441 j442)
(isConnected j442 j443)
(isConnected j443 j444)
(isConnected j444 j445)
(isConnected j445 j446)
(isConnected j446 j447)
(isConnected j447 j448)
(isConnected j448 j449)
(isConnected j449 j450)
(isConnected j450 j451)
(isConnected j451 j452)
(isConnected j452 j453)
(isConnected j453 j454)
(isConnected j454 j455)
(isConnected j455 j456)
(isConnected j456 j457)
(isConnected j457 j458)
(isConnected j458 j459)
(isConnected j459 j460)
(isConnected j460 j461)
(isConnected j461 j462)
(isConnected j462 j463)
(isConnected j463 j464)
(isConnected j464 j465)
(isConnected j465 j466)
(isConnected j466 j467)
(isConnected j467 j468)
(isConnected j468 j469)
(isConnected j469 j470)
(isConnected j470 j471)
(isConnected j471 j472)
(isConnected j472 j473)
(isConnected j473 j474)
(isConnected j474 j475)
(isConnected j475 j476)
(isConnected j476 j477)
(isConnected j477 j478)
(isConnected j478 j479)
(isConnected j479 j480)
(isConnected j480 j481)
(isConnected j481 j482)
(isConnected j482 j483)
(isConnected j483 j484)
(isConnected j484 j485)
(isConnected j485 j486)
(isConnected j486 j487)
(isConnected j487 j488)
(isConnected j488 j489)
(isConnected j489 j490)
(isConnected j490 j491)
(isConnected j491 j492)
(isConnected j492 j493)
(isConnected j493 j494)
(isConnected j494 j495)
(isConnected j495 j496)
(isConnected j496 j497)
(isConnected j497 j498)
(isConnected j498 j499)
(isConnected j499 j500)
;Reverse Direction
;Distances
(= (distanceBetweenJunctions j1 j2) 2)
(= (distanceBetweenJunctions j2 j3) 2)
(= (distanceBetweenJunctions j3 j4) 2)
(= (distanceBetweenJunctions j4 j5) 2)
(= (distanceBetweenJunctions j5 j6) 2)
(= (distanceBetweenJunctions j6 j7) 2)
(= (distanceBetweenJunctions j7 j8) 2)
(= (distanceBetweenJunctions j8 j9) 2)
(= (distanceBetweenJunctions j9 j10) 2)
(= (distanceBetweenJunctions j10 j11) 2)
(= (distanceBetweenJunctions j11 j12) 2)
(= (distanceBetweenJunctions j12 j13) 2)
(= (distanceBetweenJunctions j13 j14) 2)
(= (distanceBetweenJunctions j14 j15) 2)
(= (distanceBetweenJunctions j15 j16) 2)
(= (distanceBetweenJunctions j16 j17) 2)
(= (distanceBetweenJunctions j17 j18) 2)
(= (distanceBetweenJunctions j18 j19) 2)
(= (distanceBetweenJunctions j19 j20) 2)
(= (distanceBetweenJunctions j20 j21) 2)
(= (distanceBetweenJunctions j21 j22) 2)
(= (distanceBetweenJunctions j22 j23) 2)
(= (distanceBetweenJunctions j23 j24) 2)
(= (distanceBetweenJunctions j24 j25) 2)
(= (distanceBetweenJunctions j25 j26) 2)
(= (distanceBetweenJunctions j26 j27) 2)
(= (distanceBetweenJunctions j27 j28) 2)
(= (distanceBetweenJunctions j28 j29) 2)
(= (distanceBetweenJunctions j29 j30) 2)
(= (distanceBetweenJunctions j30 j31) 2)
(= (distanceBetweenJunctions j31 j32) 2)
(= (distanceBetweenJunctions j32 j33) 2)
(= (distanceBetweenJunctions j33 j34) 2)
(= (distanceBetweenJunctions j34 j35) 2)
(= (distanceBetweenJunctions j35 j36) 2)
(= (distanceBetweenJunctions j36 j37) 2)
(= (distanceBetweenJunctions j37 j38) 2)
(= (distanceBetweenJunctions j38 j39) 2)
(= (distanceBetweenJunctions j39 j40) 2)
(= (distanceBetweenJunctions j40 j41) 2)
(= (distanceBetweenJunctions j41 j42) 2)
(= (distanceBetweenJunctions j42 j43) 2)
(= (distanceBetweenJunctions j43 j44) 2)
(= (distanceBetweenJunctions j44 j45) 2)
(= (distanceBetweenJunctions j45 j46) 2)
(= (distanceBetweenJunctions j46 j47) 2)
(= (distanceBetweenJunctions j47 j48) 2)
(= (distanceBetweenJunctions j48 j49) 2)
(= (distanceBetweenJunctions j49 j50) 2)
(= (distanceBetweenJunctions j50 j51) 2)
(= (distanceBetweenJunctions j51 j52) 2)
(= (distanceBetweenJunctions j52 j53) 2)
(= (distanceBetweenJunctions j53 j54) 2)
(= (distanceBetweenJunctions j54 j55) 2)
(= (distanceBetweenJunctions j55 j56) 2)
(= (distanceBetweenJunctions j56 j57) 2)
(= (distanceBetweenJunctions j57 j58) 2)
(= (distanceBetweenJunctions j58 j59) 2)
(= (distanceBetweenJunctions j59 j60) 2)
(= (distanceBetweenJunctions j60 j61) 2)
(= (distanceBetweenJunctions j61 j62) 2)
(= (distanceBetweenJunctions j62 j63) 2)
(= (distanceBetweenJunctions j63 j64) 2)
(= (distanceBetweenJunctions j64 j65) 2)
(= (distanceBetweenJunctions j65 j66) 2)
(= (distanceBetweenJunctions j66 j67) 2)
(= (distanceBetweenJunctions j67 j68) 2)
(= (distanceBetweenJunctions j68 j69) 2)
(= (distanceBetweenJunctions j69 j70) 2)
(= (distanceBetweenJunctions j70 j71) 2)
(= (distanceBetweenJunctions j71 j72) 2)
(= (distanceBetweenJunctions j72 j73) 2)
(= (distanceBetweenJunctions j73 j74) 2)
(= (distanceBetweenJunctions j74 j75) 2)
(= (distanceBetweenJunctions j75 j76) 2)
(= (distanceBetweenJunctions j76 j77) 2)
(= (distanceBetweenJunctions j77 j78) 2)
(= (distanceBetweenJunctions j78 j79) 2)
(= (distanceBetweenJunctions j79 j80) 2)
(= (distanceBetweenJunctions j80 j81) 2)
(= (distanceBetweenJunctions j81 j82) 2)
(= (distanceBetweenJunctions j82 j83) 2)
(= (distanceBetweenJunctions j83 j84) 2)
(= (distanceBetweenJunctions j84 j85) 2)
(= (distanceBetweenJunctions j85 j86) 2)
(= (distanceBetweenJunctions j86 j87) 2)
(= (distanceBetweenJunctions j87 j88) 2)
(= (distanceBetweenJunctions j88 j89) 2)
(= (distanceBetweenJunctions j89 j90) 2)
(= (distanceBetweenJunctions j90 j91) 2)
(= (distanceBetweenJunctions j91 j92) 2)
(= (distanceBetweenJunctions j92 j93) 2)
(= (distanceBetweenJunctions j93 j94) 2)
(= (distanceBetweenJunctions j94 j95) 2)
(= (distanceBetweenJunctions j95 j96) 2)
(= (distanceBetweenJunctions j96 j97) 2)
(= (distanceBetweenJunctions j97 j98) 2)
(= (distanceBetweenJunctions j98 j99) 2)
(= (distanceBetweenJunctions j99 j100) 2)
(= (distanceBetweenJunctions j100 j101) 2)
(= (distanceBetweenJunctions j101 j102) 2)
(= (distanceBetweenJunctions j102 j103) 2)
(= (distanceBetweenJunctions j103 j104) 2)
(= (distanceBetweenJunctions j104 j105) 2)
(= (distanceBetweenJunctions j105 j106) 2)
(= (distanceBetweenJunctions j106 j107) 2)
(= (distanceBetweenJunctions j107 j108) 2)
(= (distanceBetweenJunctions j108 j109) 2)
(= (distanceBetweenJunctions j109 j110) 2)
(= (distanceBetweenJunctions j110 j111) 2)
(= (distanceBetweenJunctions j111 j112) 2)
(= (distanceBetweenJunctions j112 j113) 2)
(= (distanceBetweenJunctions j113 j114) 2)
(= (distanceBetweenJunctions j114 j115) 2)
(= (distanceBetweenJunctions j115 j116) 2)
(= (distanceBetweenJunctions j116 j117) 2)
(= (distanceBetweenJunctions j117 j118) 2)
(= (distanceBetweenJunctions j118 j119) 2)
(= (distanceBetweenJunctions j119 j120) 2)
(= (distanceBetweenJunctions j120 j121) 2)
(= (distanceBetweenJunctions j121 j122) 2)
(= (distanceBetweenJunctions j122 j123) 2)
(= (distanceBetweenJunctions j123 j124) 2)
(= (distanceBetweenJunctions j124 j125) 2)
(= (distanceBetweenJunctions j125 j126) 2)
(= (distanceBetweenJunctions j126 j127) 2)
(= (distanceBetweenJunctions j127 j128) 2)
(= (distanceBetweenJunctions j128 j129) 2)
(= (distanceBetweenJunctions j129 j130) 2)
(= (distanceBetweenJunctions j130 j131) 2)
(= (distanceBetweenJunctions j131 j132) 2)
(= (distanceBetweenJunctions j132 j133) 2)
(= (distanceBetweenJunctions j133 j134) 2)
(= (distanceBetweenJunctions j134 j135) 2)
(= (distanceBetweenJunctions j135 j136) 2)
(= (distanceBetweenJunctions j136 j137) 2)
(= (distanceBetweenJunctions j137 j138) 2)
(= (distanceBetweenJunctions j138 j139) 2)
(= (distanceBetweenJunctions j139 j140) 2)
(= (distanceBetweenJunctions j140 j141) 2)
(= (distanceBetweenJunctions j141 j142) 2)
(= (distanceBetweenJunctions j142 j143) 2)
(= (distanceBetweenJunctions j143 j144) 2)
(= (distanceBetweenJunctions j144 j145) 2)
(= (distanceBetweenJunctions j145 j146) 2)
(= (distanceBetweenJunctions j146 j147) 2)
(= (distanceBetweenJunctions j147 j148) 2)
(= (distanceBetweenJunctions j148 j149) 2)
(= (distanceBetweenJunctions j149 j150) 2)
(= (distanceBetweenJunctions j150 j151) 2)
(= (distanceBetweenJunctions j151 j152) 2)
(= (distanceBetweenJunctions j152 j153) 2)
(= (distanceBetweenJunctions j153 j154) 2)
(= (distanceBetweenJunctions j154 j155) 2)
(= (distanceBetweenJunctions j155 j156) 2)
(= (distanceBetweenJunctions j156 j157) 2)
(= (distanceBetweenJunctions j157 j158) 2)
(= (distanceBetweenJunctions j158 j159) 2)
(= (distanceBetweenJunctions j159 j160) 2)
(= (distanceBetweenJunctions j160 j161) 2)
(= (distanceBetweenJunctions j161 j162) 2)
(= (distanceBetweenJunctions j162 j163) 2)
(= (distanceBetweenJunctions j163 j164) 2)
(= (distanceBetweenJunctions j164 j165) 2)
(= (distanceBetweenJunctions j165 j166) 2)
(= (distanceBetweenJunctions j166 j167) 2)
(= (distanceBetweenJunctions j167 j168) 2)
(= (distanceBetweenJunctions j168 j169) 2)
(= (distanceBetweenJunctions j169 j170) 2)
(= (distanceBetweenJunctions j170 j171) 2)
(= (distanceBetweenJunctions j171 j172) 2)
(= (distanceBetweenJunctions j172 j173) 2)
(= (distanceBetweenJunctions j173 j174) 2)
(= (distanceBetweenJunctions j174 j175) 2)
(= (distanceBetweenJunctions j175 j176) 2)
(= (distanceBetweenJunctions j176 j177) 2)
(= (distanceBetweenJunctions j177 j178) 2)
(= (distanceBetweenJunctions j178 j179) 2)
(= (distanceBetweenJunctions j179 j180) 2)
(= (distanceBetweenJunctions j180 j181) 2)
(= (distanceBetweenJunctions j181 j182) 2)
(= (distanceBetweenJunctions j182 j183) 2)
(= (distanceBetweenJunctions j183 j184) 2)
(= (distanceBetweenJunctions j184 j185) 2)
(= (distanceBetweenJunctions j185 j186) 2)
(= (distanceBetweenJunctions j186 j187) 2)
(= (distanceBetweenJunctions j187 j188) 2)
(= (distanceBetweenJunctions j188 j189) 2)
(= (distanceBetweenJunctions j189 j190) 2)
(= (distanceBetweenJunctions j190 j191) 2)
(= (distanceBetweenJunctions j191 j192) 2)
(= (distanceBetweenJunctions j192 j193) 2)
(= (distanceBetweenJunctions j193 j194) 2)
(= (distanceBetweenJunctions j194 j195) 2)
(= (distanceBetweenJunctions j195 j196) 2)
(= (distanceBetweenJunctions j196 j197) 2)
(= (distanceBetweenJunctions j197 j198) 2)
(= (distanceBetweenJunctions j198 j199) 2)
(= (distanceBetweenJunctions j199 j200) 2)
(= (distanceBetweenJunctions j200 j201) 2)
(= (distanceBetweenJunctions j201 j202) 2)
(= (distanceBetweenJunctions j202 j203) 2)
(= (distanceBetweenJunctions j203 j204) 2)
(= (distanceBetweenJunctions j204 j205) 2)
(= (distanceBetweenJunctions j205 j206) 2)
(= (distanceBetweenJunctions j206 j207) 2)
(= (distanceBetweenJunctions j207 j208) 2)
(= (distanceBetweenJunctions j208 j209) 2)
(= (distanceBetweenJunctions j209 j210) 2)
(= (distanceBetweenJunctions j210 j211) 2)
(= (distanceBetweenJunctions j211 j212) 2)
(= (distanceBetweenJunctions j212 j213) 2)
(= (distanceBetweenJunctions j213 j214) 2)
(= (distanceBetweenJunctions j214 j215) 2)
(= (distanceBetweenJunctions j215 j216) 2)
(= (distanceBetweenJunctions j216 j217) 2)
(= (distanceBetweenJunctions j217 j218) 2)
(= (distanceBetweenJunctions j218 j219) 2)
(= (distanceBetweenJunctions j219 j220) 2)
(= (distanceBetweenJunctions j220 j221) 2)
(= (distanceBetweenJunctions j221 j222) 2)
(= (distanceBetweenJunctions j222 j223) 2)
(= (distanceBetweenJunctions j223 j224) 2)
(= (distanceBetweenJunctions j224 j225) 2)
(= (distanceBetweenJunctions j225 j226) 2)
(= (distanceBetweenJunctions j226 j227) 2)
(= (distanceBetweenJunctions j227 j228) 2)
(= (distanceBetweenJunctions j228 j229) 2)
(= (distanceBetweenJunctions j229 j230) 2)
(= (distanceBetweenJunctions j230 j231) 2)
(= (distanceBetweenJunctions j231 j232) 2)
(= (distanceBetweenJunctions j232 j233) 2)
(= (distanceBetweenJunctions j233 j234) 2)
(= (distanceBetweenJunctions j234 j235) 2)
(= (distanceBetweenJunctions j235 j236) 2)
(= (distanceBetweenJunctions j236 j237) 2)
(= (distanceBetweenJunctions j237 j238) 2)
(= (distanceBetweenJunctions j238 j239) 2)
(= (distanceBetweenJunctions j239 j240) 2)
(= (distanceBetweenJunctions j240 j241) 2)
(= (distanceBetweenJunctions j241 j242) 2)
(= (distanceBetweenJunctions j242 j243) 2)
(= (distanceBetweenJunctions j243 j244) 2)
(= (distanceBetweenJunctions j244 j245) 2)
(= (distanceBetweenJunctions j245 j246) 2)
(= (distanceBetweenJunctions j246 j247) 2)
(= (distanceBetweenJunctions j247 j248) 2)
(= (distanceBetweenJunctions j248 j249) 2)
(= (distanceBetweenJunctions j249 j250) 2)
(= (distanceBetweenJunctions j250 j251) 2)
(= (distanceBetweenJunctions j251 j252) 2)
(= (distanceBetweenJunctions j252 j253) 2)
(= (distanceBetweenJunctions j253 j254) 2)
(= (distanceBetweenJunctions j254 j255) 2)
(= (distanceBetweenJunctions j255 j256) 2)
(= (distanceBetweenJunctions j256 j257) 2)
(= (distanceBetweenJunctions j257 j258) 2)
(= (distanceBetweenJunctions j258 j259) 2)
(= (distanceBetweenJunctions j259 j260) 2)
(= (distanceBetweenJunctions j260 j261) 2)
(= (distanceBetweenJunctions j261 j262) 2)
(= (distanceBetweenJunctions j262 j263) 2)
(= (distanceBetweenJunctions j263 j264) 2)
(= (distanceBetweenJunctions j264 j265) 2)
(= (distanceBetweenJunctions j265 j266) 2)
(= (distanceBetweenJunctions j266 j267) 2)
(= (distanceBetweenJunctions j267 j268) 2)
(= (distanceBetweenJunctions j268 j269) 2)
(= (distanceBetweenJunctions j269 j270) 2)
(= (distanceBetweenJunctions j270 j271) 2)
(= (distanceBetweenJunctions j271 j272) 2)
(= (distanceBetweenJunctions j272 j273) 2)
(= (distanceBetweenJunctions j273 j274) 2)
(= (distanceBetweenJunctions j274 j275) 2)
(= (distanceBetweenJunctions j275 j276) 2)
(= (distanceBetweenJunctions j276 j277) 2)
(= (distanceBetweenJunctions j277 j278) 2)
(= (distanceBetweenJunctions j278 j279) 2)
(= (distanceBetweenJunctions j279 j280) 2)
(= (distanceBetweenJunctions j280 j281) 2)
(= (distanceBetweenJunctions j281 j282) 2)
(= (distanceBetweenJunctions j282 j283) 2)
(= (distanceBetweenJunctions j283 j284) 2)
(= (distanceBetweenJunctions j284 j285) 2)
(= (distanceBetweenJunctions j285 j286) 2)
(= (distanceBetweenJunctions j286 j287) 2)
(= (distanceBetweenJunctions j287 j288) 2)
(= (distanceBetweenJunctions j288 j289) 2)
(= (distanceBetweenJunctions j289 j290) 2)
(= (distanceBetweenJunctions j290 j291) 2)
(= (distanceBetweenJunctions j291 j292) 2)
(= (distanceBetweenJunctions j292 j293) 2)
(= (distanceBetweenJunctions j293 j294) 2)
(= (distanceBetweenJunctions j294 j295) 2)
(= (distanceBetweenJunctions j295 j296) 2)
(= (distanceBetweenJunctions j296 j297) 2)
(= (distanceBetweenJunctions j297 j298) 2)
(= (distanceBetweenJunctions j298 j299) 2)
(= (distanceBetweenJunctions j299 j300) 2)
(= (distanceBetweenJunctions j300 j301) 2)
(= (distanceBetweenJunctions j301 j302) 2)
(= (distanceBetweenJunctions j302 j303) 2)
(= (distanceBetweenJunctions j303 j304) 2)
(= (distanceBetweenJunctions j304 j305) 2)
(= (distanceBetweenJunctions j305 j306) 2)
(= (distanceBetweenJunctions j306 j307) 2)
(= (distanceBetweenJunctions j307 j308) 2)
(= (distanceBetweenJunctions j308 j309) 2)
(= (distanceBetweenJunctions j309 j310) 2)
(= (distanceBetweenJunctions j310 j311) 2)
(= (distanceBetweenJunctions j311 j312) 2)
(= (distanceBetweenJunctions j312 j313) 2)
(= (distanceBetweenJunctions j313 j314) 2)
(= (distanceBetweenJunctions j314 j315) 2)
(= (distanceBetweenJunctions j315 j316) 2)
(= (distanceBetweenJunctions j316 j317) 2)
(= (distanceBetweenJunctions j317 j318) 2)
(= (distanceBetweenJunctions j318 j319) 2)
(= (distanceBetweenJunctions j319 j320) 2)
(= (distanceBetweenJunctions j320 j321) 2)
(= (distanceBetweenJunctions j321 j322) 2)
(= (distanceBetweenJunctions j322 j323) 2)
(= (distanceBetweenJunctions j323 j324) 2)
(= (distanceBetweenJunctions j324 j325) 2)
(= (distanceBetweenJunctions j325 j326) 2)
(= (distanceBetweenJunctions j326 j327) 2)
(= (distanceBetweenJunctions j327 j328) 2)
(= (distanceBetweenJunctions j328 j329) 2)
(= (distanceBetweenJunctions j329 j330) 2)
(= (distanceBetweenJunctions j330 j331) 2)
(= (distanceBetweenJunctions j331 j332) 2)
(= (distanceBetweenJunctions j332 j333) 2)
(= (distanceBetweenJunctions j333 j334) 2)
(= (distanceBetweenJunctions j334 j335) 2)
(= (distanceBetweenJunctions j335 j336) 2)
(= (distanceBetweenJunctions j336 j337) 2)
(= (distanceBetweenJunctions j337 j338) 2)
(= (distanceBetweenJunctions j338 j339) 2)
(= (distanceBetweenJunctions j339 j340) 2)
(= (distanceBetweenJunctions j340 j341) 2)
(= (distanceBetweenJunctions j341 j342) 2)
(= (distanceBetweenJunctions j342 j343) 2)
(= (distanceBetweenJunctions j343 j344) 2)
(= (distanceBetweenJunctions j344 j345) 2)
(= (distanceBetweenJunctions j345 j346) 2)
(= (distanceBetweenJunctions j346 j347) 2)
(= (distanceBetweenJunctions j347 j348) 2)
(= (distanceBetweenJunctions j348 j349) 2)
(= (distanceBetweenJunctions j349 j350) 2)
(= (distanceBetweenJunctions j350 j351) 2)
(= (distanceBetweenJunctions j351 j352) 2)
(= (distanceBetweenJunctions j352 j353) 2)
(= (distanceBetweenJunctions j353 j354) 2)
(= (distanceBetweenJunctions j354 j355) 2)
(= (distanceBetweenJunctions j355 j356) 2)
(= (distanceBetweenJunctions j356 j357) 2)
(= (distanceBetweenJunctions j357 j358) 2)
(= (distanceBetweenJunctions j358 j359) 2)
(= (distanceBetweenJunctions j359 j360) 2)
(= (distanceBetweenJunctions j360 j361) 2)
(= (distanceBetweenJunctions j361 j362) 2)
(= (distanceBetweenJunctions j362 j363) 2)
(= (distanceBetweenJunctions j363 j364) 2)
(= (distanceBetweenJunctions j364 j365) 2)
(= (distanceBetweenJunctions j365 j366) 2)
(= (distanceBetweenJunctions j366 j367) 2)
(= (distanceBetweenJunctions j367 j368) 2)
(= (distanceBetweenJunctions j368 j369) 2)
(= (distanceBetweenJunctions j369 j370) 2)
(= (distanceBetweenJunctions j370 j371) 2)
(= (distanceBetweenJunctions j371 j372) 2)
(= (distanceBetweenJunctions j372 j373) 2)
(= (distanceBetweenJunctions j373 j374) 2)
(= (distanceBetweenJunctions j374 j375) 2)
(= (distanceBetweenJunctions j375 j376) 2)
(= (distanceBetweenJunctions j376 j377) 2)
(= (distanceBetweenJunctions j377 j378) 2)
(= (distanceBetweenJunctions j378 j379) 2)
(= (distanceBetweenJunctions j379 j380) 2)
(= (distanceBetweenJunctions j380 j381) 2)
(= (distanceBetweenJunctions j381 j382) 2)
(= (distanceBetweenJunctions j382 j383) 2)
(= (distanceBetweenJunctions j383 j384) 2)
(= (distanceBetweenJunctions j384 j385) 2)
(= (distanceBetweenJunctions j385 j386) 2)
(= (distanceBetweenJunctions j386 j387) 2)
(= (distanceBetweenJunctions j387 j388) 2)
(= (distanceBetweenJunctions j388 j389) 2)
(= (distanceBetweenJunctions j389 j390) 2)
(= (distanceBetweenJunctions j390 j391) 2)
(= (distanceBetweenJunctions j391 j392) 2)
(= (distanceBetweenJunctions j392 j393) 2)
(= (distanceBetweenJunctions j393 j394) 2)
(= (distanceBetweenJunctions j394 j395) 2)
(= (distanceBetweenJunctions j395 j396) 2)
(= (distanceBetweenJunctions j396 j397) 2)
(= (distanceBetweenJunctions j397 j398) 2)
(= (distanceBetweenJunctions j398 j399) 2)
(= (distanceBetweenJunctions j399 j400) 2)
(= (distanceBetweenJunctions j400 j401) 2)
(= (distanceBetweenJunctions j401 j402) 2)
(= (distanceBetweenJunctions j402 j403) 2)
(= (distanceBetweenJunctions j403 j404) 2)
(= (distanceBetweenJunctions j404 j405) 2)
(= (distanceBetweenJunctions j405 j406) 2)
(= (distanceBetweenJunctions j406 j407) 2)
(= (distanceBetweenJunctions j407 j408) 2)
(= (distanceBetweenJunctions j408 j409) 2)
(= (distanceBetweenJunctions j409 j410) 2)
(= (distanceBetweenJunctions j410 j411) 2)
(= (distanceBetweenJunctions j411 j412) 2)
(= (distanceBetweenJunctions j412 j413) 2)
(= (distanceBetweenJunctions j413 j414) 2)
(= (distanceBetweenJunctions j414 j415) 2)
(= (distanceBetweenJunctions j415 j416) 2)
(= (distanceBetweenJunctions j416 j417) 2)
(= (distanceBetweenJunctions j417 j418) 2)
(= (distanceBetweenJunctions j418 j419) 2)
(= (distanceBetweenJunctions j419 j420) 2)
(= (distanceBetweenJunctions j420 j421) 2)
(= (distanceBetweenJunctions j421 j422) 2)
(= (distanceBetweenJunctions j422 j423) 2)
(= (distanceBetweenJunctions j423 j424) 2)
(= (distanceBetweenJunctions j424 j425) 2)
(= (distanceBetweenJunctions j425 j426) 2)
(= (distanceBetweenJunctions j426 j427) 2)
(= (distanceBetweenJunctions j427 j428) 2)
(= (distanceBetweenJunctions j428 j429) 2)
(= (distanceBetweenJunctions j429 j430) 2)
(= (distanceBetweenJunctions j430 j431) 2)
(= (distanceBetweenJunctions j431 j432) 2)
(= (distanceBetweenJunctions j432 j433) 2)
(= (distanceBetweenJunctions j433 j434) 2)
(= (distanceBetweenJunctions j434 j435) 2)
(= (distanceBetweenJunctions j435 j436) 2)
(= (distanceBetweenJunctions j436 j437) 2)
(= (distanceBetweenJunctions j437 j438) 2)
(= (distanceBetweenJunctions j438 j439) 2)
(= (distanceBetweenJunctions j439 j440) 2)
(= (distanceBetweenJunctions j440 j441) 2)
(= (distanceBetweenJunctions j441 j442) 2)
(= (distanceBetweenJunctions j442 j443) 2)
(= (distanceBetweenJunctions j443 j444) 2)
(= (distanceBetweenJunctions j444 j445) 2)
(= (distanceBetweenJunctions j445 j446) 2)
(= (distanceBetweenJunctions j446 j447) 2)
(= (distanceBetweenJunctions j447 j448) 2)
(= (distanceBetweenJunctions j448 j449) 2)
(= (distanceBetweenJunctions j449 j450) 2)
(= (distanceBetweenJunctions j450 j451) 2)
(= (distanceBetweenJunctions j451 j452) 2)
(= (distanceBetweenJunctions j452 j453) 2)
(= (distanceBetweenJunctions j453 j454) 2)
(= (distanceBetweenJunctions j454 j455) 2)
(= (distanceBetweenJunctions j455 j456) 2)
(= (distanceBetweenJunctions j456 j457) 2)
(= (distanceBetweenJunctions j457 j458) 2)
(= (distanceBetweenJunctions j458 j459) 2)
(= (distanceBetweenJunctions j459 j460) 2)
(= (distanceBetweenJunctions j460 j461) 2)
(= (distanceBetweenJunctions j461 j462) 2)
(= (distanceBetweenJunctions j462 j463) 2)
(= (distanceBetweenJunctions j463 j464) 2)
(= (distanceBetweenJunctions j464 j465) 2)
(= (distanceBetweenJunctions j465 j466) 2)
(= (distanceBetweenJunctions j466 j467) 2)
(= (distanceBetweenJunctions j467 j468) 2)
(= (distanceBetweenJunctions j468 j469) 2)
(= (distanceBetweenJunctions j469 j470) 2)
(= (distanceBetweenJunctions j470 j471) 2)
(= (distanceBetweenJunctions j471 j472) 2)
(= (distanceBetweenJunctions j472 j473) 2)
(= (distanceBetweenJunctions j473 j474) 2)
(= (distanceBetweenJunctions j474 j475) 2)
(= (distanceBetweenJunctions j475 j476) 2)
(= (distanceBetweenJunctions j476 j477) 2)
(= (distanceBetweenJunctions j477 j478) 2)
(= (distanceBetweenJunctions j478 j479) 2)
(= (distanceBetweenJunctions j479 j480) 2)
(= (distanceBetweenJunctions j480 j481) 2)
(= (distanceBetweenJunctions j481 j482) 2)
(= (distanceBetweenJunctions j482 j483) 2)
(= (distanceBetweenJunctions j483 j484) 2)
(= (distanceBetweenJunctions j484 j485) 2)
(= (distanceBetweenJunctions j485 j486) 2)
(= (distanceBetweenJunctions j486 j487) 2)
(= (distanceBetweenJunctions j487 j488) 2)
(= (distanceBetweenJunctions j488 j489) 2)
(= (distanceBetweenJunctions j489 j490) 2)
(= (distanceBetweenJunctions j490 j491) 2)
(= (distanceBetweenJunctions j491 j492) 2)
(= (distanceBetweenJunctions j492 j493) 2)
(= (distanceBetweenJunctions j493 j494) 2)
(= (distanceBetweenJunctions j494 j495) 2)
(= (distanceBetweenJunctions j495 j496) 2)
(= (distanceBetweenJunctions j496 j497) 2)
(= (distanceBetweenJunctions j497 j498) 2)
(= (distanceBetweenJunctions j498 j499) 2)
(= (distanceBetweenJunctions j499 j500) 2)




    ;Player
    (=(playerHealth) 1000)
    (atLocation p j1)
    (on p f) ;player on the floor initially so they can move between the junctions
)

(:goal  (atLocation p j300))

)

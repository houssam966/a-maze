
(define (domain maze)

    (:requirements :typing :fluents :equality :negative-preconditions :conditional-effects)

    (:types

        Locatable Junction Inventory - object

        Platform Living Item - Locatable

        Box Floor - Platform

        Player Monster - Living

        Key Weapon Shield Food Gold - Item

        Sword Knife - Weapon
    )

    (:predicates
        ;localisation...
        (atLocation ?x - Locatable ?j - Junction)
        (ateBanana)
        ;maze
        (isConnected ?j1 ?j2 - Junction)
        (isLocked ?j1 ?j2 - Junction);if the route is connected, but needs a key to open

        ;monster
        (isMonsterDead ?m - Monster)

        (carryItem ?p - Player ?item - Item)

        (on ?l - Locatable ?p - Platform )

        ;check if the item is Gold
        (isGold ?g - Gold)
    )

    (:functions
        (playerHealth)
        (playerWealth)
        (monstersSlain)

        (maxInventorySize)
        (inventoryCount)


        ;how much the food replenishes the hunger bar
        (foodValue ?f - Food)

        (shieldStrength ?s - Shield)

        (platformLevel ?p - Platform)

        ;how much damage the monster can deal to the player/shield
        (monsterStrength ?m - Monster)
        ;monster health bar
        (monsterHealth ?m - Monster)

        ;how much damage the weapon can deal to the monster
        (weaponDamage ?w - Weapon)

        ;this could affect how quickly the player gets hungry
        (distanceBetweenJunctions ?j1 ?j2 - Junction)
    )

     ; this action moves player from location from to location to given that the player is at location from and locations from and to are connected
     ; @parameter player {Living}: the player of the game
     ; @parameter from {junction}: current location of the player
     ; @parameter to {junction}: next location of the player
     (:action goTo
      :parameters (?p - player ?from ?to - Junction ?f - Floor)
      :precondition (and (atLocation ?p ?from ) (isConnected ?from ?to) (not (isLocked ?from ?to)) (> (playerHealth) 0) (on ?p ?f))
      :effect (and (atLocation ?p ?to) (not (atLocation ?p ?from)))
     )

    ; this action makes player able to pick up an item given that item and the player is in the same location and player is free
     ; @parameter player {Living}: the player of the game
     ; @parameter item {Item}: the items (Box Sword Shield Key Food Gold) of the game
     ; @parameter from {junction}: current location of the  player and item
     ; @parameter to {junction}: next location of the player and item
     (:action pickUp
      :parameters (?p - player ?i - Item ?j - Junction ?platform - Platform )
      :precondition (and (atLocation ?p ?j) (atLocation ?i ?j) (on ?p ?platform) (on ?i ?platform) (<(inventoryCount) (maxInventorySize)) (> (playerHealth) 0) (not (carryItem ?p ?i)))
      :effect (and (carryItem ?p ?i) (not (atLocation ?i ?j)) (not(on ?i ?platform)) (increase (inventoryCount) 1))
     )

     ; this action makes player able to pick up an item given that item and the player is in the same location and player is free
     ; @parameter player {Living}: the player of the game
     ; @parameter item {Item}: the items (Box Sword Shield Key Food Gold) of the game
     ; @parameter from {junction}: current location of the  player and item
     ; @parameter to {junction}: next location of the player and item
     (:action drop
      :parameters (?p - player ?i - Item ?j - Junction ?platform - Platform)
      :precondition (and (atLocation ?p ?j) (carryItem ?p ?i) (> (playerHealth) 0) (on ?p ?platform))
      :effect  (and (atLocation ?i ?j) (not (carryItem ?p ?i)) (on ?i ?platform) (decrease (inventoryCount) 1))
     )

     ; this action makes player able to push an item given that item and the player is in the same location and player and item is on the floor
     ; @parameter player {Living}: the player of the game
     ; @parameter item {Item}: the items (Box Sword Shield Key Food Gold) of the game
     ; @parameter from {junction}: current location of the  player and item
     ; @parameter to {junction}: next location of the player and item
     (:action push
       :parameters (?p - player ?b - Box ?from ?to - Junction ?f - Floor)
       :precondition (and (atLocation ?p ?from) (atLocation ?b ?from) (isConnected ?from ?to) (> (playerHealth) 0) (on ?p ?f) (on ?b ?f) )
       :effect (and (atLocation ?p ?to) (atLocation ?b ?to) (not(atLocation ?p ?from))
               (not (atLocation ?b ?from)))
      )

      ; this action makes player able to jump on the box  given that box and the player is in the same location and player and item is on the floor
     ; @parameter player {Living}: the player of the game
     ; @parameter item {Item}: the items (Box Sword Shield Key Food Gold) of the game
     ; @parameter from {junction}: current location of the  player and item
     ; @parameter to {junction}: next location of the player and item
    (:action climb
       :parameters (?p - player ?from - Platform  ?to - Platform ?j - Junction)
       :precondition (and (atLocation ?p ?j) (atLocation ?to ?j) (on ?p ?from ) (= (-(platformLevel ?to) (platformLevel ?from)) 1) (> (playerHealth) 0))
       :effect (and (on ?p ?to)  (not (on ?p ?from)))
      )

    ; this action makes player able to go down from the box
     ; @parameter player {Living}: the player of the game
     ; @parameter item {Item}: the items (Box Sword Shield Key Food Gold) of the game
     ; @parameter from {junction}: current location of the  player and item
     ; @parameter to {junction}: next location of the player and item
     (:action descend
      :parameters (?p - player ?from - Platform ?to - Platform ?j - Junction)
      :precondition (and (atLocation ?p ?j) (on ?p ?from) (= (-(platformLevel ?from) (platformLevel ?to)) 1) (> (playerHealth) 0))
      :effect (and (on ?p ?to)  (not (on ?p ?from)))
      )

     ; @parameter box {Item}: the box item
     ; @parameter key {Item}: the key item
     ; @parameter j {junction}: current location of the  player and item
     (:action grab
      :parameters (?p - Player ?from - Platform ?current - Platform ?i - Item ?j - Junction)
       :precondition (and (atLocation ?p ?j) (on ?p ?current) (on ?i ?from) (atLocation ?from ?j)
        (= (-(platformLevel ?from) (platformLevel ?current)) 1) (> (playerHealth) 0))
      :effect (and (carryItem ?p ?i) (not (atLocation ?i ?j)) (not(on ?i ?from)) (increase (inventoryCount) 1))
     )

     ; this action makes player able to attack the monster given that the player and the monster are in the same location
     ; and the player has the weapon to attack the monster
     ; this action does not kill the monster but just damage him
     ; @parameter player {Living}: the player of the game
     ; @parameter monster {Living}: the monster in the room
     ; @parameter weapon {Item}: the weapon item
     ; @parameter j {junction}: current location of the  player and the monster
     (:action attack
      :parameters (?p - Player ?m - Monster ?w - Weapon ?j - Junction)
      :precondition (and (atLocation ?p ?j) (atLocation ?m ?j) (carryItem ?p ?w)
                    (not (isMonsterDead ?m)) (>= (weaponDamage ?w) (monsterHealth ?m)) (> (playerHealth) 0))
      :effect (and (decrease (monsterHealth ?m) (weaponDamage ?w)) (decrease (playerHealth) (monsterStrength ?m)))
     )

     ; this action makes player able to kill the monster given that the player and the monster are in the same location
     ; and the player has a weapon stronger that the monster's current health
     ; @parameter player {Living}: the player of the game
     ; @parameter monster {Living}: the monster in the room
     ; @parameter weapon {Item}: the weapon item
     ; @parameter j {junction}: current location of the  player and the monster
     (:action finalAttack
      :parameters (?p - Player ?m - Monster ?w - Weapon ?j - Junction)
      :precondition (and (> (playerHealth) 0) (atLocation ?p ?j) (atLocation ?m ?j) (carryItem ?p ?w)
                    (not (isMonsterDead ?m)) (>= (weaponDamage ?w) (monsterHealth ?m)) )
      :effect (and (not (atLocation ?m ?j)) (isMonsterDead ?m) (not (carryItem ?p ?w)) (increase (monstersSlain) 1)(decrease (playerHealth) (monsterStrength ?m)))
     )


    ; if the player is at a location that has food, then eat the food
    ; remove the food from the room, and increase hunger by the food's value
    ; @parameter player {Living}: the player of the game
    ; @parameter food {Food}: the food the player can eat
    ; @parameter j {junction}: the current location of the player and the food
     (:action eatFood
      :parameters (?p - Player ?f - Food )
      :precondition (and(> (playerHealth) 0) (carryItem ?p ?f))
      :effect (and (increase (playerHealth) (foodValue ?f)) (not (carryItem ?p ?f)) (ateBanana) )
     )
    ;  (:action eatFood
    ; :parameters (?p - Player ?f - Food ?j - Junction)
    ; :precondition (and ( >(playerHealth ?p) 0) (carryItem ?p ?f))
    ; :effect (and (not (carryItem ?p ?f)) (increase (playerHealth ?p) (foodValue ?f)))
    ; )

)

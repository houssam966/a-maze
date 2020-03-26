(define (domain maze)

    (:requirements :typing :fluents :equality :negative-preconditions :conditional-effects)

    (:types

        Locatable Junction Inventory - object

        Living Item Box Key - Locatable

        Player Monster - Living

        Weapon Shield Food Gold - Item

        Sword Knife - Weapon 
    )

    (:predicates
        ;localisation...
        (atLocation ?x - Locatable ?j - Junction)

        ;maze
        (isConnected ?j1 ?j2 - Junction)
        (isLocked ?j1 ?j2 - Junction);if the route is connected, but needs a key to open

        ;monster
        (isMonsterDead ?m - Monster)

        ;player
        (isPlayerAlive ?p - Player)

        ;inventory
        (isInInventory ?x - Item ?i - Inventory)

        (carryItem ?p - Player ?item - Item)
        
        (canCarry ?p - Player )

        ;player is on the floor
        (onFloor ?p - Player)
        
        ;there is nothing on the box
        (isClear ?b - Box) 

        ;there is a player on the box
        (onBox ?p - Player ?b - Box)

         ;player has key
        (hasKey ?p - player ?key - Key) 
  
    )

    (:functions
        (playerHealth) - number
        (playerHunger) - number
        (playerWealth) - number
        (monstersSlain) - number

        (maxInventorySize) - number

        (inventoryCount) - number

        ;how much the food replenishes the hunger bar
        (foodValue ?f - Food) - number

        (shieldStrength ?s - Shield) - number

        ;how much damage the monster can deal to the player/shield
        (monsterStrength ?m - Monster) - number
        ;monster health bar
        (monsterHealth ?m - Monster)         - number

        ;how much damage the weapon can deal to the monster
        (weaponDamage ?w - Weapon)               - number

        ;this could affect how quickly the player gets hungry
        (distanceBetweenJunctions ?j1 ?j2 - Junction) - number

    )
     ; this action moves player from location from to location to given that the player is at location from and locations from and to are connected
     ; @parameter player {Living}: the player of the game
     ; @parameter from {junction}: current location of the player
     ; @parameter to {junction}: next location of the player
     (:action goTo
      :parameters (?p - player ?from ?to - Junction)
      :precondition (and (atLocation ?p ?from ) (isConnected ?from ?to) (not (isLocked ?from ?to)) (isPlayerAlive ?p))
      :effect (and (atLocation ?p ?to) (not (atLocation ?p ?from)))
     )

     ; this action makes player able to pick up an item given that player is free
     ; @parameter player {Living}: the player of the game
     ; @parameter item {Item}: the items (Box Sword Shield Key Food Gold) of the game
     ; @parameter from {junction}: current location of the  player and item
     ; @parameter to {junction}: next location of the player and item
     (:action pickUp
      :parameters (?p - player ?i - Item ?j - Junction)
      :precondition (and (atLocation ?p ?j) (atLocation ?i ?j) (canCarry ?p) (isPlayerAlive ?p))
      :effect (and (carryItem ?p ?i) (not(atLocation ?i ?j)) (not (canCarry ?p)))
     )

    ;  ; this action makes player able to pick up an item given that item and the player is in the same location and player is free
    ;   ; @parameter player {Living}: the player of the game
    ;  ; @parameter item {Item}: the items (Box Sword Shield Key Food Gold) of the game
    ;  ; @parameter from {junction}: current location of the  player and item
    ;  ; @parameter to {junction}: next location of the player and item
     (:action drop
      :parameters (?p - player ?i - Item ?j - Junction)
      :precondition (and (atLocation ?p ?j) (not (canCarry ?p)) (carryItem ?p ?i) (isPlayerAlive ?p))
      :effect  (and (atLocation ?i ?j) (canCarry ?p) (not (carryItem ?p ?i)))
     )

     ; this action makes player able to push an item given that item and the player is in the same location and player and item is on the floor
     ; @parameter player {Living}: the player of the game
     ; @parameter item {Item}: the items (Box Sword Shield Key Food Gold) of the game
     ; @parameter from {junction}: current location of the  player and item
     ; @parameter to {junction}: next location of the player and item
      (:action push
       :parameters (?p - player ?b - Box ?from ?to - Junction)
       :precondition (and (atLocation ?p ?from) (atLocation ?b ?from) (isConnected ?from ?to) (isPlayerAlive ?p))
       :effect (and (atLocation ?p ?to) (atLocation ?b ?to) (not(atLocation ?p ?from))
               (not (atLocation ?b ?from)))
      )

      (:action jump
       :parameters (?p - player ?b - box ?j - Junction)
       :precondition (and (onFloor ?p) (atLocation ?p ?j) (atLocation ?b ?j) (isClear ?b) (isPlayerAlive ?p))     
       :effect (and (onBox ?p ?b) (not (isClear ?b)) (not (onFloor ?p))) 
      )

     ; this action makes player able to push an item given that item and the player is in the same location and player and item is on the floor 
     ; @parameter player {Living}: the player of the game
     ; @parameter box {Item}: the box item
     ; @parameter key {Item}: the key item
     ; @parameter j {junction}: current location of the  player and item
     (:action grab
      :parameters (?p - Player ?b - Box ?k - Key ?j - Junction)
      :precondition (and (onBox ?p ?b) (atLocation ?p ?j) (atLocation ?b ?j) (atLocation ?k ?j) (isPlayerAlive ?p))
      :effect (and (hasKey ?p ?k))
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
                    (not (isMonsterDead ?m)) (< (weaponDamage ?w) (monsterHealth ?m)) (isPlayerAlive ?p))
      :effect (and (decrease (monsterHealth ?m) (weaponDamage ?w)) (decrease (playerHealth) (monsterStrength ?m))
      
            ; update player state
            (when(< (playerHealth) 0 )
                (not(isPlayerAlive ?p)))
            
            )
        )

     ; this action makes player able to kill the monster given that the player and the monster are in the same location
     ; and the player has a weapon stronger that the monster's current health
     ; @parameter player {Living}: the player of the game
     ; @parameter monster {Living}: the monster in the room
     ; @parameter weapon {Item}: the weapon item
     ; @parameter j {junction}: current location of the  player and the monster
     (:action finalAttack
      :parameters (?p - Player ?m - Monster ?w - Weapon ?j - Junction)
      :precondition (and (atLocation ?p ?j) (atLocation ?m ?j) (carryItem ?p ?w)
                    (not (isMonsterDead ?m)) (>= (weaponDamage ?w) (monsterHealth ?m)) (isPlayerAlive ?p))
      :effect (and (not (atLocation ?m ?j)) (isMonsterDead ?m) (increase (monstersSlain) 1))
     )



    ; if the player is at a location that has food, then eat the food
    ; remove the food from the room, and increase hunger by the food's value
    ; @parameter player {Living}: the player of the game
    ; @parameter food {Food}: the food the player can eat
    ; @parameter j {junction}: the current location of the player and the food
     (:action eatFood
      :parameters (?p - Player ?f - Food ?j - Junction)
      :precondition (and (atLocation ?p ?j) (atLocation ?f ?j) (isPlayerAlive ?p))

      :effect (and (not (atLocation ?f ?j)) (increase(playerHunger) (foodValue ?f)))
     )


    ; if the player is at a location that has gold, then pick up the gold
    ; remove the gold from the room, and increase player wealth by 1
    ; @parameter player{Living}: the player of the game
    ; @parameter gold{Gold}: the gold the player can pick up
    ; @parameter j{junction}: the current location of the player and the gold
     (:action pickUpGold
     :parameters (?p - Player ?g - Gold ?j - Junction)
     :precondition (and (atLocation ?p ?j) (atLocation ?g ?j) (isPlayerAlive ?p))

     :effect(and (not (atLocation ?g ?j)) (increase (playerWealth) 1))
     )
     
        
)
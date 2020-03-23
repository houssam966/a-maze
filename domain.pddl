(define (domain maze)

    (:requirements :typing :fluents :equality :negative-preconditions :conditional-effects)

    (:types

        Locatable Junction Inventory - object

        Living Item Box Key - Locatable

        Player Monster - Living

        Sword Shield  Food Gold - Item 
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

        ;this could affect how quickly the player gets hungry
        (distanceBetweenJunctions ?j1 ?j2 - Junction) - number

    )
     ; this action moves player from location from to location to given that the player is at location from and locations from and to are connected
     ; @parameter player {Living}: the player of the game
     ; @parameter from {junction}: current location of the player
     ; @parameter to {junction}: next location of the player
     (:action goTo
      :parameters (?p - player ?from ?to - Junction)
      :precondition (and (atLocation ?p ?from ) (isConnected ?from ?to) (not (isLocked ?from ?to)))
      :effect (and (atLocation ?p ?to) (not (atLocation ?p ?from)))
     )

     ; this action makes player able to pick up an item given that player is free
     ; @parameter player {Living}: the player of the game
     ; @parameter item {Ittem}: the items (Box Sword Shield Key Food Gold) of the game
     ; @parameter from {junction}: current location of the  player and item
     ; @parameter to {junction}: next location of the player and item
     (:action pickUp
      :parameters (?p - player ?i - Item ?j - Junction)
      :precondition (and (atLocation ?p ?j) (atLocation ?i ?j) (canCarry ?p))
      :effect (and (carryItem ?p ?i) (not(atLocation ?i ?j)) (not (canCarry ?p)))
     )

    ;  ; this action makes player able to pick up an item given that item and the player is in the same location and player is free
    ;   ; @parameter player {Living}: the player of the game
    ;  ; @parameter item {Ittem}: the items (Box Sword Shield Key Food Gold) of the game
    ;  ; @parameter from {junction}: current location of the  player and item
    ;  ; @parameter to {junction}: next location of the player and item
     (:action drop
      :parameters (?p - player ?i - Item ?j - Junction)
      :precondition (and  (atLocation ?p ?j) (not(canCarry ?p)))
      :effect  (and (atLocation ?i ?j) (canCarry ?p) (not (atLocation ?i ?j) )
     )
     )

     ; this action makes player able to push an item given that item and the player is in the same location and player and item is on the floor
      ; @parameter player {Living}: the player of the game
     ; @parameter item {Ittem}: the items (Box Sword Shield Key Food Gold) of the game
     ; @parameter from {junction}: current location of the  player and item
     ; @parameter to {junction}: next location of the player and item
      (:action push
       :parameters (?p - player ?b - Box ?from ?to - Junction)
       :precondition (and (atLocation ?p ?from) (atLocation ?b ?from)(isConnected ?from ?to))
       :effect (and (atLocation ?p ?to) (atLocation ?b ?to) (not(atLocation ?p ?from))
               (not (atLocation ?b ?from)))
      )

      (:action jump
      :parameters (?p - player ?b - box ?j - Junction)
      :precondition (and (onFloor ?p) (atLocation ?p ?j) (atLocation ?b ?j) (isClear ?b))     
      :effect (and (onBox ?p ?b) (not (isClear ?b)) (not (onFloor ?p))) 
      )

     ; this action makes player able to push an item given that item and the player is in the same location and player and item is on the floor 
     ; @parameter player {Living}: the player of the game
     ; @parameter box {Item}: the box item
     ; @parameter key {Item}: the key item
     ; @parameter j {junction}: current location of the  player and item
     (:action grab
      :parameters (?p - Player ?b - Box ?k - Key ?j - Junction)
      :precondition (and (onBox ?p ?b) (atLocation ?p ?j)(atLocation ?b ?j) (atLocation ?k ?j))
      :effect (and (hasKey ?p ?k))
      )   
)
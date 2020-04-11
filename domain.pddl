
(define (domain maze)

    (:requirements :strips :typing :fluents :equality :negative-preconditions :conditional-effects :action-costs)

    (:types

        Locatable Junction Inventory - object

        Platform Living Item - Locatable

        Box Floor - Platform    ;Floor is needed as a platform in every problem

        Player Monster - Living

        Key Weapon Shield Food Gold - Item
    )

    (:predicates
        ;localisation
        (atLocation ?x - Locatable ?j - Junction)
        (on ?l - Locatable ?p - Platform )  ;used place any locatable object on top of a platform
        ;maze
        (isConnected ?j1 ?j2 - Junction)
        (isLocked ?j1 ?j2 - Junction)   ;if the route is connected, but needs a key to open
        
        ;monster
        (isMonsterDead ?m - Monster)
        
        ;player
        (carryItem ?p - Player ?item - Item)
        
        ;check if the item is Gold
        (isGold ?g - Gold)

        ;check if the box is open
        (isUnlocked ?b - Box)

        ;check if there is an item in the box
        (inBox ?b - Box ?i-Item)

        ;check if the player can carry an item
        (canTake ?p - Player ?item - Item)

    )

    (:functions
        ;player
        (playerHealth)
        (playerWealth)
        (monstersSlain)
        ;inventory
        (maxInventorySize)
        (inventoryCount)
        ;amount of health replenished by food
        (foodValue ?f - Food)
        ;how much damage the weapon can deal to the monster
        (weaponDamage ?w - Weapon)
        (shieldStrength ?s - Shield)

        ;monster
        ;how much damage the monster can deal to the player/shield
        (monsterStrength ?m - Monster)
        ;monster health bar
        (monsterHealth ?m - Monster)

        ;how high is a platform. This affects climbability of a platform.
        (platformLevel ?p - Platform)
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
        :precondition (and (atLocation ?p ?from) (atLocation ?b ?from) (isConnected ?from ?to) (> (playerHealth) 0) (on ?p ?f) (on ?b ?f))
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
            (not (isMonsterDead ?m)) (< (weaponDamage ?w) (monsterHealth ?m)) (> (playerHealth) 0))
    :effect (and (decrease (monsterHealth ?m) (weaponDamage ?w)) (decrease (playerHealth) (monsterStrength ?m)))
    )

    ; This action enables player to kill a monster in the same junction using a weapon stronger than the monster's current health
    ; Arguments:
    ; ?player {Living}: the player of the game
    ; ?monster {Living}: the monster in the same location
    ; ?weapon {Weapon}: the weapon to be used
    ; ?j {junction}: current location of the  player and the monster
    (:action finalAttack
    :parameters (?p - Player ?m - Monster ?w - Weapon ?j - Junction)
    :precondition (and (atLocation ?p ?j) (atLocation ?m ?j) (carryItem ?p ?w)
            (not (isMonsterDead ?m)) (>= (weaponDamage ?w) (monsterHealth ?m)) (> (playerHealth) 0))
    :effect (and (not (atLocation ?m ?j)) (isMonsterDead ?m) (increase (monstersSlain) 1)
            (not (carryItem ?p ?w)) (decrease (playerHealth) (monsterStrength ?m)))
    )

    ; if the player has food, then eat the food before attack
    ; increase hunger by the food's value
    ; Arguments
    ; ?player {Living}: the player of the game
    ; ?food {Food}: the food the player can eat
     (:action eatFood
      :parameters (?p - Player ?f - Food )
      :precondition (and (> (playerHealth) 0) (carryItem ?p ?f))
      :effect (and (increase (playerHealth) (foodValue ?f)) (not (carryItem ?p ?f)) )
     )
    
    ; if the player is at a junction(j1) that has a locked path to another junction(j2),
    ; and the player has a key, then use the key to unlock the route
    ; @parameter player {Living}: the player of the game
    ; @parameter k {Key}: the key that can be used to unlock a route
    ; @parameter j1, j1 {Junction}: the 2 junctions that have a locked route 
    (:action unlockRoute
        :parameters (?p - Player ?k - Key ?j1 - Junction ?j2 - Junction)
        :precondition (and(atLocation ?p ?j1) (carryItem ?p ?k) (isLocked ?j1 ?j2))
        :effect (and (not (carryItem ?p ?k)) (not (isLocked ?j1 ?j2)) (isConnected ?j1 ?j2))
    )

    
    ; if there is a locked box and player has a key, then use the key to unlock the box
    ; to be able to take the items inside it
    ; @parameter player {Living}: the player of the game
    ; @parameter k {Key}: the key that can be used to unlock a box
    ; @parameter b {Box}: the box that can be unlock in order to take the item inside it
    ; @parameter item {Item}: the items (Box Sword Shield Key Food Gold) of the game
    ; @parameter j{Junction}: the current location of the player, box and item
    ; @parameter platform {Platform}: used place any locatable object on top of a platform
    (:action unlockBox
        :parameters (?p - Player ?k - Key ?b - Box ?j - Junction ?platform - Platform)
        :precondition (and (atLocation ?p ?j) (atLocation ?b ?j)  (on ?p ?platform) (on ?b ?platform)
                      (carryItem ?p ?k) (not(isUnlocked ?b)) (> (playerHealth) 0))
        :effect (and  (isUnlocked ?b))  
    )
    
    ; this action makes player able to pick up an item given that item and the player is in the same location and player is free
    ; @parameter player {Living}: the player of the game
    ; @parameter b {Box}: the box that can be unlock in order to take the item inside it
    ; @parameter item {Item}: the items (Box Sword Shield Key Food Gold) of the game
    ; @parameter j{Junction}: the current location of the player, box and item
    ; @parameter platform {Platform}: used place any locatable object on top of a platform
    (:action take
        :parameters (?p - player ?j - Junction ?platform - Platform ?b - Box ?i - Item)
        :precondition (and (atLocation ?p ?j) (atLocation ?b ?j) (atLocation ?i ?j) (on ?p ?platform) (on ?b ?platform) (inBox ?b ?i) 
                      (isUnlocked ?b) (<(inventoryCount) (maxInventorySize)) (> (playerHealth) 0))
        :effect (and (carryItem ?p ?i) (not (inBox ?b ?i)) (increase (inventoryCount) 1))
    )  
)

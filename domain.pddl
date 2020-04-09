
(define (domain maze)

    (:requirements :typing :fluents :equality :negative-preconditions :conditional-effects)

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

    ; Used to move player between unlocked and connected junctions. Player can only move if they are on a Floor Platform.
    ; Arguments:
    ; ?player {Living}: the player of the game
    ; ?from {Junction}: current location of the player
    ; ?to {Junction}: next location of the player
    ; ?f {Floor}: should be the current platform the player is on
    (:action goTo
    :parameters (?p - player ?from ?to - Junction ?f - Floor)
    :precondition (and (> (playerHealth) 0) (on ?p ?f)(atLocation ?p ?from)
            (isConnected ?from ?to) (not (isLocked ?from ?to)))
    :effect (and (atLocation ?p ?to) (not (atLocation ?p ?from)))
    )

    ; Used to pick up items from any platform as long as there is inventory space and player is on the same platform.
    ; Arguments:
    ; ?player {Living}: the player of the game
    ; ?item {Item}: item player wants to pick
    ; ?j {Junction}: current location of player and item
    ; ?platform {Platform}: current platform of player and item
    (:action pickUp
    :parameters (?p - player ?i - Item ?j - Junction ?platform - Platform )
    :precondition (and (> (playerHealth) 0)
            (atLocation ?p ?j) (atLocation ?i ?j)
            (on ?p ?platform) (on ?i ?platform)
            (<(inventoryCount) (maxInventorySize))(not (carryItem ?p ?i)))
    :effect (and (carryItem ?p ?i) (not (atLocation ?i ?j)) (not(on ?i ?platform)) (increase (inventoryCount) 1))
    )

    ; Used to drop an item from the inventory on a platform at a location.
    ; Arguments:
    ; ?player {Living}: the player of the game
    ; ?item {Item}: item in inventory player wants to drop
    ; ?j {Junction}: current location of player
    ; ?platform {Platform}: current platform of player
    (:action drop
    :parameters (?p - player ?i - Item ?j - Junction ?platform - Platform)
    :precondition (and (atLocation ?p ?j) (carryItem ?p ?i) (> (playerHealth) 0) (on ?p ?platform))
    :effect (and (atLocation ?i ?j) (not (carryItem ?p ?i)) (on ?i ?platform) (decrease (inventoryCount) 1))
    )

    ; Used to push a box from one junction to another given that box and player are both on the floor at the same junction.
    ; Arguments:
    ; ?player {Living}: the player of the game
    ; ?b {Box}: the box player wants to push
    ; ?from {Junction}: current location of player and box
    ; ?to {Junction}: next location of the player and box
    ; ?f {Floor}: should be the current platform the player and box are on
    (:action push
    :parameters (?p - player ?b - Box ?from ?to - Junction ?f - Floor)
    :precondition (and (> (playerHealth) 0) (on ?p ?f) (on ?b ?f)
            (atLocation ?p ?from) (atLocation ?b ?from) (isConnected ?from ?to))
    :effect (and (atLocation ?p ?to) (not(atLocation ?p ?from))
        (atLocation ?b ?to) (not (atLocation ?b ?from)))
    )

    ; Used to climb a platform that is one level above the player's current platform at the same junction.
    ; Arguments:
    ; ?player {Living}: the player of the game
    ; ?from {Platform}: current platform of the player
    ; ?to {Platform}: platform player wants to climb
    ; ?j {Junction}: current location of player and platforms
    (:action climb
    :parameters (?p - player ?from - Platform  ?to - Platform ?j - Junction)
    :precondition (and (atLocation ?p ?j) (atLocation ?to ?j) (on ?p ?from )
            (= (-(platformLevel ?to) (platformLevel ?from)) 1) (> (playerHealth) 0))
    :effect (and (on ?p ?to)  (not (on ?p ?from)))
    )

    ; Used to descend from a platform that is one level below the player's current platform at the same junction.
    ; Arguments:
    ; ?player {Living}: the player of the game
    ; ?from {Platform}: current platform of the player
    ; ?to {Platform}: platform player wants to descend to
    ; ?j {Junction}: current location of player and platforms
    (:action descend
    :parameters (?p - player ?from - Platform ?to - Platform ?j - Junction)
    :precondition (and (atLocation ?p ?j) (on ?p ?from) (= (-(platformLevel ?from) (platformLevel ?to)) 1) (> (playerHealth) 0))
    :effect (and (on ?p ?to)  (not (on ?p ?from)))
    )

    ; Used to grab an item from a platform one level above the player's current platform and add it to the inventory.
    ; Arguments:
    ; ?player {Living}: the player of the game
    ; ?from {Platform}: platform player wants to grab from
    ; ?current {Platform}: player's current platform
    ; ?item {Item}: item player wants to grab
    ; ?j {Junction}: current location of player, item, and platforms
    (:action grab
    :parameters (?p - Player ?from - Platform ?current - Platform ?i - Item ?j - Junction)
    :precondition (and (atLocation ?p ?j) (on ?p ?current) (on ?i ?from) (atLocation ?from ?j)
            (= (-(platformLevel ?from) (platformLevel ?current)) 1) (> (playerHealth) 0))
    :effect (and (carryItem ?p ?i) (not (atLocation ?i ?j)) (not(on ?i ?from)) (increase (inventoryCount) 1))
    )

    ; This action enables player to attack a monster in the same junction using a weapon.
    ; This action does not kill the monster, just damages it. So monsters health should be more than the weapon's damage.
    ; Arguments:
    ; ?player {Living}: the player of the game
    ; ?monster {Living}: the monster in the same location
    ; ?weapon {Weapon}: the weapon to be used
    ; ?j {junction}: current location of the  player and the monster
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
      :precondition (and(> (playerHealth) 0) (carryItem ?p ?f))
      :effect (and (increase (playerHealth) (foodValue ?f)) (not (carryItem ?p ?f)) )
     )
)

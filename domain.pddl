; This is domain

(define (domain maze)

    (:requirements :typing :fluents :equality :negative-preconditions :conditional-effects)

    (:types 
    
        Locatable Junction Inventory - object
    
        Living Item - Locatable
    
        Player Monster - Living
    
        Box Sword Shield Key Food Gold Box - Item

        location
    
    )
    
    (:predicates 
        ;localisation...
        (atLocation ?x - Locatable ?j - Junction)
    
        ;maze
        (isConnected ?j1 ?j2- Junction)
        (isLocked ?j1 ?j2 - Junction);if the route is connected, but needs a key to open
        
        ;monster
        (isMonsterDead ?m - Monster)
    
        ;player
        (isPlayerAlive ?p - Player)
    
        ;inventory
        (isInInventory ?x - Item ?i - Inventory)

        (carryItem ?p - person ?item)
        
        (free ?p)
    
    
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

     (:action GOTO
      :parameters (?p - player ?j1 ?j2 - Junction)
      :precondition (and (atLocation ?p - Locatable ?j1 - Junction)(not (isLocked ?j1 ?j2))
      :effect (and (atLocation ?p - Locatable ?j2 - Junction) (not (atLocation ?p - Locatable ?j1 - Junction))     
     )

     (:action PICKUP
      :parameters (?p - player ?i - Item ?j1 ?j2 - Junction)
      :precondition (and (player ?p) (item ?i) (atLocation ?p Locatable ?j - Junction) (atLocation ?i Locatable ?j - Junction) (free ?p))
      :effect (and (carryItem ?p ?i)(not (free ?p))
     )

     (:action DROP
      :parameters (?p - player ?j1 ?j2 - Junction ?i - Item)
      :precondition (and (player ?p) (item ?i) (atLocation ?p Locatable ?j1 - Junction) (atLocation ?i Locatable ?j1 - Junction)  
      :effect  (and (not(atLocation ?i Locatable ?j1 - Junction) (not (atLocation ?i Locatable ?j1 - Junction) ((free ?p))
     )

     (:action PUSH
      :parameters (?p - player ?i - Item ?j1 ?j2 - Junction)
      :precondition (and (onFloor ?p) (onFloor ?i) (atLocation ?p Locatable ?j1 - Junction) (atLocation ?i Locatable ?j1 - Junction)        
      :effect (and (atLocation ?p Locatable ?j2 - Junction) (atLocation ?i Locatable ?j2 - Junction)(not ((atLocation ?p Locatable ?j1 - Junction))(not (atLocation ?i Locatable ?j1 - Junction))))
     )    
)

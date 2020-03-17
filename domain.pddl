; This is domain

(define (domain maze)

    (:requirements :typing :fluents :equality :negative-preconditions :conditional-effects)

    (:types 
    
        Locatable Junction Inventory - object
    
        Living Item - Locatable
    
        Player Monster - Living
    
        Box Sword Shield Key Food Gold - Item
    
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
)
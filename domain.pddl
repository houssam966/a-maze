; This is domain

(define (domain maze)

(:requirements :typing :fluents :equality :negative-preconditions :conditional-effects)

(:types 
    Player,
    Inventory,
    Junction,
    Monster,
    Box,
    Sword,
    Shield,
    Key,
    Food,
    Gold
)

(:predicates 
    ;localisation...
    (playerAtPosition ?p-Player ?j - Junction);the player p is at junction j
    (monsterAtPosition ?m-Monster ?j - Junction);the monster m is at the junction j
    (boxAtLocation ?b - Box ?j - Junction)
    (swordAtLocation ?s - Sword ?j - Junction)
    (shieldAtLocation ?s - Shield ?j - Junction)
    (keyAtLocation ?k - Key ?j - Junction)
    (foodAtLocation ?f - Food ?j - Junction)
    (goldAtLocation ?g - Gold ?j - Junction)

    ;maze
    (isConnected ?j1 ?j2- Junction)
    (isLocked ?j1 ?j2 - Junction);if the route is connected, but needs a key to open
    
    ;monster
    (isMonsterDead ?m - Monster)

    ;player
    (isPlayerAlive ?p - Player)

    ;inventory
    (isKeyInInventory ?k - Key ?i - Inventory)
    (isSwordInInventory ?s - Sword ?i - Inventory)
    (isShieldInInvetory ?s - Shield ?i - Inventory)
    (isBoxInInventory ?b - Box ?i - Inventory)
    (isFoodInINventory ?f - Food ?i - Inventory)


)

(:functions 
    (playerHealth) - number
    (playerHunger) - number
    (playerWealth) - number
    (monstersSlain) - number

    ;how much the food replenishes the hunger bar
    (foodValue ?f - Food) - number

    (shieldStrength ?s - Shield) - number

    ;how much damage the monster can deal to the player/shield
    (monsterStrength ?m - Monster) - number

    ;this could affect how quickly the player gets hungry
    (distanceBetweenJunctions ?j1 ?j2 - Junction) - number

)
)
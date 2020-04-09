
NUMERIC_THREATS_MODE: 0

; Command line: ./metric-lpg -o /home/k1759546/Documents/a-maze/domain.pddl -f /home/k1759546/Documents/a-maze/eat_food.pddl -quality   


Parsing domain file:  domain 'MAZE' defined ... done.
Parsing problem file:  problem 'PROBLEM_EAT' defined ... done.



Modality: Quality Planner

Number of actions             :      91
Number of conditional actions :       0
Number of facts               :      29


Analyzing Planning Problem:
	Temporal Planning Problem: NO
	Numeric Planning Problem: YES
	Problem with Timed Initial Literals: NO
	Problem with Derived Predicates: NO

Evaluation function weights:
     Action duration 0.00; Action cost 1.00


Computing mutex... done

Preprocessing total time: 0.01 seconds

Searching ('.' = every 50 search steps):
.. Restart.
.. search limit exceeded. Restart.
... search limit exceeded. Restart.
.......... search limit exceeded. Restart.
.. search limit exceeded. Restart.
.. search limit exceeded. Restart.
.......... search limit exceeded. Restart.
.. search limit exceeded. Restart.
... search limit exceeded.

Searching ('.' = every 50 search steps):
.......... search limit exceeded. Restart.
.... search limit exceeded. Restart.
.. search limit exceeded. Restart.
.......... search limit exceeded. Restart.
.. search limit exceeded. Restart.
.. search limit exceeded. Restart.
.......... search limit exceeded. Restart.
.. search limit exceeded. Restart.
.. search limit exceeded.

Searching ('.' = every 50 search steps):
.......... search limit exceeded. Restart.
... search limit exceeded. Restart.
.. search limit exceeded. Restart.
.......... search limit exceeded. Restart.
.. search limit exceeded. Restart.
.. search limit exceeded. Restart.
.......... search limit exceeded. Restart.
... search limit exceeded. Restart.
.. search limit exceeded.

Searching ('.' = every 50 search steps):
.......... search limit exceeded. Restart.
.. search limit exceeded. Restart.
.. search limit exceeded. Restart.
.......... search limit exceeded. Restart.
.. search limit exceeded. Restart.
.. search limit exceeded. Restart.
.......... search limit exceeded. Restart.
... search limit exceeded. Restart.
.. search limit exceeded.

Searching ('.' = every 50 search steps):
........

Plan computed:
   Time: (ACTION) [action Duration; action Cost]
 0.0003: (GOTO P J1 J2 F) [D:1.0000; C:1.0000]
 1.0005: (PICKUP P BANANA J2 F) [D:1.0000; C:1.0000]
 2.0008: (PICKUP P W J2 F) [D:1.0000; C:1.0000]
 3.0010: (GOTO P J2 J3 F) [D:1.0000; C:1.0000]
 4.0012: (EATFOOD P BANANA) [D:1.0000; C:1.0000]
 5.0015: (FINALATTACK P M W J3) [D:1.0000; C:1.0000]
 6.0017: (GOTO P J3 J4 F) [D:1.0000; C:1.0000]


Solution found:
Total time:      0.76
Search time:     0.03
Actions:         7
Execution cost:  7.00
Duration:        7.000
Plan quality:    7.000
     Plan file:       plan_/home/k1759546/Documents/a-maze/eat_food.pddl_1.SOL




Error opening output file: plan_/home/k1759546/Documents/a-maze/eat_food.pddl_1.SOL
ERROR in file LpgOutput.c:3073 ; 
Cannot open file! 
 Please check the write permission

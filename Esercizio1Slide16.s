MOV R1, #0x100  ;Indice prima cella

;Carico in memoria 5 numeri casuali
MOV R0, #23
STR R0, [R1], #4
MOV R0, #2
STR R0, [R1], #4
MOV R0, #51
STR R0, [R1], #4
MOV R0, #33
STR R0, [R1], #4
MOV R0, #4
STR R0, [R1]

MOV R7, R1        ;Indice ultima cella
MOV R1, #0x100    ;Indice prima cella
LDR R5, [R1]      ;Inizializzo min
LDR R6, [R1], #4  ;Inizializzo max

Loop 
    LDR R0, [R1], #4
    CMP R0, R5
    MOVLT R5, R0
    CMP R0, R6
    MOVGT R6, R0
    CMP R1, R7
    BLE Loop

END

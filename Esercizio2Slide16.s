MOV R1, #0x100
;Carico in memoria 6 numeri casuali
MOV R0, #23
STR R0, [R1], #4
MOV R0, #2
STR R0, [R1], #4
MOV R0, #51
STR R0, [R1], #4
MOV R0, #33
STR R0, [R1], #4
MOV R0, #81
STR R0, [R1], #4
MOV R0, #4
STR R0, [R1] ;0x124

MOV R0, #0x100

Loop
    CMP R0, R1
    ;Inverto la posizione dei valori
    LDRNE R5, [R0]
    LDRNE R6, [R1]
    STRNE R5, [R1], #-4
    STRNE R6, [R0], #4
    BNE Loop
END

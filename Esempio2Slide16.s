MOV R0, #5
MOV R1, #10
MOV R2, #0

Prod CMP R0, #0
    ADDGT R2, R2, R1
    SUBGT R0, R0, #1
    BNE Prod
    
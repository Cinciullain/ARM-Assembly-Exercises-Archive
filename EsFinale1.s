;In questa soluzione suppongo che le inizializzazioni siano state fatte
;E che il numero sia già salvato

;Conto quanti 0 sono presenti nel numero presente dalla memoria. 

MOV R1, #0x108
LDR R2, [R1]        ;Il numero da valutare viene caricato in R2
MOV R7, #0b00000001 ;Definizione della maschera
MOV R3, #0x0

Loop
    AND R4, R2, R7  ;Test con la maschera
    CMP R4, #0
    ADDEQ R3, R3, #1 
    LSL R7, R7, #1
    CMP R7, #128
    BNE Loop

END
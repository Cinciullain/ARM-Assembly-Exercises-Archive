;In questa soluzione suppongo che le inizializzazioni siano state fatte
;E che il numero sia già salvato

;Calcolo lo Xor del numero con il valore 11111111
;Poi è sufficiente contare il numero di 1 del risultato

MOV R1, #0x108
LDR R2, [R1]        ;Il numero da valutare viene caricato in R2
MOV R7, #0b00000001 ;Maschera
MOV R4, #0b11111111 ;Valore da usare con lo xor
MOV R3, #0x0
EOR R4, R2, R4

Loop
    CMP R4, #0       ;Controllo se R4 è uguale a 0
    ANDNE R5, R4, R7
    ADDNE R3, R3, R5 ;Sommo a R3 risultato di AND
    LSRNE R4, R4, #1 ;Shift di R4 a destra
    BNE Loop

END

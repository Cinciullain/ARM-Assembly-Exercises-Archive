MOV R0, #0x100  ;Indirizzo di partenza
MOV R1, #2      ;Inizializzo R1
MOV R2, #0      ;Inizializzo R2, usato come contatore

LOOP
    CMP R2, #10          ;Controllo sul contatore
    STRLT R1, [R0, #4]!  ;Incremento e Carico in memoria

    ;Modalità Pre-index
    ADDLT R1, R1, #2 ;Incremento R1
    ADDLT R2, R2, #1 ;Incremento contatore
    BLT LOOP
    
END
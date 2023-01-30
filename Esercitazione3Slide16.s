MOV R0, #0x200  ;Indirizzo di partenza
MOV R1, #1      ;Inizializzo R1
MOV R2, #0      ;Inizializzo R2

LOOP
    CMP R2, #10         ;Controllo sul contatore
    STRLE R1, [R0, #4]! ;Carico in memoria e incremento indirizzo
    ADDLE R2, R2, #1    ;Incremento contatore
    LSLLE R1, R1, #1    ;Shift a sinistra di 1
    BLE LOOP

END

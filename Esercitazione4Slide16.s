MOV R0, #0x200  ;Indirizzo di partenza
MOV R2, #0      ;Inizializzo R2

LOOP
    CMP R2, #40      ;Controllo sul contatore
    ADDLE R3, R0, R2 ;Aggiorno puntatore memoria
    STRLE R3, [R3]   ;Carico valore in memoria
    ADDLE R2, R2, #8 ;Incremento contatore
    BLE LOOP

END

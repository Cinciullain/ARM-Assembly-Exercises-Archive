MOV R0, #0x200  ;Indirizzo di partenza
MOV R2, #0      ;Inizializzo R2

LOOP
    CMP R2, #10         ;Controllo sul contatore
    STRLE PC, [R0, #4]! ;Carico in memoria valore PC e incremento indirizzo
    ADDLE R2, R2, #1
    BLE LOOP

MOV R3, #0x200 ;Indirizzo di partenza
MOV R2, #0 ;Inizializzo R2

LOOP1
    CMP R2, #10 ;Controllo sul contatore
    LDRLE R3, [R0, #4]! ;Leggo dalla memoria e incremento indirizzo
    ADDLE R1, R1, R3 ;Calcolo somma dei valori in memoria
    ADDLE R2, R2, #1
    BLE LOOP1
END

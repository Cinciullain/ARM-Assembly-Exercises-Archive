;Codice che calcola R1/R0
MOV R1, #65 ;Dividendo e resto
MOV R0, #13 ;Divisore
MOV R2, #0  ;Quoziente

Div 
    CMP R1, R0
    SUBGE R1, R1, R0
    ADDGE R2, R2, #1
    BGE Div
    
END
    
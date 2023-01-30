;Inizializzazione registri
MOV R0, #55 
MOV R1, #45
MOV R2, #72

;Supponiamo R0 sia il max
MOV R7, R0

;Se R1 > R7 allora R7 = R1
CMP R1, R7
MOVGT R7, R1 

;Se R2 > R7 allora R7 = R2
CMP R2, R7
MOVGT R7, R2 

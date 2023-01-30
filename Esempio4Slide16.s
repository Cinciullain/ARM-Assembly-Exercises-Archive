loop 
    CMP Ri, Rj
    SUBGT Ri, Ri, Rj ;if "GT", i = i-j
    SUBLT Rj, Rj, Ri ;if "LT", j = j-i
    BNE loop         ; if "NE", goto loop
    
// Use post-indexed with write-back addressing mode to do the same task.
.include    "address_map_arm.s"
                       
.global     _start          
_start: 
LDR R0, =LOC // pseudo-inst.
MOV R1, #1 // write 1 to register 1
MOV R2, #2 // write 2 to register 2
MOV R3, #3 // write 3 to register 3
MOV R4, #4 // write 4 to register 4

STR R1, [R0], #4

STR R2, [R0], #4 
STR R3, [R0],  
STR R4, [R0], #4 
END: B END
LOC: .word 0xA        
.end  
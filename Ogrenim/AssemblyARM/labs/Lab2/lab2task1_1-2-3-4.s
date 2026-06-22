.include    "address_map_arm.s"

.text                       
.global     _start          
_start: 
LDR R0, =LOC // pseudo-inst.
MOV R1, #1 // write 1 to register 1
MOV R2, #2 // write 2 to register 2
MOV R3, #3 // write 3 to register 3
MOV R4, #4 // write 4 to register 4
// Now, store these words into memory starting from the location LOC
STR R1, [R0]
// Now, store the content of R2 to the next location:
ADD R0, R0, #4 // watch the content of R0!
STR R2, [R0]
// Store the content of R3 to the next location:
ADD R0, R0, #4 // watch the content of R0!
STR R3, [R0]
// Finally, store the content of R4 to the next location:
ADD R0, R0, #4 // watch the content of R0!
STR R4, [R0 ]
END: B END
LOC: .word 0xA        
.end 
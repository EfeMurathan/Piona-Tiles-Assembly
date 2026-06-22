.global _start
_start:
	//Config timer
	LDR R0,=0xFFFEC600 //Timers address
	LDR R1,=200000000 //Load value
	STR R1,[R0]
	MOV R1,#0b011 
	STR R1,[R0,#8] //I,A and E bits
	
	LDR R1,=0xFF200000 //Led base address
	MOV R2,#0x7
	STR R2,[R1] //Open first 3 leds
	
toggle: BL wait
		EOR R2,R2,#0xF
		STR R2,[R1]
		B toggle

wait:
	LDR R3,[R0,#12]
	ANDS R3,R3,#0b01 //Son bit mask
	BEQ wait
	MOV R3,#1
	STR R3,[R0,#12] //Acknowledge
	BX LR
	
	
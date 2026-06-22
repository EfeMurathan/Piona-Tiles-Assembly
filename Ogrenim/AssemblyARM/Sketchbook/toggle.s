LDR R0,=0xFF709000
.equ bit24_bit, 0x01000000

setup:
	LDR R1,=bit24_bit
	STR R1,[R0,#4]
	STR R1,[R0] //Led is open at the start

toggle:
	EOR R2,R1,bit24_bit
	STR R2,[R0]
	BL wait_for_5
	toggle
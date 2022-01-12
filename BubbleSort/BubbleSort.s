.global _start
.global SWAP

// The first 32-bit number in the list gives the number of items in the list and the
// remainder of the entries are the numbers to be sorted. 

_start:
	LDR R8, = LIST //Adress of list
	MOV R4, #0 //Loop Counter
	MOV R0, R8
	LDR R7, [R8] //Length of list 
	SUB R7, #1
	MOV R6, #0
	
	LOOP:
	ADD R4, #1
	ADD R0, #4
	
	MOV R5, R0//cur address
	BL SWAP
	CMP R0, #1
	MOVEQ R6, #1
	
	CMP R4, R7
	MOVLT R0, R5
	BLT LOOP
	
	CMPEQ R6, #1
	MOVEQ R4, #0
	MOVEQ R6, #0
	MOVEQ R0, R8
	BEQ LOOP
	BNE END
	
	B LOOP

	END:
	B END

SWAP:
	LDR R1, [R0]
	LDR R2, [R0, #4]
	CMP R1, R2
	STRGT R2, [R0]
	STRGT R1, [R0, #4]
	MOVGT R0, #1
	MOVLE R0, #0
	B SWAPEND

	
	SWAPEND:
	MOV PC, LR


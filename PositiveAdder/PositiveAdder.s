.global _start
_start:
	LDR R1,= [TEST_NUM]
	MOV R8, #0
	MOV R7, #0
	LDR R2, [R1]
Loop_start:
	LDR R2, [R1]
	CMP R2, #-1
	BEQ END
	ADD R7, R2
	ADD R1, #4
	
	ADD R8, #1
	B Loop_start

END: B END

.text
.global _start
.global ONES

ONES:
	LOOP:
		CMP R1, #0				// loop until data contains no more 1's // loop until data is 0x00000000...
		BEQ SUBEND
		LSR R2, R1, #1			// LSR = loagical shift right // perform SHIFT, followed by AND
		AND R1, R1, R2
		ADD R5,#1				// count the string lengths so far
		B LOOP
	SUBEND:
		MOV PC,LR
END: B END

# CodingInArmAssembly

### LEDSweepingPattern
Program that turns on two LEDR lights at a time on the DE1- SoC board. First, the lights LEDR9 and LEDR0  turn on, then LEDR8 and LEDR1, then LEDR7 and LEDR2, and so on. When it reaches LEDR5 and LEDR4, the direction reverses. Only two LEDR lights are ever on at one time. The effect is two lights sweeping first towards the centre, then outwards towards the edges, and so on.

### BubbleSort
Program that sort a list of 32-bit unsigned numbers in place and into ascending order using the bubble sort algorithm. 

### PositiveAdder
Program that adds together a list of positive numbers (numbers>0) and deposits their sum into register R7, as well as counting the number of positive numbers and depositing the count into register R8.

### LongestString
Program that keeps track of the longest string of 1s in any words provided in a list, and stores the result in register R5, it does this by using a subroutine in a loop for every word of data placed in memory.




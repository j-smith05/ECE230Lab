# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

#### Group 23: Jacob Smith & Matthew Mai

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary
    In this lab we learned how to take an XOR, how its relevant to a Half Adder, then correlate that to a two bit, Full Adder. In this we really wanted to connect the 2 segments of full adders, and we were able to get them connected into a 2-bit full adder that worked. This was the ultimate simulation of a light switch. In this lab we learned how to design an adder and full adder in verilog and the logic behind it, and how it relates to a truth table.
## Lab Questions

### 1 - How might you add more than two bits together?
    You can add multiple 2 bit adders together by continuing the "ripple carry adder," having the carry out go to the carry in of the next until you have the amount of two bit adders you want.

### 2 - What is the importance of the XOR gate in an adder?
    The XOR is important because, it produces the correct sum bit in binary addition. In a half adder, the sum is A XOR B, and in a full adder, the sum is A XOR B XOR Cin (Carry In). XOR outputs 1 when inputs differ, which matches binary addition behavior without carry. 

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
    The Largest number you handle with a two bit number is 11. and if you go over this it will cause a carry over, which is caused when an extra carry bit is produced because the result is too large to fit in the available bits.


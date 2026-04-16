# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

Group 23: Jacob Smith & Matthew Mai

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
    Group 23: Jacob Smith, Matthew Mai
## Lab Summary
    In this lab we learned how to connect circuits together, using the top.v file. We also gained more practice in K-Maps and gathering the POS and SOP functions of our K-Maps, and then converting into verilog functions and interacting with a Basys 3 circuit board. We also learned about comparison of circuits and deciding which is better. 

## Lab Questions

### 1 - Explain the role of the Top Level file.
    The role of a top level file is to be the "main/driver" file, it connects all the circuits and files together, it is what interacts with the Basys circuit board. The Top file, is in charge of executing the other circuits we created in the other files 

### 2 - Explain the function of the Constraints file.
    The Constraint file helps limit what switches and leds we are using, and what the program can access. It tells the synthesis and implementation tools which switches, LEDs, buttons, clocks, and other hardware components are connected to which FPGA pins.

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?
    I feel like circuit A, Maxterm would remain the better option taking the POS, as it would remain the same, as in the table there are more 0's then 1's so its easier to create a similar function. As for Circuit B, I feel like it wouldn't matter as much because the 1's and 0's were similar in amounts on the truth table. This makes so either way, if 1 was yes or 0 was yes, it would not impact the difficulty of making the function we needed.



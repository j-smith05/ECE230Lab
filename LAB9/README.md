# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

## Summary

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
We can implement latches using structural Verilog, but it is very difficult and impractical to implement. Using behavioral verilog it allows us to save on resources on the board.
### What is the meaning of always @(*) in a sensitivity block?
An always @(*) creates a complete sensitivity list for combinational logic. They can even contain regular continuous assignment wherein no memory is needed.
### What importance is memory to digital circuits?

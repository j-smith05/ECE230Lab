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

    Group 23/39: Jacob Smith, Matthew Mai, Alan Long

## Summary

    In this lab we learned how to implement D-latches, muxes, demuxes, in order to store data to a certian bit. In lab we used D-latches to store 8-bit data to a basy3 board, then we used demuxes to select between latches and enable in order to write, this would allow our data to remain, and allow us to write on a different bit, without removing the other ones. The D-latches would then output their data to an LED on a basy3 board via muxes selecting which one we wanted. 

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

    We can implement latches using structural Verilog, but it is very difficult and impractical to implement. Using behavioral verilog it allows us to save on resources on the board.

### What is the meaning of always @(*) in a sensitivity block?

    An always @(*) creates a complete sensitivity list for combinational logic. They can even contain regular continuous assignment wherein no memory is needed.

### What importance is memory to digital circuits?

    The importance of Memory to digital circuits is so important as its basically the building block for everything. Its the backbone which allows us to store and define data in our operating systems. It allows data to function, process, and main information. Without memory a digital circuit couldn't do half the stuff we need it too. 
